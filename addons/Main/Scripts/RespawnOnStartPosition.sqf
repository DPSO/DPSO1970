/*
	DPSO MISSION TEMPLATE
	RespawnOnStartPosition.sqf
	Author: MitchJC
	Description: Scripts executed when a player respawns.
*/
	player disableConversation true;
	[player ,"NoVoice"] remoteExec ["setSpeaker",0,true];
	
	call DPSO_fnc_PlayerAddActions;
	
	{_x addCuratorEditableObjects [[player],FALSE];} count allCurators;


if (isNil { player getVariable "StartingPos"; } ) then {
    player setVariable ["StartingPos", getPosATL player];
    player setVariable ["StartingDir", getDir player];
} else {
    player setPosATL (player getVariable ["StartingPos", getPosATL player]);
    player setDir (player getVariable ["StartingDir", 0]);
};

if (DPSO_Main_Earplugs) then {

	[] execVM "z\dpso\addons\Main\Scripts\Earplugs\earplugs.sqf";
};