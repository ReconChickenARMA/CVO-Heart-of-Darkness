/*
* Author: Zorn
* [Description]
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

params [
	["_object", nil, [objNull]],
	["_target", nil, [objNull, []], [3]]
];

if (isNil "_object" || { isNil "_target" }) exitWith {};

// get positions in ASL
private _posObject = getPosASL _object;
private _posTarget = switch (typeName _target) do {
	case "ARRAY": { _target };
	case "OBJECT": { getPosASL _target };
	default { nil };
};

if ( isNil "_posTarget" ) exitWith {};



// direction vector (normalized)
private _dir = _posObject vectorFromTo _posTarget;

// define "up" vector (so the object is properly oriented in 3D)
private _up = [0,0,1]; // world up reference
_up = _up vectorCrossProduct _dir; // perpendicular vector
_up = _dir vectorCrossProduct _up; // ensure correct orientation
_up = vectorNormalized _up;

// apply to object
_object setVectorDirAndUp [_dir, _up];
