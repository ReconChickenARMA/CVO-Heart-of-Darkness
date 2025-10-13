/*
* Author: Zorn
* Function to create the light effect
*
* Arguments:
*
* Return Value:
* None
*
* Example:
* [_lightPOS, _targetPOS, _duration] call mission_fnc_shack_lightEffect
*
* Public: No
*/

diag_log format ['[CVO](debug)(fn_shack_lightEffect) _this: %1', _this];

params [
	[ "_lightPOS",  [0,0,0], [[]], [3] ],
	[ "_targetPOS", [0,0,0], [[]], [3] ],
	[ "_duration",  1,	   [0]	   ]
];


// Warn if either position is default
if (_lightPOS  isEqualTo [0,0,0]) then { private _str = format ['[CVO](debug)(fn_shack_lightEffect) WARNING: _lightPOS is default: %1', _lightPOS]; diag_log _str; systemChat _str; };
if (_targetPOS isEqualTo [0,0,0]) then { private _str = format ['[CVO](debug)(fn_shack_lightEffect) WARNING: _targetPOS is default: %1', _targetPOS]; diag_log _str; systemChat _str; };

private _distance = _lightPOS distance _targetPOS;

private _lightSource = "#lightreflector" createVehicleLocal _lightPOS;
[_lightSource, _targetPOS] call CVO_COMMON_fnc_pointAt;

_lightSource setLightColor [1, 0, 0];
_lightSource setLightAmbient [1, 0, 0]; // sets the colour applied to the surroundings

_lightSource setLightUseFlare true;
_lightSource setLightFlareSize 0.5; // in metre
_lightSource setLightFlareMaxDistance ( _distance * 2 ); // in metre

_lightSource setLightIntensity 6000;

_lightSource setLightDayLight true; // only for the light itself, not the flare

_lightSource setLightAttenuation [0, 2, 4, 4, 0, 9, 10]; // [start, constant, linear, quadratic, hardLimitStart, hardLimitEnd]
_lightSource setLightConePars [45, 30, 2];
_lightSource setLightVolumeShape ["a3\data_f\VolumeLightFlashlight.p3d", [1, 1, 1]]; 


[{ deleteVehicle _this }, _lightSource, _duration] call CBA_fnc_waitAndExecute;
