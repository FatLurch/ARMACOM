//This function connects to the specified COM port. Returns true if successful

params["_port"];

_return = "ArmaCOM" callExtension ["connect", [_port]];

if(str(_return) isEqualTo str(["Succesfully connected to serial port",0,0])) then
{
	true
}
else
{
	false
};
