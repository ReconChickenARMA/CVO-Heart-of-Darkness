/*
* Author: Zorn
* Function that will spawn oilspills below the engine of the truck
*
* Arguments:
*
* Return Value:
* None
*
* Example:
* [truck] call mission_fnc_intro_truck_oilTrail
*
* Public: No
*/

params [ "_truck" ];

if (speed _truck < 1 ) exitWith { [_truck] call mission_fnc_intro_truck_oilSpillage; };

/// meters, bearing
private _offset = [3,0];
private _pos = _truck getRelPos [3, 0];

private _obj = createSimpleObject ["Oil_Spill_F", [0,0,0]];
_obj setPos _pos;
_obj setDir random 360;
_obj setObjectScale 0.1 max random 0.5;

[
    mission_fnc_intro_truck_oilTrail,
    [_truck],
    random 0.1
] call CBA_fnc_waitAndExecute;

