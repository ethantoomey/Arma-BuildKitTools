//Function: Find & Export BuildKit Compatibile Compositions for easy importing to blender.
//Author: Chachi

private["_ExportableObjects","_3denobjects","_originpoint"];
_ExportableObjects = [];
_originpoint = [];
_3denobjects = get3DENSelected "object";

// Step 1: Find origin points in selection in a seperate forEach statement.
{

	if (typeOf _x == "BuildingKit_OriginPoint") then {
		_originpoint pushBack _x;
	};

} forEach _3denobjects;

// Step 2: Exit with an error message if there is more than one origin point in the selection.
if ((count _originpoint) > 1) exitWith {
	["Error: (Cannot Export) Multiple Origin Points in Selection", 1] call BIS_fnc_3DENNotification;
	playSound "3DEN_notificationWarning";
};

// Step 3: Scan selection for exportable objects and then push them to an array with their relative positioning.
{

	if ([_x] call BKT_fnc_isExportable) then {
		_relPos = ([_x,_originpoint select 0] call BKT_fnc_GetRelativePos);
		_ExportableObjects pushBack [(typeOf _x),_relPos];
	};

} forEach _3denobjects;

copyToClipboard str _ExportableObjects;
["Build-Kit Export Successful - Copied to Clipboard",0] call BIS_fnc_3DENNotification;
playSound "3DEN_notificationDefault";


