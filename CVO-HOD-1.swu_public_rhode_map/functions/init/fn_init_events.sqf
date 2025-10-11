[ "mission_remove_backpack", { removeBackpack _this} ] call CBA_fnc_addEventHandler;
[ "mission_remove_launcher", { _this removeWeapon secondaryWeapon _this } ] call CBA_fnc_addEventHandler;

[ "shack_cutscene", mission_fnc_shack_cutscene ] call CBA_fnc_addEventHandler;
[ "shack_lightEffect", mission_fnc_shack_lightEffect ] call CBA_fnc_addEventHandler;

[ "intro_smoke_truck", mission_fnc_intro_smokeEffect ] call CBA_fnc_addEventHandler;