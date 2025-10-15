if (!hasInterface) exitWith {};

[  
    intro_whiteboard,
    {
        // Not Jip
        [false] call mission_fnc_intro_cutscene;
    },
    {
        // Jip
        [true] call mission_fnc_intro_cutscene;
    }
] call cvo_common_fnc_setupReadyAction;

