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
| Command | Arguments | Description | Return |
| --- | --- | --- | --- |
| `ARMACOM_fnc_listPorts` | None | Returns a list of available COM ports | List of Ports |
| `ARMACOM_fnc_connect` | `portName` | Connects to the COM port (9600/8N1 settings default) | `true` on success, `false` on failure |
| `ARMACOM_fnc_disconnect` | `portName` | Disconnects from the COM port | `true` on success, `false` on failure |
| `ARMACOM_fnc_write` | `portName`,`message` | Sends message to COM port | `true` on success, `false` on failure |
| `ARMACOM_fnc_config` | `portName`, `baud`,`data`,`parity`, `stop` | Configures COM port | None |

