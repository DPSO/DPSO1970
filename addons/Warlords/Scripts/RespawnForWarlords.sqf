/*
	dpso MISSION TEMPLATE
	RespawnForWarlords.sqf
	Author: MitchJC
	Description: Scripts executed when a player respawns.
*/
	player disableConversation true;
	[player ,"NoVoice"] remoteExec ["setSpeaker",0,true];
	
	call dpso_fnc_PlayerAddActions;
	
	{_x addCuratorEditableObjects [[player],FALSE];} count allCurators;

	call dpso_fnc_ProfileCredits;