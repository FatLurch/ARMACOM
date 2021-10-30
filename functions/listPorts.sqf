//This functions returns a simplified list of valid COM addresses in a format in which they can be used with the connect command

_inputArray = ("Armacom" callExtension "listPorts") regexFind ["(COM[0-9]+)/gi"];
_outputArray = [];

{
	_outputArray pushBack ((_x select 0) select 0);
}forEach _inputArray;

_outputArray