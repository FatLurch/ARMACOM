//This function configured a port to use write threads. This cannot be undone without restarting the game (As of ARMACOM 1.0.3)

params ["_port"];

"ArmaCOM" callExtension ["useWriteThread", [_port]];