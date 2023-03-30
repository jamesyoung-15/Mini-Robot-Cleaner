#include "esp.h"



// Initialize ESP and connect it to WIFI
void esp_init(char *ssid, char *passwd)
{
	// Reset the module : AT+RST
	char data[] = "AT+RST";
	HAL_UART_Transmit(&huart2,data,strlen(data),10);
	HAL_Delay(5);


	// Set the Wi-Fi mode : AT+CWMODE (1: station, 2: soft ap, 3: soft ap + station)
	char data[] = "AT+CWMODE=1";
	HAL_UART_Transmit(&huart2,data,strlen(data),10);
	HAL_Delay(5);


	//Connect to an AP : AT+CWJAP
	// AT+CWJAP=[<ssid>],[<pwd>][,<bssid>][,<pci_en>][,<reconn_interval>][,<listen_interval>][,<scan_mode>][,<jap_timeout>][,<pmf>]


	//


}


// Create web server
void create_server()
{

}

// Send char data to web server
void sendData(char* data)
{

}

// Receive char data from web server
void receiveData(char* data)
{

}

// Get IP of device
//char* getIP()
//{
//	// Query/Set the IP Address of an ESP32 Station : AT+CIPSTA
//	char* data;
//	return data;
//}

// End File
