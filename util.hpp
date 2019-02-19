class ctrlMenuStrip;
class display3DEN
{
	class Controls
	{
		class MenuStrip: ctrlMenuStrip
		{
			class Items
			{
				class Tools
				{
					items[] += {"BuildKitTool_Folder"};
				};
				class BuildKitTool_Folder
				{
					text = "Builder Kit Tools";
					items[] = {"BuildKitTool_ShowBuildMarkers", "BuildKitTool_Export"}; // Links to items inside the folder
				};
				class BuildKitTool_ShowBuildMarkers
				{
					text = "Toggle Build Markers";
                    action = "['Build Markers Toggled', 0] call BIS_fnc_3DENNotification;";
				};
				class BuildKitTool_Export
				{
					text = "Export for Blender";
                    action = "[] call BKT_fnc_ExportSelection;";
				};
			};
		};
	};
};