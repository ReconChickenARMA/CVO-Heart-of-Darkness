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
    ["START", 6]
    ,["CODE", { disableUserInput true; }]
    ,["Text", "In 1974, the colonial government of Bocano collapsed with the fall of the Estado Novo."]
    ,["Text", "In the power vacuum that followed, factions of the former resistance fractured, forming two militias, the MPLB and the UPB, to settle their differences."]
    ,["Text", "The eyes of the world fell on Bocano, and various countries began to provide support, both public and covert, to the combatants."]
    ,["Text", "You are a group bringing arms from the DDR to the UPB, to aid in their fight against the MPLB in the Mutambara region of Bocano."]
    ,["Text", "Your mission is to deliver the equipment to a cache established by our allies. Once complete, begin to integrate yourselves into the militia, providing technical and in field support, and providing field reports to High Command."]
    ,["CODE", { missionNamespace setVariable ["intro_moveUnitsIntoVehicle", true, true]; }]
    ,["Text", "Good Luck....."]
    ,["DELAY", 3]
    ,["RAVEN", 15]
    ,["DELAY", 3]
    ,["END", 6]
    ,[ "CODE", { while {userInputDisabled} do {disableUserInput false;}; }]
] call cvo_common_fnc_cutscene;
