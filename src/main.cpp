#include <define.h>
#include <SPI.h>
#include <Arduino.h>
#include "AIOapp.h"
#include "protoc.h"
#include <SoftwareSerial.h>

extern SoftwareSerial mySerial;
AIOapp aiOapp(&mySerial,&Serial);

//TODO:TCP



// Timer value to send out data 
uint32_t wait;
// Time to wait between sending out data
uint32_t waitTime;


char* const errTxt[] PROGMEM = {"No error, everything OK.","Out of memory.","Unknown code.","Timeout.","Routing problem.","Operation in progress.",
					"Unknown code.","Total number exceeds the maximum limitation.","Connection aborted.","Connection reset.","Connection closed.",
					"Not connected.","Illegal argument.","Unknown code.","UDP send error.","Already connected."};

char * getErrTxt(int16_t commError) {
	commError = commError*-1;
	if (commError <= 15) {
		return (char *) pgm_read_word (&errTxt[commError]);
	} else {
		return (char *) pgm_read_word (&errTxt[2]); // Unknown code
	}
}

// Callback for TCP socket, called if data was sent or received
// Receives socket client number, can be reused for all initialized TCP socket connections
void tcpCb(uint8_t resp_type, uint8_t client_num, uint16_t len, char *data) {
	Serial.println("tcpCb connection #"+String(client_num));
	if (resp_type == USERCB_SENT) {
		Serial.println("\tSent " + String(len) + " bytes over client#" + String(client_num));
	} else if (resp_type == USERCB_RECV) {
		char recvData[len+1]; // Prepare buffer for the received data
		memcpy(recvData, data, len); // Copy received data into the buffer
		recvData[len] = '\0'; // Terminate the buffer with 0 for proper printout
		Serial.println("\tReceived " + String(len) + " bytes over the client on connection #" + String(client_num));
		Serial.println("\tReceived: " + String(recvData));
	} else if (resp_type == USERCB_RECO) {
		if (len != -11) { // ignore "not connected" error, handled in USERCB_CONN
			Serial.print("\tConnection problem: ");
			Serial.println(getErrTxt(len));
		}
	} else if (resp_type == USERCB_CONN) {
		if (len == 0) {
			Serial.println("\tDisconnected");
		} else {
			Serial.println("\tConnected");
		}
	} else {
		Serial.println("Received invalid response type");
	}
}

// Callback made from esp-link to notify of wifi status changes
// Here we print something out and set a global flag
void wifiCb(void *response) {
	ELClientResponse *res = (ELClientResponse*)response;
	if (res->argc() == 1) {
		uint8_t status;
		res->popArg(&status, 1);

		if(status == STATION_GOT_IP) {
			Serial.println(F("WIFI CONNECTED"));
      aiOapp.pidweb.wifi_Connection_status_true();
		} else {
			Serial.print(F("WIFI NOT READY: "));
			Serial.println(status);
			aiOapp.pidweb.wifi_Connection_status_false();
		}
	}
}



void resetCb() {
  Serial.println("EL-Client (re-)starting!");
  bool ok = false;
  do {
    ok = aiOapp.pidweb.esp_Sync(20);      // sync up with esp-link, blocks for up to 2 seconds
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

//WHEN test,comment the attach
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
  aiOapp.begin(resetCb,wifiCb,tcpCb);
}

void loop() {

// mySerial.print(a);
  aiOapp.update();
  // 
  aiOapp.pidweb.process_esp();
  delay(20);
  aiOapp.pidweb.printloop();  
  parseSerial();
}