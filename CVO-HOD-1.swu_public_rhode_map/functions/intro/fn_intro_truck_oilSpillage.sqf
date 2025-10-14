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
* [truck] call mission_fnc_intro_truck_oilSpillage
*
* Public: No
*/

params [ "_truck", ["_index", -1] ];

if (_index isEqualTo -1) then { _index = 25; };

// meters, bearing
private _offset = [3,0];
private _pos = _truck getRelPos [3, 0];

private _oilSpillages = [
    "Land_Decal_roads_oil_stain_01_F", 
    "Land_Decal_roads_oil_stain_02_F", 
    "Land_Decal_roads_oil_stain_03_F", 
    "Land_Decal_roads_oil_stain_04_F"
];


private _obj = selectRandom _oilSpillages createVehicle [0,0,0];
_obj setDir random 360;
_obj setPos _pos;


_index = _index - 1;
if (_index isEqualTo 0) exitWith {};

[
    mission_fnc_intro_truck_oilSpillage,
    [_truck, _index],
    random 5
] call CBA_fnc_waitAndExecute;
