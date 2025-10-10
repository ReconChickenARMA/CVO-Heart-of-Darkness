private _structuredString = "
<br/>You found a handwritten note in the ION barracks under a bed:
<br/><font size='3' color='#ff000d' face='EraserRegular'>The red light will lead your way...</font>
";

[
    intel_1_curch,                  // Object
    "Note from the church",         // Intel Title
    _structuredString,              // Intel Content (Structured Text as STRING)
    "Church",                       // Intel Group, nil for Default Group (Optional, nil for Default Group: "General")
    false                           // Remove Object once Picked up - (Optional - Default: true)
] call cvo_intel_fnc_createIntel;
