#include "AIOapp.h"
#include "SoftwareSerial.h"

extern SoftwareSerial mySerial;

AIOapp::AIOapp(Stream *comm_ser, Stream *debug_ser):_comm_ser(comm_ser), _dbg_ser(debug_ser), sensorBoard(debug_ser),pidweb(comm_ser,debug_ser){}

void AIOapp::begin(r_cb cb){
    sensorBoard.begin();
    valve_switch.begin(VALVE_SWITCH);
    pump.begin(PUMP);
    pump_speed(p_speed.airspeed);
    // startsample();
    f_ctler.init(&pump);
    pidweb.begin(cb);
}

void AIOapp::update_pid() {
    double a_kp = pidweb.get_air_kp();
    double a_ki = pidweb.get_air_ki();
    double a_kd = pidweb.get_air_kd();
    AppConfig setpoint_speed = pidweb.get_setpoint_speed();
    if(pidweb.get_valve_status()){
        fragOn();
    }else{
        fragOff();
    }
    f_ctler.setPID(a_kp,a_ki,a_kd);
    f_ctler.setFlowRate(setpoint_speed.airspeed);//TODO :double of float or int.

}

void AIOapp::readSensor() {
    sensorBoard.readVoltage();
}

void AIOapp::pump_speed(uint8_t speed) {
    pump.set_speed(speed);
}

void AIOapp::fragOn() {
    valve_switch.turn_on();
}

/* turn off target gas */
void AIOapp::fragOff() {
    valve_switch.turn_off();
}

void AIOapp::fragFlow(uint8_t speed) {
    fragOn();
    pump.set_speed(p_speed.fragspeed);
}

/* let air gas flow */
void AIOapp::airFlow(uint8_t speed) {
    fragOff();
    pump.set_speed(p_speed.airspeed);
}

void AIOapp::printData(){
    f_ctler.printData();
    sensorBoard.print();
    // _comm_ser->println("123");
    _dbg_ser->println();
}

void AIOapp::startsample(){
    Sample_flag = true;
    sample_count = 0;
    sample_period = 0; 
}

void AIOapp::stopsample(){
    Sample_flag = false;
    sample_count = -1;
    sample_period = 0;
    valve_switch.turn_off();    
}

void AIOapp::sampling(){
    if(sample_count == SAMPLE_VALVE_ON){
        valve_switch.turn_on();
    }
    if(sample_count == SAMPLE_VALVE_OFF){
        valve_switch.turn_off();
    }
    if(0 <= sample_count && sample_count <SAMPLE_NUM){
        //TODO:SD
    }
    sample_count ++;
    if(sample_count == SAMPLE_DUR){
        sample_count=0;
        sample_period++;
    }
    if(sample_period == SAMPLE_PERIOD){
        stopsample();
    }
}