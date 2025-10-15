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
	["QUIET", 6]
	,["DELAY", 2]
	,["MUTE"]
    ,["MUSIC_BOOST"]
	,["START", 6]
    ,[ "DELAY", 3 ]
    ,[ "MUSIC", "gm_response"]
    ,[ "DELAY", 2 ]
    ,[ "Text", "1974<br/>The colonial <t color='#ffffff'>government of Bocano</t> collapsed" ]
    ,[ "Text", "And<br/><t color='#ffffff'>the eyes of the world</t> fell on Bocano" ]
    ,[ "Text", "A power vacuum followed<br/> and <t color='#ffffff'>two militias</t> formed..."]
    ,[ "Text", "The <br/> <t color='#ffffff'>Movimento Popular de Libertacao de Bocano</t><br/><br/>also called the<br/><br/>People's Movement for the Liberation of Bocano" ]
    ,[ "Text", "and the<br/><br/>People's Union of Bocano<br/><br/> or as they call themselves<br/><br/><t color='#ffffff'>Uniao dos Povos de Bocano</t>" ]
    ,[ "Text", "Many powers began to provide support...<br/><br/> both - <t color='#ffffff'>publicly</t> but also <t color='#ffffff'>behind closed doors</t>" ]
    ,[ "CODE", { missionNamespace setVariable [ "intro_unitsIntoTruck", true, true ]; } ]
    ,[ "Text", "Your are a group of east german mercenaries.<br/><br/>Hired by the <t color='#ffffff'>DDR</t><br/> to support the <t color='#ffffff'>People's Union of Bocano</t>." ]
    ,[ "Text", "Your mission:<br/><t color='#ffffff'>1. Deliver arms and equipment</t>" ]
    ,[ "Text", "<t color='#ffffff'>2. Gain their trust and assist our new friends</t>." ]
    ,[ "Text", "A <t color='#ffffff'>local smuggler</t> helped you get into the country" ]
    ,[ "Text", "and you're on your way to <t color='#ffffff'>meet a contact at a church</t> close behind the border..." ]
    ,[ "CODE", { missionNamespace setVariable [ "intro_truck_start", true, true ]; } ]
    ,[ "UNMUTE", 60 ]
    ,[ "Text", "Good Luck....." ]
    ,[ "DELAY", 3 ]
    ,[ "RAVEN", 15 ]
    ,[ "DELAY", 3 ]
    ,[ "END", 20 ]
] call cvo_common_fnc_cutscene;

