/*
* Author: Zorn
* Function to init a crate with gear
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

if (!isServer) exitWith {};

private _array = [
    ["cigs_matches", 20],
    ["cigs_voron_cigpack", 40],
    ["FISH_Cream_Kit_Desert", 20],
    ["FISH_Cream_Kit_Tropical", 20],
    ["FISH_Cream_Kit_Europe", 20]
];

private _crate = crate_gear;
{ _crate addItemCargoGlobal _x } forEach _array;
