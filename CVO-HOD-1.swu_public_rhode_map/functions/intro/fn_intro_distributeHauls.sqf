/*
* Author: Zorn
* Function to provide the players with the items to haul during the cutscene.
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

if !(isServer) exitWith {};

params [ "_players" ];

private _slots = [];

{ _slots pushBack ["backpack", _x] } forEach ["gm_dshkm_weaponBag", "gm_dshkm_aatripod_weaponBag", "gm_fagot_launcher_weaponBag", "gm_gc_army_backpack_80_at_empty_str"];
{ _slots pushBack ["launcher", _x] } forEach ["gm_rpg7_prp"];

{ 

    if (_slots isEqualTo []) exitWith {};
    private _unit = _x;
    private _slot = _slots deleteAt 0;
    ["intro_addHaul", [_unit, _slot], _unit] call CBA_fnc_targetEvent;

} forEach _players;
