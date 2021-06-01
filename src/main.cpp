#include <define.h>
#include <SPI.h>
#include <Arduino.h>
#include "AIOapp.h"
#include "protoc.h"
#include <SoftwareSerial.h>

extern SoftwareSerial mySerial;
AIOapp aiOapp(&mySerial,&Serial);

void resetCb() {
  Serial.println("EL-Client (re-)starting!");
  bool ok = false;
  do {
    ok = aiOapp.pidweb.esp_Sync(100);      // sync up with esp-link, blocks for up to 2 seconds
    if (!ok) Serial.println("EL-Client sync failed!");
  } while(!ok);
  Serial.println("EL-Client synced!");

  aiOapp.pidweb.webserver_setup();
}

void Web_ButtonCb(char * btnId){
  aiOapp.pidweb.ButtonPressCb(btnId);
}

void Web_FieldCb(char * field){
  aiOapp.pidweb.userSetFieldCb(field);
}
void Web_LoadCb(char * url){
  aiOapp.pidweb.userLoadCb(url);
}


void webinit(){
  URLHandler *pidPageHandler = aiOapp.pidweb.createURLH();
  pidPageHandler->buttonCb.attach(&Web_ButtonCb);
  pidPageHandler->setFieldCb.attach(&Web_FieldCb);
  pidPageHandler->loadCb.attach(&Web_LoadCb);
  pidPageHandler->refreshCb.attach(&Web_FieldCb);
}

void setup() {
  setNewMsgCallback(parseCommand);
  mySerial.begin(115200);
  Serial.begin(115200);
  webinit();
  aiOapp.begin(resetCb);
}

void loop() {

// mySerial.print(a);
  aiOapp.update();
  aiOapp.pidweb.process_esp();
  aiOapp.pidweb.printloop();
  delay(50);
  parseSerial();
}