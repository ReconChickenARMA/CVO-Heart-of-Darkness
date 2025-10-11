/*
* Author: Zorn
* Client Effect Function which will handle the smoke effect on the truck.
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

params ["_truck"];

private _posTruck = getPosATL _truck;


// Create Particle Spawner
private _source = "#particlesource" createVehicleLocal _posTruck;

// attach particle spawner
_source attachTo [_truck, [2,0,2]];

_source setParticleParams [
	["\A3\Data_F\ParticleEffects\Universal\Universal", 16, 7, 16, 1], "", "Billboard",
	1, 8, [0, 0, 0], [0, 0, 1.5], 0, 10, 7.9, 0.066, [1, 3, 6],
	[[0, 0, 0, 0], [0.05, 0.05, 0.05, 1], [0.05, 0.05, 0.05, 1], [0.05, 0.05, 0.05, 1], [0.1, 0.1, 0.1, 0.5], [0.125, 0.125, 0.125, 0]],
	[0.25], 1, 0, "", "", _ps1];
_ps1 setParticleRandom [0, [0.25, 0.25, 0], [0.2, 0.2, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
_ps1 setDropInterval 0.05;


// Cleanup after 
private _code = { deleteVehicle _this };
[
    { ! isNil "trigger_shack_setup" },
    _code,
    _source,
    30 * 60,
    _code
] call CBA_fnc_waitUntilAndExecute;
