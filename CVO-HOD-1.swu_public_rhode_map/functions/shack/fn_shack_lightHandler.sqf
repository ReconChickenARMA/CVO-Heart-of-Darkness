/*
* Author: Zorn
* Function to Start a Per Frame Handler which does the light flickering
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

if !(isServer) exitWith {};

private _posStart = missionNamespace getVariable "Shack_Lightsource_POSASL";
private _posTarget = missionNamespace getVariable "Shack_Lighttarget_POSASL";


private _codeToRun = {
    params ["_posStart", "_posTarget"];
    [ CBA_fnc_globalEvent, ["shack_lightEffect", [_posStart, _posTarget, 0.5 + random 0.2 * selectRandom [-1,1] ] ], 1 + random 0.25 * selectRandom [-1,1] ] call CBA_fnc_waitAndExecute;
    [ CBA_fnc_globalEvent, ["shack_lightEffect", [_posStart, _posTarget, 0.5 + random 0.2 * selectRandom [-1,1] ] ], 2 + random 0.25 * selectRandom [-1,1] ] call CBA_fnc_waitAndExecute;
    [ CBA_fnc_globalEvent, ["shack_lightEffect", [_posStart, _posTarget, 0.5 + random 0.2 * selectRandom [-1,1] ] ], 3 + random 0.25 * selectRandom [-1,1] ] call CBA_fnc_waitAndExecute;
};

private _parameters = [ _posStart, _posTarget ];
private _exitCode = { /* exit code */ };
private _condition = { isNil "trigger_shack_stopLight" };
private _delay = 15;

[{
    params ["_args", "_handle"];
    _args params ["_codeToRun", "_parameters", "_exitCode", "_condition"];

    if (_parameters call _condition) then {
        _parameters call _codeToRun;
    } else {
        _handle call CBA_fnc_removePerFrameHandler;
        _parameters call _exitCode;
    };
}, _delay, [_codeToRun, _parameters, _exitCode, _condition]] call CBA_fnc_addPerFrameHandler;