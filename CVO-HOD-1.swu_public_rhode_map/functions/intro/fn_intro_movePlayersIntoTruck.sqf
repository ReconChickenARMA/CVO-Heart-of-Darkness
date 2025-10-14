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



private _players = [] call cba_fnc_players select { ! ( _x in ( allCurators apply { getAssignedCuratorUnit _x } ) ) };
private _trucks = truck;

[
    [_players, player] select _players isEqualTo [],
    _trucks,
    "personturret"
] call cvo_common_fnc_moveUnitsIntoVehicles;
