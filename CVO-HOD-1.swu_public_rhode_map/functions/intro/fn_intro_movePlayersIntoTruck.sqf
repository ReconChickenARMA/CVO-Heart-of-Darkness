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
* [truck] call mission_fnc_movePLayersIntoTruck;
*
* Public: No
*/

private _players = [] call cba_fnc_players;

// If its not Preview, remove zeus' from the players array
if (!is3DENPreview) then { _players = _players select { ! ( _x in ( allCurators apply { getAssignedCuratorUnit _x } ) ) }; };

if (_players isEqualTo []) then _players = [player];

[_players] call mission_fnc_init_distributeHauls;

private _trucks = truck;
[
    _players,
    _trucks,
    "personturret"
] call cvo_common_fnc_moveUnitsIntoVehicles;
