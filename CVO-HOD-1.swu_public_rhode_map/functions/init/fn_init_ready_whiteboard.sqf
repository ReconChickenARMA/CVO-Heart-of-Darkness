if (!hasInterface) exitWith {};

[  
    _actionObject,
    {
        [] call mission_fnc_intro_cutscene;
    },
    {
        [] call mission_fnc_intro_cutscene_jip;
    }
] call cvo_common_fnc_setupReadyAction;

