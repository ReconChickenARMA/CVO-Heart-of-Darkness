/*
* Author: Zorn
* FNC to move all players (beside zeus) into the target vehicle
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

params [ "_truck" ];

private _players = [] call cba_fnc_players select { ! _x in ( allCurators apply { getAssignedCuratorUnit _x } ) };
