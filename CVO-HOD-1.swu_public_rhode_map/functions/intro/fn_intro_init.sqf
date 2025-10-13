
// ToDo Remove
if (true) exitWith {};


// WUAE to move the units into the truck.
[
    {
        ! isNil "intro_unitsIntoTruck"
    },
    {
        _statement
    },
    _parameter,
    _timeout,
    {
        _timeoutCode
    }
] call CBA_fnc_waitUntilAndExecute;



[
    {
        _condition
    },
    {
        _statement
    },
    _parameter,
    _timeout,
    {
        _timeoutCode
    }
] call CBA_fnc_waitUntilAndExecute;



// Will Injure the hostage when players are nearby
[
    {
        !isNil "hostage_player_nearby"
    },
    {
        private _unit = missionNamespace getVariable ["hostage", player]; // ToDo: update hostage variable - player as fallback is to remind the editor
        ["mission_addTortureDamage", _unit, _unit] call CBA_fnc_targetEvent;
    }
] call CBA_fnc_waitUntilAndExecute;
