/*
* Author: Stolen from AET, reworked by Zorn.
* Function to add default Diary Entries.
* *** indicates a placeholder and should be removed after the Mission Maker is done adding his data.
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

//// ################# COMMENT LINE BELOW TO ENABLE BABEL #################
if (true) exitWith {};
//// ################# COMMENT LINE ABOVE TO ENABLE BABEL #################


params [["_player", player, [objNull]]];

_player createDiaryRecord ["Diary", ["Credits","
<font size=12 face='EtelkaMonospacePro'>
*** Insert Credits Here ***
</font>
"]]; 

player createDiaryRecord ["Diary", ["Additional","
<font size=14 color='#0099ff' face='EtelkaMonospacePro'>
Additional Information
</font>
<br/>
<font size=11 face='EtelkaMonospacePro'>
<br/>  1. ***Insert additional information here.***
<br/>  2. ***Insert additional information here.***
</font>
"]];


player createDiaryRecord ["Diary", ["Administration","
<font size=14 color='#0099ff' face='EtelkaMonospacePro'>
Current CVO Contract Details
</font><br/>
<font size=11 face='EtelkaMonospacePro'>
*** Insert information current CVO deployment. ***
</font><br/><br/>
<font size=14 color='#0099ff' face='EtelkaMonospacePro'>
ADMINISTRATION
</font><br/>
<font size=11 face='EtelkaMonospacePro'>
*** Insert administrative information. ***
</font><br/><br/>
<font size=14 color='#0099ff' face='EtelkaMonospacePro'>
LOGISTICS
</font><br/>
<font size=11 face='EtelkaMonospacePro'>
*** Insert logistical information. ***
</font><br/><br/>
"
]];


player createDiaryRecord ["Diary", ["Execution","
<font size=14 color='#0099ff' face='EtelkaMonospacePro'>
COMMANDER'S INTENT
</font>
<br/>
<font size=11 face='EtelkaMonospacePro'>
*** Insert very short summary of plan here.***
</font>
<br/>
<br/>
<font size=14 color='#0099ff' face='EtelkaMonospacePro'>
MOVEMENT PLAN
</font>
<br/>
<font size=11 face='EtelkaMonospacePro'>
*** Insert movement instructions here..***
</font>
<br/>
<br/>
<font size=14 color='#0099ff' face='EtelkaMonospacePro'>
FIRE SUPPORT PLAN
</font>
<br/>
<font size=11 face='EtelkaMonospacePro'>
*** Insert fire support instructions here.***
</font>
<br/>
<br/>
<font size=14 color='#0099ff' face='EtelkaMonospacePro'>
SPECIAL TASKS
</font>
<br/>
<font size=11 face='EtelkaMonospacePro'>
*** Insert instructions for specific units here.***
</font>
<br/>

"
]];

player createDiaryRecord ["Diary", ["Mission","
<font size=11 face='EtelkaMonospacePro'>
*** Insert general information about the tasking here.***
</font>
<br/>
<br/>
<font size=14 color='#0099ff' face='EtelkaMonospacePro'>
PRIMARY OBJECTIVES
</font>
<br/>
<font size=11 face='EtelkaMonospacePro'>
*** Insert required Mission objectives here.***
</font>
<br/>
<br/>
<font size=14 color='#0099ff' face='EtelkaMonospacePro'>
SECONDARY OBJECTIVES
</font>
<br/>
<font size=11 face='EtelkaMonospacePro'>
*** Insert optional Mission objectives here.***
</font>
<br/>
"
]];

player createDiaryRecord ["Diary", ["Situation","
<font size=11 face='EtelkaMonospacePro'>
*** Insert general information about the situation here.***
</font>
<br/>
<br/>
<font size=14 color='#0099ff' face='EtelkaMonospacePro'>
ENEMY FORCES
</font>
<br/>
<font size=11 face='EtelkaMonospacePro'>
*** Insert Information about enemy forces here.***
</font>
<br/>
<br/>
<font size=14 color='#0099ff' face='EtelkaMonospacePro'>
FRIENDLY FORCES
</font>
<br/>
<font size=11 face='EtelkaMonospacePro'>
*** Insert Information about friendly forces here.***
</font>
<br/>
"
]];

// Remove Unused Channels
player createDiaryRecord ["Diary", ["COMMS PLAN","
<font size=14 color='#0099ff' face='EtelkaMonospacePro'>
Command Net: AN/PRC-148
</font>
<font size=11 face='EtelkaMonospacePro'>
<br/> Group 01 Channel 1: Ground Command
<br/> Group 01 Channel 8: JTAC NET
<br/> Group 01 Channel 9: AIR NET
</font>
<br/>
<br/>
<font size=14 color='#0099ff' face='EtelkaMonospacePro'>
Intra Squad Nets: AN/PRC-343 PRR
</font>
<font size=11 face='EtelkaMonospacePro'>
<br/> Block 1 Channel  1: 1-1 - Infantry
<br/> Block 1 Channel  2: 1-2 - Infantry
<br/> Block 1 Channel  3: 1-3 - Infantry
<br/> Block 1 Channel  4: 1-4 - Infantry
<br/> Block 1 Channel  5: 1-5 - Recon
<br/> Block 1 Channel  6: 1-6 - Platoon Command
<br/> Block 1 Channel  7: 1-7 - Support
<br/> Block 1 Channel  8: 1-8 - GRANIT - Fire Support
<br/> Block 1 Channel  9: 1-9 - KODIAK - Air Transport
<br/> Block 1 Channel 10: 1-0 - Company Command
</font>
"
]];
