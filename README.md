# ARMACOM
ARMACOM provides a framework for ARMA to communicate with Arduinos and any other device that can connect to or emulate a Windows COM port.

The extension that powers ARMACOM and the additional functions it provides are covered in a seperate GitHub here: https://github.com/googleben/ArmaCOM

ARMACOM includes a set of frequenctly used commands. For more advanced usage, see the link to the ARMACOM extension above.

## Command Examples:
```
[] call ARMACOM_fnc_listPorts;                          //list the available COM ports
["COM1"] call ARMACOM_fnc_connect;                      //Connect to COM1
["COM1", 9600, 8, "none", 1] call ARMACOM_fnc_config;   //Configure COM1 to 9600/8N1 (baud rate, data bits, parity bits, stop bits)
["COM1"] call ARMACOM_fnc_useWriteThread;               //Configure to use threaded writes (improves performance if you're performing frequenct write operations)
["COM1", "Message"] call ARMACOM_fnc_write;            //Send the string "Message" to COM1
```

## Commands
| Command | Arguments | Description |
| --- | --- | --- |
| `listPorts` | None | Returns a list of open COM ports and their DOS device names |
| `listBaudRates` | None | Returns a list of available baud rate setting values and their indices |
| `listStopBits` | None | Returns a list of available stop bits setting values and their indicies |
