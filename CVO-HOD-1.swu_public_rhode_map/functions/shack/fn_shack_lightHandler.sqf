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

if (!isServer) exitWith {};

private _lightPOS = missionNamespace getVariable "Shack_Lightsource_POS";
private _targetPOS = missionNamespace getVariable "Shack_Lighttarget_POS";


private _codeToRun = {
    params ["_lightPOS", "_targetPOS"];
    private _totalDelay = 1;

    for "_i" from 1 to selectRandom [1,2,3,3,3,3,3,4,5]  do {
        private _duration = 0.5 + random 0.15 * selectRandom [-1,1];
        [ CBA_fnc_globalEvent, [ "shack_lightEffect", [_lightPOS, _targetPOS, _duration ] ], _totalDelay ] call CBA_fnc_waitAndExecute;
        _totalDelay = _totalDelay + _duration * 2;
    };
};

private _parameters = [ _lightPOS, _targetPOS ];
private _exitCode = { /* exit code */ };
private _condition = { isNil "trigger_shack_stopLight" };
private _delay = 5;

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

