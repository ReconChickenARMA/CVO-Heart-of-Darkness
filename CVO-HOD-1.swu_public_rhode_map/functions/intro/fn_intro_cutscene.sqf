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
    ,[ "DELAY", 3 ]
    ,[ "CODE", { playMusic "gm_death"; } ]
    ,[ "DELAY", 2 ]
    ,[ "Text", "1974<br/>The colonial <t color='#ffffff'>government of Bocano</t> collapsed" ]
    ,[ "Text", "And <t color='#ffffff'>the eyes of the world</t> fell on Bocano" ]
    ,[ "Text", "A power vacuum followed<br/> and <t color='#ffffff'>two militias</t> formed..."]
    ,[ "Text", "The <t color='#ffffff'>Movimento Popular de Libertacao de Bocano</t><br/>also called the<br/>People's Movement for the Liberation of Bocano" ]
    ,[ "Text", "and the<br/>People's Union of Bocano<br/> or as they call themselves<br/><t color='#ffffff'>Uniao dos Povos de Bocano</t>" ]
    ,[ "Text", "Many powers began to provide support...<br/> both - <t color='#ffffff'>publicly</t> but also <t color='#ffffff'>behind closed doors</t>" ]
    ,[ "CODE", { missionNamespace setVariable [ "intro_unitsIntoTruck", true, true ]; } ]
    ,[ "Text", "Your are a group of east german mercenaries.<br/>Hired by the <t color='#ffffff'>DDR</t><br/> to support the <t color='#ffffff'>People's Union of Bocano</t>." ]
    ,[ "Text", "Your mission:<br/>1. <t color='#ffffff'>Deliver arms and equipment</t>" ]
    ,[ "Text", "2. <t color='#ffffff'>Gain their trust</t> and assist our new friends</t>." ]
    ,[ "Text", "A <t color='#ffffff'>local smuggler</t> helped you get into the country" ]
    ,[ "Text", "and you're on your way to <t color='#ffffff'>meet a contact at a chruch</t> close behind the border..." ]
    ,[ "Text", "Good Luck....." ]
    ,[ "CODE", { missionNamespace setVariable [ "intro_truck_start", true, true ]; } ]
    ,[ "CODE",
        {
            [ 1 ] call acre_api_fnc_setGlobalVolume;
            60 fadeMusic 1;
            60 fadeRadio 1;
            60 fadeSound 1;
            20 fadeEnvironment 1;
            openMap [ false, false ];
        }
    ]
    ,[ "DELAY", 3 ]
    ,[ "RAVEN", 15 ]
    ,[ "DELAY", 3 ]
    ,[ "CODE", { while { userInputDisabled } do { disableUserInput false; }; } ]
    ,[ "END", 20 ]
    ,[ "DELAY", 120 ]
    ,[ "CODE",
        {
            diwako_dui_main_toggled_off = mission_dui_cache;
            mission_dui_cache = nil;
        }
    ]
] call cvo_common_fnc_cutscene;

