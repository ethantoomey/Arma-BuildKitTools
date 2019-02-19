
//Function: Checks if the object passed through function is exportable with BuiltKitTools. (returns true/false)
//Author: Chachi

//!!!! Note to self (delete later) change 'canPrefabExport' to 'BKT_isExportable' in configs.

	params["_object"];

	_isExportable = getNumber (configFile >> "CfgVehicles" >> typeOf _object >> "canPrefabExport");

	switch (_isExportable) do {
		case 0: { _return = false; _return; };
		case 1: { _return = true; _return; };
	};
