/*
* Author: Zorn
* Function to do things
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

[
    [ "CODE",
        {
            mission_dui_cache = missionNameSpace getVariable [ "diwako_dui_main_toggled_off", false ];
            diwako_dui_main_toggled_off = true;
            [ 0.05 ] call acre_api_fnc_setGlobalVolume;
            0 fadeMusic 2;
            8 fadeRadio 0;
            8 fadeSound 0;
            8 fadeEnvironment 0;
            openMap [ false, true ];
        }
    ]
    ,[ "START", 6 ]
    ,[ "CODE", { disableUserInput true; } ]
    ,[ "Text", "In 1974, the colonial government of Bocano collapsed with the fall of the Estado Novo." ]
    ,[ "Text", "In the power vacuum that followed, factions of the former resistance fractured, forming two militias, the MPLB and the UPB, to settle their differences." ]
    ,[ "Text", "The eyes of the world fell on Bocano, and various countries began to provide support, both public and covert, to the combatants." ]
    ,[ "Text", "You are a group bringing arms from the DDR to the UPB, to aid in their fight against the MPLB in the Mutambara region of Bocano." ]
    ,[ "Text", "Your mission is to deliver the equipment to a cache established by our allies. Once complete, begin to integrate yourselves into the militia, providing technical and in field support, and providing field reports to High Command." ]
    ,[ "CODE", { missionNamespace setVariable [ "intro_unitsIntoTruck", true, true ]; } ]
    ,[ "Text", "Good Luck....." ]
    ,[ "DELAY", 3 ]
    ,[ "RAVEN", 15 ]
    ,[ "CODE", { missionNamespace setVariable [ "intro_truck_start", true, true ]; } ]
    ,[ "DELAY", 3 ]
    ,[ "END", 6 ]
    ,[ "CODE",
        {
            [ 1 ] call acre_api_fnc_setGlobalVolume;
            60 fadeMusic 1;
            10 fadeRadio 1;
            10 fadeSound 1;
            60 fadeEnvironment 1;
            openMap [ false, false ];
        }
    ]
    ,[ "CODE", { while { userInputDisabled } do { disableUserInput false; }; } ]
    ,[ "DELAY", 60 ]
    ,[ "CODE",
        {
            diwako_dui_main_toggled_off = mission_dui_cache;
            mission_dui_cache = nil;
        }
    ]
] call cvo_common_fnc_cutscene;

