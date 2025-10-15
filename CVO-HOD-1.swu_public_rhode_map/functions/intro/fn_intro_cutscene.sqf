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

params [ [ "_isJIP", false ] ];

[
	["JIP", _isJIP]
	,["QUIET", 7]
	,["DELAY", 2]
	,["MUTE"]
	,["START", 6]
    ,["MUSIC_BOOST"]
    ,[ "DELAY", 3 ]
    ,[ "MUSIC", "PatrickZelinski_SonicWinds"]
    ,[ "DELAY", 2 ]
    ,[ "Text", "1974<br/><br/><br/>The colonial government of <t color='#ffffff'>Bocano</t> collapsed..." ]
    ,[ "Text", "The <t color='#ffffff'>eyes of the world</t> fell on Bocano..." ]
    ,[ "Text", "A vacuum of power formed<br/> and <t color='#ffffff'>two militias</t> were born from it..."]
    ,[ "Text", "The <br/><br/><br/> <t color='#ffffff'>Movimento Popular de Libertacao de Bocano</t><br/><br/><br/>also called the<br/><br/><br/><t color='#ffffff'>People's Movement for the Liberation of Bocano</t>" ]
    ,[ "Text", "and the<br/><br/><br/><t color='#ffffff'>People's Union of Bocano</t><br/><br/><br/> or as they call themselves<br/><br/><br/><t color='#ffffff'>Uniao dos Povos de Bocano</t>" ]
    ,[ "Text", "Many foreign actors got involved<br/><br/><t color='#ffffff'>providing support</t> for ether side..." ]
    ,[ "Text", "Rumors say that some may even <t color='#ffffff'>deliver to both sides</t>..." ]
    ,[ "Text", "Some gracious donors provide their support <t color='#ffffff'>publicly...</t>" ]
    ,[ "Text", "while others prefer to keep their involvement <t color='#ffffff'>behind closed doors</t>" ]
    ,[ "Text", "Your are a group of east german <t color='#ffffff'>mercenaries</t>..." ]
    ,[ "Text", "...hired by the <t color='#ffffff'>German Democratic Republic</t> to support the <t color='#ffffff'>People's Union of Bocano</t>." ]
    ,[ "CODE", { if (!_isJIP) then { missionNamespace setVariable [ "intro_unitsIntoTruck", true, true ]; }; } ]
    ,[ "Text", "Your mission:" ]
    ,[ "Text", "1. <t color='#ffffff'>Deliver</t> arms and equipment" ]
    ,[ "Text", "2. Gain their trust and <t color='#ffffff'>assist</t> our new friends" ]
    ,[ "Text", "A local smuggler is getting you <t color='#ffffff'>across the border</t>" ]
    ,[ "Text", "You have been sitting in the back of his truck <t color='#ffffff'>for hours</t>..." ]
    ,[ "Text", "But soon you should <t color='#ffffff'>arrive</t> at your destination..." ]
    ,[ "Text", "A small <t color='#ffffff'>church</t> near a lone village..." ]
    ,[ "Text", "A <t color='#ffffff'>contact</t> is awaiting your there..." ]
    ,[ "CODE", {
        if (_isJIP) then {
            private _units = units group player - [player];
            private _pos = if (_units isEqualTo []) then { getPos player } else { [selectRandom _units, 5, 25, 2] call BIS_fnc_findSafePos; };
            player setPos _pos;
        } else {
            missionNamespace setVariable [ "intro_truck_start", true, true ];
            diag_log format ['[CVO](debug)(fn_intro_cutscene) _truckStart: %1', true];  // TODO
        };
    }]
    ,[ "DELAY", 3 ]
    ,[ "UNMUTE", 150 ]
    ,[ "Text", "Good Luck....." ]
    ,[ "DELAY", 3 ]
    ,[ "RAVEN", 15 ]
    ,[ "DELAY", 3 ]
    ,[ "END", 20 ]
] call cvo_common_fnc_cutscene;


//
// <t color='#ffffff'></t>
// <br/>
// 
