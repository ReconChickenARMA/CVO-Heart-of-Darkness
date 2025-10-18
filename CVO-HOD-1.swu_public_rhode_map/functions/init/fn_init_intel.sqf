/*
* Author: Zorn
* Function to setup intel items
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

// intel_1_church

private _structuredString = "
<br/>You found a handwritten note at the door of the church:
<br/><font size='23' color='#ff000d' face='EraserRegular'>The red star will light the way...</font>
";

[
    intel_1_church,                 // Object
    "Cryptic note from the church",         // Intel Title
    _structuredString,              // Intel Content (Structured Text as STRING)
    "Church",                       // Intel Group, nil for Default Group (Optional, nil for Default Group: "General")
    true                            // Remove Object once Picked up - (Optional - Default: true)
] call cvo_intel_fnc_createIntel;

intel_1_church setObjectTexture [0,'#(rgb,512,512,3)text(1,1,"EraserRegular",0.1,"#ffffff","#000000","The\nred\nstar\nwill\nlight\nthe\nway...")'];
