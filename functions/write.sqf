//["Successfully wrote 13bytes",0,0]

//["Error while writing to serial port: The semaphore timeout period has expired.",0,0]

params["_port", "_message"];

_return = "ArmaCOM" callExtension ["write", [_port, _message]];

if(["Successfull", str(_return)] call BIS_fnc_inString) then
{
	true
}
else
{
	false
};