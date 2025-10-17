// Cfg Functions - https://community.bistudio.com/wiki/CfgFunctions
class CfgFunctions {
    class mission // TAG
    {

        class init // Category
        {
            class init_babel { postInit = 1; };
            class init_cigCrate { postInit = 1; };
            class init_diary { preInit = 1; };
            class init_events { preInit = 1; };
            class init_intel { postInit = 1; };
            class init_ready_whiteboard { postInit = 1; };
        };
        class shack // Category
        {
            class shack_init { postInit = 1; };

            class shack_cutscene {};
            class shack_server {};

            class shack_lightEffect {};
            class shack_lightHandler {};
        };
        class intro {
            
            class intro_init { postInit = 1; };
            
            class intro_cutscene {};
                        
            class intro_movePlayersIntoTruck {};
            
            class intro_truckBreakdown {};
            
            class intro_truck_oilTrail {};
            class intro_truck_oilSpillage {};
            
            class intro_smokeEffect {};
            
            class intro_missionCredits {};
        };
    };
};
