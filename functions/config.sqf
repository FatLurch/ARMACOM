//This function configures the most common settings associated with a port
//Exmaple: ["COM13", 9600, 8, "none", 1] call ARMACOM_fnc_config

params["_port", "_baudIn", "_dataIn", "_parityIn", "_stopIn"];


// ========= Handle Baud Setting =============
_rateVals = [110,300,600,1200,2400,4800,9600,14400,19200,38400,57600,115200,128000,256000];
_closestBaud = [_rateVals, _baudIn] call BIS_fnc_nearestNum;	//Find the acceptable baud rate closest to the input value (in case a user inputs an incorrect value)
_finalBaud = [_closestBaud] call ARMACOM_fnc_getBaudIndex;		//get the index of that baud rate (this is needed for the setBaudRate command)
"ArmaCOM" callExtension ["setBaudRate", [_port, _finalBaud]];


// ========= Handle Data Bit ===============
//"0: 4 data bits, 1: 5 data bits, 2: 6 data bits, 3: 7 data bits, 4: 8 data bits"
_dataBits = [[4, 0], [5, 1], [6, 2],[7, 3], [8, 4]];
_dataIndex = 4;
{
	if(_dataIn == (_x select 0)) then
	{
		_dataIndex = _x select 1;
	};

}forEach _dataBits;
"ArmaCOM" callExtension ["setDataBits", [_port, _dataIndex]];

//======== Handle Parity Bit ============
//["0: No parity, 1: Odd parity, 2: Even parity, 3: Mark parity, 4: Space parity",0,0]
_finalPArity = 0;

if(toLower(_parityIn) == "n" || toLower(_parityIn) == "none") then
{
	_finalParity = 0;
};

if(toLower(_parityIn) == "o" || toLower(_parityIn) == "odd") then
{
	_finalParity = 1;
};

if(toLower(_parityIn) == "e" || toLower(_parityIn) == "even") then
{
	_finalParity = 2;
};

if(toLower(_parityIn) == "m" || toLower(_parityIn) == "mark") then
{
	_finalParity = 3;
};

if(toLower(_parityIn) == "s" || toLower(_parityIn) == "space") then
{
	_finalParity = 4;
};
"ArmaCOM" callExtension ["setParity", [_port, _finalParity]];

//======== Handle Stop Bits =============
//["0: 1 stop bit, 1: 1.5 stop bits, 2: 2 stop bits",0,0]
_finalStop = 0;
switch (_stopIn) do
{
	case 1: {_finalStop = 0};
	case 1.5: {_finalStop = 1};
	case 2: {_finalStop = 2};
	default {_finalStop = 0};
};
"ArmaCOM" callExtension ["setStopBits", [_port, _finalStop]];
