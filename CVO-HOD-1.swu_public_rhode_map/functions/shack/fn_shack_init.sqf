if !(isServer) exitWith {};

[
    {
        ! isNil "trigger_shack"
    },
    {
        ["shack_cutscene", ""] call CBA_fnc_globalEvent;
        [
            { ! isNil "trigger_shack_setup" },
            { call mission_fnc_shack_server }
        ] call CBA_fnc_waitUntilAndExecute;
    }
] call CBA_fnc_waitUntilAndExecute;

["shack_after", "HIDE_ON", 0] call cvo_common_fnc_layerObjects;

// Get ShackLightsource Placeholder Position and store in Public GVAR
missionNamespace setVariable ["Shack_Lighttarget_POS", getPos intel_1_church, true];
missionNamespace setVariable ["Shack_Lightsource_POS", getPos lightsource_placeholder, true];
deleteVehicle lightsource_placeholder;


// start the Light Flickering once the player pickup the intel
[
    {
        isNull intel_1_church
    },
    {
        [] call mission_fnc_shack_lightHandler;

        // Stop The Light Flickering once there are no more players near the church
        [
            { [] call cba_fnc_players select { missionNamespace getVariable "Shack_Lightsource_POS" distance2D _x < 500 } isNotEqualTo []; },
            { missionNamespace setVariable ["trigger_shack_stopLight", true, true]; }
        ] call CBA_fnc_waitUntilAndExecute;
    }
] call CBA_fnc_waitUntilAndExecute;
