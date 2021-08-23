//
// Created by Zhenyi Ye on 5/25/21.
//

#ifndef GSAAIO_WIFI_SENSORBOARD_H
#define GSAAIO_WIFI_SENSORBOARD_H

#include "BaseSensorBoard.h"
#include "Adafruit_ADS1015.h"
#include "define.h"
#include "Adafruit_HTU21DF.h"
#include "Adafruit_BMP280.h"

const uint8_t ADC_ADDRESS[] = {0x48, 0x49, 0x4a, 0x4b};
const uint8_t ADC_NUM = 4;

class Stream;

class SensorBoard: public BaseSensorBoard {
public:
    SensorBoard(Stream* ser): BaseSensorBoard(ser){};
    void begin() override;
    void read() override;
    void print() override;
    void dump();

    void readVoltage();
    void readRaw();
    void Byteprint(double f);
    double get_voltagedata(uint8_t index);
private:
    void _setResolution();

    Adafruit_HTU21DF th_sensor = Adafruit_HTU21DF();
    float _temperature;
    float _humidity;

    float _temperature2;
    float _pressure;
    float _altitude;
    Adafruit_BMP280 bmp;

    Adafruit_ADS1115 adc_l[ADC_NUM];
    uint16_t _raw_data[4*ADC_NUM] = {0};
    double _voltage_data[4*ADC_NUM] = {0};
    double _record_data[4*ADC_NUM*SAMPLE_NUM] = {0};
    double _resolution;
};


#endif //GSAAIO_WIFI_SENSORBOARD_H
