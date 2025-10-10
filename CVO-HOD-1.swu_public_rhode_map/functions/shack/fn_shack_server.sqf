/*
* Author: Zorn
* Function to setup the stash and remove certain backpacks from all players.
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



private _backpacks = ["gm_dshkm_weaponBag", "gm_gc_army_backpack_80_at_empty_str", "gm_dshkm_aatripod_weaponBag", "gm_fagot_launcher_weaponBag"];
private _launchers = ["gm_rpg7_prp"];

["shack_after", "HIDE_OFF"] call cvo_common_fnc_layerObjects;

private _players = [] call CBA_fnc_players;

{ ["mission_remove_backpack", _x, _x] call CBA_fnc_targetEvent; } forEach ( _players select { backpack _x in _backpacks } );
{ ["mission_remove_launcher", _x, _x] call CBA_fnc_targetEvent; } forEach ( _players select { secondaryWeapon _x in _launchers } );
