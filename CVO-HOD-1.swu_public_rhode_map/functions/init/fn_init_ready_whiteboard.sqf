if (!hasInterface) exitWith {};

[  
    _actionObject,
    {
        [] call mission_fnc_intro_cutscene;
    },
    {
        // Code for JIP
    }
] call cvo_common_fnc_setupReadyAction;

