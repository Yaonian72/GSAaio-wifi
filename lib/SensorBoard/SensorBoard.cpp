//
// Created by Zhenyi Ye on 5/25/21.
//

#include "SensorBoard.h"
#include <Stream.h>

void SensorBoard::begin() {
    //initialization
    for (int i = 0; i < ADC_NUM; i++){
        // Adafruit_ADS1115 adc;
        // adc.setDataRate(RATE_ADS1115_128SPS);
        // adc.begin(ADC_ADDRESS[i]);
        Adafruit_ADS1115 adc(ADC_ADDRESS[i]);
        adc.setSPS(ADS1115_DR_128SPS);
        adc.begin();
        adc_l[i] = adc;
    }
    _setResolution();

    if (!th_sensor.begin()) {
        DEBUG_SERIAL.print("Couldn't find th_sensor!");
    }
    _temperature = th_sensor.readTemperature();
    _humidity = th_sensor.readHumidity();

    if (!bmp.begin()) {
    Serial.println(F("Could not find a valid BMP280 sensor, check wiring or "
                      "try a different address!"));
    }

    bmp.setSampling(Adafruit_BMP280::MODE_NORMAL,     /* Operating Mode. */
                Adafruit_BMP280::SAMPLING_X2,     /* Temp. oversampling */
                Adafruit_BMP280::SAMPLING_X16,    /* Pressure oversampling */
                Adafruit_BMP280::FILTER_X16,      /* Filtering. */
                Adafruit_BMP280::STANDBY_MS_500); /* Standby time. */
    
    _temperature2 = bmp.readTemperature();
    _pressure = bmp.readPressure();
    _altitude = bmp.readAltitude(1013.25);
}

void SensorBoard::read() {}

void SensorBoard::readRaw() {
    for(int i = 0; i < 4*ADC_NUM; i++){
        _raw_data[i] = adc_l[i/ADC_NUM].readADC_SingleEnded(i%ADC_NUM);
    }
}

void SensorBoard::readVoltage() {
    readRaw();
    for(int i = 0; i < 4*ADC_NUM; i++){
    _voltage_data[i] = _resolution * _raw_data[i];
    }
    _temperature = th_sensor.readTemperature();
    _humidity = th_sensor.readHumidity();

    _temperature2 = bmp.readTemperature();
    _pressure = bmp.readPressure();
    _altitude = bmp.readAltitude(1013.25);
}

void SensorBoard::Byteprint(double f){

  unsigned char const * p = reinterpret_cast<unsigned char const *>(&f);

  for (std::size_t i = 0; i != sizeof(double); ++i)
  {
      _ser->write(p[i]);
  }
}


void SensorBoard::print() {
    // //print sensor data
    // _ser->print(",");
    // for (double i : _voltage_data){
    //     _ser->print(i*0.001,7); _ser->print(",");
    // }
    // _ser->println();


    // for (double i : _voltage_data){
    //     _ser->print(i*0.001,7); _ser->print(",");
    // }
    // _ser->println();
    
    DEBUG_SERIAL.print(_temperature); DEBUG_SERIAL.print(",");
    DEBUG_SERIAL.print(_humidity); DEBUG_SERIAL.print(",");//TODO should be sent by software serial
    DEBUG_SERIAL.print(_temperature2); DEBUG_SERIAL.print(",");
    DEBUG_SERIAL.print(_pressure); DEBUG_SERIAL.print(",");//TODO should be sent by software serial
    DEBUG_SERIAL.print(_altitude); DEBUG_SERIAL.print(",");
    
    // for (double i : _voltage_data){
    //     Byteprint(i*0.001); 
    //     _ser->write(0x2C);
    // }
    // _ser->write(0x0D);
    // _ser->write(0x0A);
}

void SensorBoard::_setResolution() {
    switch (adc_l[0].getGain()){
        case GAIN_TWOTHIRDS:
            _resolution = 0.1875;
            break;
        case GAIN_ONE:
            _resolution = 0.125;
            break;
        case GAIN_TWO:
            _resolution = 0.0625;
            break;
        case GAIN_FOUR:
            _resolution = 0.03125;
            break;
        case GAIN_EIGHT:
            _resolution = 0.015625;
            break;
        case GAIN_SIXTEEN:
            _resolution = 0.0078125;
            break;
    }
}

double SensorBoard::get_voltagedata(uint8_t index){
    return _voltage_data[index];
}