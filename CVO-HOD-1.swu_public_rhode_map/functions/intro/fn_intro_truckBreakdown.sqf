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
* ['something', player] call prefix_component_fnc_functionname
*
* Public: No
*/


if !(isServer) exitwith {};



// Play Sound
[_truck, "brokenFridge", 500] call CBA_fnc_globalSay3d;


[
    {
        // Damage Engine of the truck
        _this setHitPointDamage ["hitengine", 1.0];
        _this setHitPointDamage ["hitEngine2", 1.0];
    },
    _truck,
    125
] call CBA_fnc_waitAndExecute;

[CBA_fnc_globalSay3d, [_truck, "failedStart", 500], 140] call CBA_fnc_waitAndExecute;
[CBA_fnc_globalSay3d, [_truck, "failedStart", 500], 150] call CBA_fnc_waitAndExecute;

// Create Smoke Effect
[CBA_fnc_globalEventJIP, ["intro_smoke_truck", _truck], 155] call CBA_fnc_waitAndExecute;
