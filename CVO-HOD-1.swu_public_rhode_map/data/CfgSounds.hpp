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
};
