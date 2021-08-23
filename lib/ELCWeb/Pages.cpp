#include <Pages.h>

ESPweb::ESPweb(Stream *comm_ser, Stream *debug_ser):esp(comm_ser,debug_ser),webServer(&esp),esptcp(&esp),_dbg_ser(debug_ser),_comm_ser(comm_ser){}

void ESPweb::begin(r_cb cb,wifi_cb wfcb,tcp_Cb tcpCb){
  esp.wifiCb.attach(wfcb);
  esp.resetCb = cb;
  esp.resetCb();
  esp.GetWifiStatus();

  _dbg_ser->print(F("Waiting for WiFi "));
	if ((packet=esp.WaitReturn()) != NULL) {
		_dbg_ser->print(F("."));
		_dbg_ser->println(packet->value);
	}
	_dbg_ser->println("");

  tcpConnNum = esptcp.begin(tcpServer, tcpPort, SOCKET_TCP_CLIENT, tcpCb); // SOCKET_CLIENT ==> we don't expect a response
	if (tcpConnNum < 0) {
		_dbg_ser->println(F("TCP socket setup failed, try again in 10 seconds after reboot"));
		delay(10000);
		// asm volatile ("  jmp 0");
	} else {
		_dbg_ser->println(String(tcpServer)+":"+String(tcpPort)+" is served over connection number # = "+String(tcpConnNum));
	}
  _dbg_ser->println(F("EL-TCP ready"));
}


void ESPweb::userSetFieldCb(char * field)
{
  String fld = field;
  // _dbg_ser->println(fld);
  if( fld == F("a_kp")){
    a_kp = (float)webServer.getArgFloat();}
  else if( fld == F("a_ki")){
    a_ki = (float)webServer.getArgFloat();}
  else if( fld == F("a_kd")){
    a_kd = (float)webServer.getArgFloat();}
  else if( fld == F("airspeed")){
    p_speed.airspeed = (float)webServer.getArgInt();}
  else if( fld == F("f_kp")){
    f_kp = (float)webServer.getArgFloat();} 
  else if( fld == F("f_ki")){
    f_ki = (float)webServer.getArgFloat();}
  else if( fld == F("f_kd")){
    f_kd = (float)webServer.getArgFloat();}
  else if( fld == F("fragspeed")){
    p_speed.fragspeed = (float)webServer.getArgInt();}

}

void ESPweb::userLoadCb(char * url)
{
    // _dbg_ser->print("024420");
    // _dbg_ser->println();
    // char buf[MAX_STR_LEN];
    webServer.setArgFloat(F("a_kp"), a_kp);
    webServer.setArgFloat(F("a_ki"), a_ki);
    webServer.setArgFloat(F("a_kd"), a_kd);
    webServer.setArgInt(F("airspeed"), p_speed.airspeed);
    webServer.setArgFloat(F("f_kp"), f_kp);
    webServer.setArgFloat(F("f_ki"), f_ki);
    webServer.setArgFloat(F("f_kd"), f_kd);
    webServer.setArgInt(F("fragspeed"), p_speed.fragspeed);
    // webServer.setArgString(F("Valve Status"), (v_status == 0) ?  F("on") : F("off"));
    // _dbg_ser->print("4343420"); 
    // _dbg_ser->println("4343420");
}

// void ButtonPressCb(char * btnId)
// {
//         String fld = btnId;
//   _dbg_ser->println(fld);
//   _dbg_ser->println("Botton pressed!");
// }

void ESPweb::ButtonPressCb(char * btnId)
{
  String id = btnId;
//   _dbg_ser->print(id);
  if( id == F("Valve_on") )
    v_status = 1;
  else if( id == F("Valve_off") )
    v_status = 0;
//   _dbg_ser->print(v_status);
//   _dbg_ser->println();
}

URLHandler *ESPweb::createURLH(){
  URLHandler *pidPageHandler = webServer.createURLHandler(F("/pid.html.json"));
  return pidPageHandler;
}


void ESPweb::Byteprint(float f){

  unsigned char const * p = reinterpret_cast<unsigned char const *>(&f);

  for (std::size_t i = 0; i != sizeof(float); ++i)
  {
      _dbg_ser->print(p[i]);
  }
}

void ESPweb::printloop(){

    // _dbg_ser->print(a_ki);
    // _dbg_ser->print(",");
    // _dbg_ser->print(a_kp);
    // _dbg_ser->print(",");
    // _dbg_ser->print(a_kd);
    // _dbg_ser->print(",");
    // _dbg_ser->println();
    
    _dbg_ser->print(a_ki);
    _dbg_ser->print(",");
    _dbg_ser->print(a_kp);
    _dbg_ser->print(",");
    _dbg_ser->print(a_kd);
    _dbg_ser->print(",");
    _dbg_ser->print(f_ki);
    _dbg_ser->print(",");
    _dbg_ser->print(f_kp);
    _dbg_ser->print(",");
    _dbg_ser->print(f_kd);
    _dbg_ser->print(",");
    _dbg_ser->print(p_speed.airspeed);
    _dbg_ser->print(",");
    _dbg_ser->print(p_speed.fragspeed);
    _dbg_ser->print(",");
    _dbg_ser->print(v_status);
    // Byteprint(ki);
    // // _dbg_ser->print(",");
    // Byteprint(a_kp);
    // // _dbg_ser->print(",");
    // Byteprint(a_kd);
    _dbg_ser->println();
    delay(400);
}



void ESPweb::process_esp(void){
  esp.Process();

}

void ESPweb::tcp_print(void){
    if(wifiConnected) {
    // Send message to the previously set-up server #1
    Serial.print(F("Sending message to "));
    Serial.print(tcpServer);
    Serial.print(":");
    Serial.println(tcpPort);
    esptcp.send((char*)ss_test,sizeof(ss_test));
	} 
}

// void ESPweb::tcp_send_voltage(float *data){
//   if(wifiConnected) {
//     esptcp.send((char*)data,sizeof(data));  
//   } 
// }

void ESPweb::tcp_send_voltage(char *data){
  if(wifiConnected) {
    esptcp.send(data,sizeof(data));  
  } 
}

boolean ESPweb::esp_Sync(uint32_t timeout){
  return esp.Sync(timeout);
}

void ESPweb::webserver_setup(){
  webServer.setup();
}

float ESPweb::get_air_kp(){
  return this->a_kp;
}

float ESPweb::get_air_ki(){
  return this->a_ki;
}

float ESPweb::get_air_kd(){
  return this->a_kd;
}

float ESPweb::get_frag_kp(){
  return this->f_kp;
}

float ESPweb::get_frag_ki(){
  return this->f_ki;
}

float ESPweb::get_frag_kd(){
  return this->f_kd;
}

bool ESPweb::get_valve_status(){
  return this->v_status;
}

AppConfig ESPweb::get_setpoint_speed(){
  return this->p_speed;
}

void ESPweb::wifi_Connection_status_true(){
  this->wifiConnected = true;
}

void ESPweb::wifi_Connection_status_false(){
  this->wifiConnected = false;
}