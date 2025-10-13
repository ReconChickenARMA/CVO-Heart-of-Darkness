/*
* Author: Zorn
* Function to apply damage on unit which has been tortured.
* Will definetly break the units legs, so it can be carried.
* Needs to be local, so use in combination with CBA_fnc_targetEvent
*
* Arguments:
*
* Return Value:
* None
*
* Example:
* ["mission_addTortureDamage", _unit, _unit] call CBA_fnc_targetEvent
*
* Public: No
*/

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