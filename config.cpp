class CfgPatches
 {
 	class ARMACOM
 	{
 		units[] = {};	
 		weapons[] = {};
 		requiredAddons[] = {};	
		author="GoogleBen & Fat_Lurch";
		version = 1.04; 
        versionStr = "1.0.4";
        versionAr[] = {1, 0, 4};
 	};
 };

class CfgSettings 
{
    class CBA 
	{
        class Versioning 
		{
            class ARMACOM_Ver
			{
				main_addon = "ARMACOM";
			};
		};
	};
};

class CfgFunctions
{
	class ARMACOM
	{
		class Category
		{
			class listPorts {file = "ARMACOM\functions\listPorts.sqf";};

			class connect {file = "ARMACOM\functions\connect.sqf";};

			class disconnect {file = "ARMACOM\functions\disconnect.sqf";};

			class write {file = "ARMACOM\functions\write.sqf";};

			class config {file = "ARMACOM\functions\config.sqf";};

			class getBaudIndex {file = "ARMACOM\functions\getBaudIndex.sqf";};

			class useWriteThread {file = "ARMACOM\functions\useWriteThread.sqf";};
								
		};

	};
};