class CfgSounds
{
	sounds[] = {}; // OFP required it filled, now it can be empty or absent depending on the game's version

	class brokenFridge
	{
		name = "brokenFridge";						// display name
		sound[] = { "data\broken-fridge.ogg", 1, 1, 100 };	// file, volume, pitch, maxDistance
        titles[] = {}; // no subtitles
	};
	class failedStart
	{
		name = "failed_start";						// display name
		sound[] = { "data\failed_start.ogg", 1, 1, 100 };	// file, volume, pitch, maxDistance
        titles[] = {}; // no subtitles
	};
	class puta
	{
		name = "puta";						// display name
		sound[] = { "data\puta.ogg", 1, 1, 100 };	// file, volume, pitch, maxDistance
        titles[] = {0, "*incoherent cursing*"}; // no subtitles
	};
	class comeon
	{
		name = "comeon";						// display name
		sound[] = { "data\comeon.ogg", 1, 1, 100 };	// file, volume, pitch, maxDistance
        titles[] = {}; // no subtitles
	};
	class ahshit
	{
		name = "ahshit";						// display name
		sound[] = { "data\ahshit.ogg", 1, 1, 100 };	// file, volume, pitch, maxDistance
        titles[] = {}; // no subtitles
	};
};
