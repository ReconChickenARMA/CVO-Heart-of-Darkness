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
* ['something', player] call prefix_component_fnc_functionname
*
* Public: No
*/

// TODO: Testing

params [ "_lightPOS", "_targetPOS", "_duration" ];

private _distance = _lightPos distance _targetPOS;

private _lightSource = "#lightreflector" createVehicleLocal _lightPOS;
_lightSource setVectorDir ( _lightPOS vectorFromTo _targetPOS );



_lightSource setLightColor [1, 0, 0];
_lightSource setLightAmbient [1, 0, 0]; // sets the colour applied to the surroundings

_lightSource setLightUseFlare true;
_lightSource setLightFlareSize 0.1; // in metre
_lightSource setLightFlareMaxDistance ( _distance * 1.2 ); // in metre

_lightSource setLightIntensity 3000;

_lightSource setLightDayLight true; // only for the light itself, not the flare

_lightSource setLightAttenuation [0, 2, 4, 4, 0, 9, 10]; // [start, constant, linear, quadratic, hardLimitStart, hardLimitEnd]
_lightSource setLightConePars [10, 5, 2];
_lightSource setLightVolumeShape ["a3\data_f\VolumeLightFlashlight.p3d", [1, 1, 1]]; 



[{ deleteVehicle _this }, _lightSource, _duration] call CBA_fnc_waitAndExecute;