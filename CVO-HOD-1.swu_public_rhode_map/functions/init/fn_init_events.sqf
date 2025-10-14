[ "mission_remove_backpack", { removeBackpack _this} ] call CBA_fnc_addEventHandler;
[ "mission_remove_launcher", { _this removeWeapon secondaryWeapon _this } ] call CBA_fnc_addEventHandler;

[ "shack_cutscene", mission_fnc_shack_cutscene ] call CBA_fnc_addEventHandler;
[ "shack_lightEffect", mission_fnc_shack_lightEffect ] call CBA_fnc_addEventHandler;

[ "intro_smoke_truck", mission_fnc_intro_smokeEffect ] call CBA_fnc_addEventHandler;

[
    "mission_addTortureDamage",
    {
        params ["_unit"];

        for "_i" from 1 to 50 do {
            [
                _unit,
                random 0.3,
                selectRandom ["Head", "Body", "LeftArm", "RightArm", "LeftLeg", "RightLeg"],
                selectRandom ["punch", "fire", "falling"]
            ] call ace_medical_fnc_addDamageToUnit;
        };

        _unit setVariable ["ace_medical_fractures", [1,1,1,1,1,1]];
        [_unit] call ace_medical_engine_fnc_updateDamageEffects;
    }
] call CBA_fnc_addEventHandler;

[
    "intro_truck_damage",
    {
        // Damage Engine of the truck
        { _this setHitPointDamage [_x, 1.0]; } forEach ["hitengine", "hitEngine2"];
        _this setPilotLight false;
        _this setCollisionLight false;
    }
] call CBA_fnc_addEventHandler;

[
    "intro_truck_lightOff",
    {
        _this setPilotLight false;
        _this setCollisionLight false;
    }
] call CBA_fnc_addEventHandler;

