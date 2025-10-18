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
    ,[ "Text", "1974" ]
    ,[ "Text", "The <t color='#ffffff'>eyes of the world</t> fell on Bocano..." ]
    ,[ "Text", "...as its colonial government <t color='#ffffff'>collapsed</t>" ]
    ,[ "Text", "A vacuum of power formed<br/> and <t color='#ffffff'>two new militias</t> were born from it"]
    ,[ "Text", "The<br/><t color='#ffffff'>Movimento Popular de Libertacao de Bocano</t><br/>also called the<br/><t color='#ffffff'>People's Movement for the Liberation of Bocano</t>" ]
    ,[ "Text", "and the<br/><t color='#ffffff'>People's Union of Bocano</t><br/> or - as they call themselves<br/><t color='#ffffff'>Uniao dos Povos de Bocano</t>" ]
    ,[ "Text", "Many foreign actors got involved<br/><t color='#ffffff'>providing support</t> <br/>for ether side ..." ]
    ,[ "Text", "there are wisphers that some may even work with <t color='#ffffff'>both</t> ..." ]
    ,[ "Text", "While some gracious donors provide their support <t color='#ffffff'>for the world to see...</t>" ]
    ,[ "Text", "others keep their involvement<br/><t color='#ffffff'>in the shadows</t>" ]
    ,[ "Text", "You're east german <t color='#ffffff'>mercenaries</t>..." ]
    ,[ "Text", "Contracted by the<br/><t color='#ffffff'>German Democratic Republic</t>" ]
    ,[ "Text", "Their Goal:<br/>support the<br/><t color='#ffffff'>People's Union of Bocano</t>." ]
    ,[ "CODE", { if (!_isJIP) then { missionNamespace setVariable [ "intro_unitsIntoTruck", true, true ]; }; } ]
    ,[ "Text", "Your mission:" ]
    ,[ "CODE", { if (!_isJIP) then { [] call mission_fnc_intro_missionCredits; }; } ]
    ,[ "Text", "1. <t color='#ffffff'>Deliver</t> arms and equipment" ]
    ,[ "Text", "2. <t color='#ffffff'>Assist</t> our new friends and gain their trust" ]
    ,[ "Text", "3. Leave <t color='#ffffff'>no trace</t> of your presence" ]
    ,[ "Text", "A local smuggler is getting you <t color='#ffffff'>across</t> the border" ]
    ,[ "Text", "For hours you've been <t color='#ffffff'>sitting</t> in the back of his truck..." ]
    ,[ "Text", "But atlast, your <t color='#ffffff'>destination</t> is near..." ]
    ,[ "Text", "A small <t color='#ffffff'>church</t> - in a lone valley..." ]
    ,[ "Text", "Your <t color='#ffffff'>contact</t> is awaiting you..." ]
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
    ,[ "RAVEN", 6 ]
    ,[ "DELAY", 3 ]
    ,[ "END", 15 ]
] call cvo_common_fnc_cutscene;


//
// <t color='#ffffff'></t>
// <br/>
// 
