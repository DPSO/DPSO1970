#include "\z\dpso\addons\briefing\script_component.hpp"

// Ensure mission version is at least 1.0.1
if (!([[1,0,1]] call EFUNC(common,checkdpsoVersion))) exitWith {};


// Auto-Create Credits.
private _text = "<br/><font size='20'>" + briefingName + "</font><br/>";

_text = _text + "<font size='14'>by " + getMissionConfigValue ["Author", ""] +"</font><br/><br/><br/>";

_text = _text + "<font size='12'>Terrain: " + getText (configFile >> "CfgWorlds" >> worldName >> "description") + "</font>";


_text = _text + "<br/><br/><font size='12'>This mission was created using dpso (dpso Mission Framework).<br/DPSO Mod v" + getText (ConfigFile >> "CfgPatches" >> "dpso_main" >> "versionStr") + "<br/DPSO Mission Template v" + (getMissionConfigValue ["VERSION",[0,0,0]] joinString ".") + "</font>";

player createDiaryRecord ["Diary", ["Credits", _text]];