# ARMACOM
ARMACOM provides a framework for ARMA to communicate with Arduinos and any other device that can connect to or emulate a Windows COM port.

The extension that powers ARMACOM and the additional functions it provides are covered in a seperate GitHub here: https://github.com/googleben/ArmaCOM

ARMACOM includes a set of frequenctly used commands. For more advanced usage, see the link to the ARMACOM extension above.

example:
```[] call ARMACOM_fnc_listPorts```



| Command | Arguments | Description |
| --- | --- | --- |
| `listPorts` | None | Returns a list of open COM ports and their DOS device names |
| `listBaudRates` | None | Returns a list of available baud rate setting values and their indices |
| `listStopBits` | None | Returns a list of available stop bits setting values and their indicies |
