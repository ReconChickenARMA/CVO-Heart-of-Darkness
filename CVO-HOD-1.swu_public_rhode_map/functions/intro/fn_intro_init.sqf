
if !(isServer) exitWith {};

// WUAE to move the units into the truck.
[
    { ! isNil "intro_unitsIntoTruck" },
    mission_fnc_intro_movePlayersIntoTruck,
    truck
] call CBA_fnc_waitUntilAndExecute;

// Will Injure the hostage when players are nearby
[
    {
        !isNil "hostage_player_nearby"
    },
    {
        private _unit = missionNamespace getVariable ["hostage", player];
        ["mission_addTortureDamage", _unit, _unit] call CBA_fnc_targetEvent;
    }
] call CBA_fnc_waitUntilAndExecute;

