/*
* Author: Zorn
* Function to execute cutscene.
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
    ,["Text", "You unload your burden..."]
    ,["CODE", { playMusic "gm_uncertain"; }]
    ,[ "CODE", { missionNamespace setVariable ["trigger_shack_setup", true, true] }]
    ,["Text", "and gather yourselves for what comes next..."]
    ,[ "CODE", { while {userInputDisabled} do {disableUserInput false;}; }]
    ,["END", 6]
] call cvo_common_fnc_cutscene;
