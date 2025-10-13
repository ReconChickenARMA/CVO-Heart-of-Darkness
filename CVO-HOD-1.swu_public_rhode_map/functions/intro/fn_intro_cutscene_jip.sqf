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
    ,[ "Text", "In 1974, the colonial government of Bocano collapsed." ]
    ,[ "Text", "In the subsequent power vacuum, <br/> two militias formed, <br/> the <t color='#ffffff'>MPLB</t> and the <t color='#ffffff'>UPB</t>" ]
    ,[ "Text", "The eyes of the world fell on Bocano." ]
    ,[ "Text", "Many countries began to provide support, both <t color='#ffffff'>public</t> and <t color='#ffffff'>covert</t>." ]
    ,[ "Text", "You are a group bringing arms from the <t color='#ffffff'>DDR</t> to the <t color='#ffffff'>UPB</t>." ]
    ,[ "Text", "Your mission: <br/> 1. Deliver the equipment to our allies. <br/> Meeting point: A small church in the hill country" ]
    ,[ "Text", "2. Assist our <t color='#ffffff'>new friends</t> <br/> and gain their trust." ]
    ,[ "Text", "Good Luck....." ]
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
    ,[
        "CODE",
        {
            private _units = units group player - [player];
            private _pos = if (_units isEqualTo []) then { getPos player } else { [selectRandom _units, 5, 25, 2] call BIS_fnc_findSafePos; };
            player setPos _pos;
        }
    ]
    ,[ "END", 20 ]
    ,[ "DELAY", 120 ]
    ,[ "CODE",
        {
            diwako_dui_main_toggled_off = mission_dui_cache;
            mission_dui_cache = nil;
        }
    ]
] call cvo_common_fnc_cutscene;

