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

if (isNil "texture_jip") exitWith {};

private _posASL = [5333,5308,424];
private _dir = 45;

private _object = createSimpleObject ["UserTexture10m_F", _posASL, true];
_object setDir _dir;
_object setObjectTexture [0, getMissionPath "data\credits.paa" ];
_object setObjectScale 20;
