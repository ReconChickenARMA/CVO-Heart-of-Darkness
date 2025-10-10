


private _state = {

    params ["_target", "_player", "_params"];
    _params params  [""];

    if (_target distance _player > 5) exitWith { ["You are to far away to deliver the equipment..."] call cba_fnc_notify; };

    [
        20                                          // * 0: Total Time (in game "time" seconds) <NUMBER>
        ,[]                                         // * 1: Arguments, passed to condition, fail and finish <ARRAY>
                                                    // * 2: On Finish: Code called or STRING raised as event. <CODE, STRING>
        ,{ missionNamespace setVariable ["trigger_shack_setup", true, true]; }
        ,{}   
        ,"Delivering Weapons and Equipment..."                                         // * 4: Localized Title <STRING> (default: "")
        ,{ isNil "trigger_shack_setup" }            // * 5: Code to check each frame <CODE> (default: {true})
        ,[]                                         // * 6: Exceptions for checking ace_common_fnc_canInteractWith <ARRAY> (default: [])
        ,true                                       // * 7: Create progress bar as dialog, this blocks user input <BOOL> (default: true)
    ] call ace_common_fnc_progressBar;

};

private _aceAction = [
    "My_Action_ID_Name"                     // * 0: Action name <STRING>
    ,"Deliver Weapons and Equipment"                       //  * 1: Name of the action shown in the menu <STRING>
    ,"\A3\ui_f\data\igui\cfg\simpleTasks\types\backpack_ca.paa"        //  * 2: Icon <STRING> 
    ,_state                                 //  * 3: Statement <CODE>
    ,{ isNil "trigger_shack_setup" }        //  * 4: Condition <CODE>
    ,{}                                     //  * 5: Insert children code <CODE> (Optional)
    ,[]                                     //  * 6: Action parameters <ANY> (Optional)
    ,[0,0,0]                                //  * 7: Position (Position array, Position code or Selection Name) <ARRAY>, <CODE> or <STRING> (Optional)
    ,20                                     //  * 8: Distance <NUMBER> (Optional)
    ,[false,false,false,false,true]      //  * 9: Other parameters [showDisabled,enableInside,canCollapse,runOnHover,doNotCheckLOS] <ARRAY> (Optional)
//    ,{}                                   //  * 10: Modifier function <CODE> (Optional)
] call ace_interact_menu_fnc_createAction;


[
    shack_crate                    		// * 0: Object the action should be assigned to <OBJECT>
    ,0                         		    // * 1: Type of action, 0 for actions, 1 for self-actions <NUMBER>
    ,["ACE_MainActions"]             	// * 2: Parent path of the new action <ARRAY> (Example: ["ACE_SelfActions", "ACE_Equipment"])
    ,_aceAction    	         			// * 3: Action <ARRAY>    
] call ace_interact_menu_fnc_addActionToObject;



if !(isServer) exitWith {};

// 0. Hide Shack Objects
["shack_after", "HIDE_ON"] call cvo_common_fnc_layerObjects;


// 0. Get ShackLightsource Placeholder Position and store in Public GVAR
missionNamespace setVariable ["Shack_Lighttarget_POS", getPos intel_1_church, true];
missionNamespace setVariable ["Shack_Lightsource_POS", getPos lightsource_placeholder, true];
deleteVehicle lightsource_placeholder;


// 1. Wait until Intel Has been Picked up
[
    {
        isNull intel_1_church
    },
    {
        [] call mission_fnc_shack_lightHandler;

        // Stop The Light Flickering once there are no more players near the church
        [
            { [] call cba_fnc_players select { missionNamespace getVariable "Shack_Lightsource_POS" distance2D _x < 500 } isNotEqualTo []; },
            { missionNamespace setVariable ["trigger_shack_stopLight", true, true]; }
        ] call CBA_fnc_waitUntilAndExecute;
    }
] call CBA_fnc_waitUntilAndExecute;


// 2. Wait until X and run shack cutscene + setup
[
    {
        ! isNil "trigger_shack"
    },
    {
        ["shack_cutscene", ""] call CBA_fnc_globalEvent;
        [
            { ! isNil "trigger_shack_setup" },
            { call mission_fnc_shack_server }
        ] call CBA_fnc_waitUntilAndExecute;
    }
] call CBA_fnc_waitUntilAndExecute;
