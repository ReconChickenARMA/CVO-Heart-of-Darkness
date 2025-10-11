
// ToDo Remove
if (true) exitWith {};

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

// intro_truck_start
// intro_whiteboard

[
    {
        !isNil "hostage_player_nearby"
    },
    {
        // Add multiple wounds to hostage
        // Add broken Legs
        _statement
    },
    _parameter,
    _timeout,
    {
        _timeoutCode
    }
] call CBA_fnc_waitUntilAndExecute;