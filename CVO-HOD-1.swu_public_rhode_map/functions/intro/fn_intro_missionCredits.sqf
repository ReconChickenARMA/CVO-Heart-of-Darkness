/*
* Author: Zorn
* Function to add the "Operation Heart of Darkness by Recon Chicken" texture object and delete it locally when
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

private _posASL = [3856.47,4877.69,259.786];
private _dir = 313.691;

private _object = createSimpleObject ["UserTexture10m_F", _posASL, true];
_object setDir _dir;
_object setObjectTexture [0, getMissionPath "data\credits.paa" ];
_object setObjectScale 20;

[
    { isNull intel_1_church },
    { deleteVehicle _this; },
    _object
] call CBA_fnc_waitUntilAndExecute;
