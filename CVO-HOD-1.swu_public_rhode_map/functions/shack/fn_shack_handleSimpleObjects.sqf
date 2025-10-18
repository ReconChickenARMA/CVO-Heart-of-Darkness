/*
* Author: Zorn
* Function to create simple objects and put them where the previous objects have been.
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


// Server PostInit!
if !(isServer) exitWith {};

private _layerName = "shack_after";

getMissionLayerEntities _layerName params [["_objects", []], ["_markers", []], ["_groups", []]];

if (_objects isEqualTo []) exitWith {};


private _array = [];

{
    _array pushBack createHashMapFromArray [
        ["className", typeOf _x],
        ["posASL", getPosASL _x],
        ["vectorDir", vectorDir _x],
        ["vectorUp", vectorUp _x]
    ];
    deleteVehicle _x;
    
} forEach _objects;

[
    {
        ! isNil "trigger_shack_setup"
    },
    {
        
        {
            private _obj = createSimpleObject [_x get "className", _x get "posASL"];
            _obj setVectorDirAndUp [_x get "vectorDir", _x get "vectorUp"];
        } forEach _this;
    },
    _array
] call CBA_fnc_waitUntilAndExecute;
