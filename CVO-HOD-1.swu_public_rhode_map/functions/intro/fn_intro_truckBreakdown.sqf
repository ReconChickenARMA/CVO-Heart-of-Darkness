/*
* Author: Zorn
* Server Function which will handle all the effects of the truckbreakdown.
*
* Arguments:
*
* Return Value:
* None
*
* Example:
* [] call mission_fnc_intro_truckBreakdown;
*
* Public: No
*/


if !(isServer) exitwith {};

private _truck = truck;

_truck setVariable ["ace_repair_disabled", true, true];

private _helper = createVehicle ["Helper_Base_F", [0,0,0]];

_helper attachTo [_truck, [0,3.8,-0.7]];

// Play Sound
[_helper, "brokenFridge", 500] call CBA_fnc_globalSay3d;


[ CBA_fnc_targetEvent, ["intro_truck_damage", _truck, _truck], 52 ] call CBA_fnc_waitAndExecute;

[CBA_fnc_targetEvent, [ "intro_truck_lightOff", _truck, _truck], 52] call CBA_fnc_waitAndExecute;
[CBA_fnc_targetEvent, [ "intro_truck_lightOff", driver _truck, driver _truck], 52] call CBA_fnc_waitAndExecute;

[MISSION_fnc_intro_truck_oilTrail, [truck], 40] call CBA_fnc_waitAndExecute;

[CBA_fnc_globalSay3d, [driver _truck, "puta", 500], 53] call CBA_fnc_waitAndExecute;
[CBA_fnc_globalSay3d, [_helper, "failedStart", 500], 56] call CBA_fnc_waitAndExecute;
[CBA_fnc_globalSay3d, [_helper, "failedStart", 500], 67] call CBA_fnc_waitAndExecute;
[CBA_fnc_globalSay3d, [driver _truck, "comeon", 500], 67] call CBA_fnc_waitAndExecute;
[CBA_fnc_globalSay3d, [driver _truck, "ahshit", 500], 77] call CBA_fnc_waitAndExecute;

// Create Smoke Effect
[CBA_fnc_globalEventJIP, ["intro_smoke_truck", _truck], 75] call CBA_fnc_waitAndExecute;



// Trigger Message from Driver
[CBA_fnc_globalEvent, ["cvo_common_fnc_subtitles", [ "Smuggler", "Thats the end of the road...."] ], 80] call CBA_fnc_waitAndExecute;
[CBA_fnc_globalEvent, ["cvo_common_fnc_subtitles", [ "Smuggler", "The engine is dead."] ], 85] call CBA_fnc_waitAndExecute;
[CBA_fnc_globalEvent, ["cvo_common_fnc_subtitles", [ "Smuggler", "You will have to walk from here..."] ], 90] call CBA_fnc_waitAndExecute;
[CBA_fnc_globalEvent, ["cvo_common_fnc_subtitles", [ "Smuggler", "Dont worry my friend! It is not far anymore."] ], 95] call CBA_fnc_waitAndExecute;
[CBA_fnc_globalEvent, ["cvo_common_fnc_subtitles", [ "Smuggler", "You can see the church from here.."] ], 100] call CBA_fnc_waitAndExecute;
[CBA_fnc_globalEvent, ["cvo_common_fnc_subtitles", [ "Smuggler", "You dont see it? Hah! Just its just down the road!"] ], 105] call CBA_fnc_waitAndExecute;
[CBA_fnc_globalEvent, ["cvo_common_fnc_subtitles", [ "Smuggler", "I will meet you at the safehouse once you're done"] ], 110] call CBA_fnc_waitAndExecute;
[CBA_fnc_globalEvent, ["cvo_common_fnc_subtitles", [ "Smuggler", "Good Luck!"] ], 115] call CBA_fnc_waitAndExecute;





[ { missionNamespace setVariable ["trigger_cleanup_smoke", true, true] }, "", 60 * 60 ] call CBA_fnc_waitAndExecute;
 