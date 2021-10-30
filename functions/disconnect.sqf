//This function disconnects from the specified COM port. Returns true if successful

params["_port"];

_return = "ArmaCOM" callExtension ["disconnect", [_port]];

if(str(_return) isEqualTo str(["Disconnected successfully",0,0])) then
{
	true
}
else
{
	false
};
