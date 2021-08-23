#ifndef GSAAIO_AIOAPP_H
#define GSAAIO_AIOAPP_H

#include <define.h>
#include "ELClientWebServer.h"
#include "SensorBoard.h"
#include "Valve.h"
#include "Pump.h"
#include "FlowController.h"
#include "Pages.h"

const uint32_t UPDATE_INTERVAL = 500;

// extern struct AppConfig;

class AIOapp {

    public:
        AIOapp(Stream *comm_ser, Stream *debug_ser);
        void printData();
        void readSensor();
        void fragOn();
        void fragOff();
        void begin(r_cb cb,wifi_cb wfcb,tcp_Cb tcpCb);

        void startsample();
        void stopsample();
        void sampling();
        void update_pid();

        void pump_speed(uint8_t speed);
        void fragFlow(uint8_t speed);
        void airFlow(uint8_t speed);
        void voltage_data_update();
        void tcp_send_voltage_data();
        void update(){
            //TODO : Interval
            unsigned long cur = millis();
            if (cur - last_release >= UPDATE_INTERVAL){
                last_release = cur;
                readSensor();
                f_ctler.update();
                if (Sample_flag && (sample_count >= 0)){
                    sampling();
                }
                voltage_data_update();
                tcp_send_voltage_data();
                printData();
                pump.set_speed(30);//should be removed
                // pidweb.tcp_print();
            }
            update_pid();
        }
        
        ESPweb pidweb;
        
    private:

        unsigned long last_release = 0;
        bool Sample_flag;
        unsigned long sample_count = -1;
        unsigned long sample_period = 0;
        float _vol_data[4*ADC_NUM] = {0};

        // ELClient esp;
        
        Stream * _comm_ser;
        Stream * _dbg_ser;

        SensorBoard sensorBoard;
        Valve valve_switch;
        Pump pump;
        FlowController f_ctler;
        AppConfig p_speed = {100, 100};

};

#endif //GSAAIO_AIOAPP_H