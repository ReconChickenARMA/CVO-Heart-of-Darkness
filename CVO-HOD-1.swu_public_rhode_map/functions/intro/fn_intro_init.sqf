
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
