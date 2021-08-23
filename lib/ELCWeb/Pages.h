#ifndef ELC_PAGES_H
#define ELC_PAGES_H


#include <ELClient.h>
#include <ELClientWebServer.h>
#include <ELClientSocket.h>
// extern SoftwareSerial mySerial;
typedef void (*r_cb)();
typedef void (*wifi_cb)(void *);
typedef void (*tcp_Cb)(uint8_t, uint8_t, uint16_t,char *);
// extern ELClient esp;
// // Initialize the Web-Server client
// extern ELClientWebServer webServer;

struct AppConfig{
    uint8_t airspeed = 80;
    uint8_t fragspeed = 80;
};



class ESPweb {

    public:
        ESPweb(Stream *comm_ser, Stream *debug_ser);
        // void PIDInit();
        void begin(r_cb cb,wifi_cb wfcb,tcp_Cb tcpCb);
        void process_esp();
        void userSetFieldCb();
        void userLoadCb();
        void printloop();
        void Byteprint(float f);
        void ButtonPressCb(char * btnId);
        void userLoadCb(char * url);
        void userSetFieldCb(char * field);
        boolean esp_Sync(uint32_t timeout = 100);
        void webserver_setup();
        URLHandler * createURLH();

        float get_air_kp();
        float get_air_ki();
        float get_air_kd();
        float get_frag_kp();
        float get_frag_ki();
        float get_frag_kd();
        bool get_valve_status();
        AppConfig get_setpoint_speed();
        void wifi_Connection_status_true();
        void wifi_Connection_status_false();
        // void tcp_send_voltage(float *data);
        void tcp_send_voltage(char *data);
        void tcp_print();
        //TEST ARRAY :should be removed
        float ss_test[16]={0.1111,0.1211,0.13,0.14,0.15,0.16,0.17,0.18,0.19,0.1,0.1,0.1,0.1,0.1,0.1,0.1111111};

    private:
        float a_kp=0.3;
        float a_ki=0.1;
        float a_kd=0;
        float f_kp=0.3;
        float f_ki=0.1;
        float f_kd=0;
        bool v_status=0; //1 on 0 off
        AppConfig p_speed ={30, 30};
        ELClient esp;
        Stream * _dbg_ser;
        Stream * _comm_ser;
        ELClientWebServer webServer;// Initialize the Web-Server client
        ELClientPacket *packet;
        ELClientSocket esptcp;
        int tcpConnNum;
        char * const tcpServer PROGMEM = "192.168.1.176";
        uint16_t const tcpPort PROGMEM = 8080;
        boolean wifiConnected = false;
        
};






#endif /* ELC_PAGES_H */