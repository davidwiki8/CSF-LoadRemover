state("CommXPC")
{
	bool LoadingScreen : 0x004B0568, 0xFC, 0x8, 0x36C, 0x48, 0x44;
	bool SummaryScreen : 0x004B0570, 0x30, 0x10, 0x6C;
	bool ResZoneLoading : 0x004B0568, 0x28;
	bool LoadingDisk : 0x004B0570, 0x7C, 0x4, 0x4;
}

init
{
    vars.isLoading = true;
}

exit
{
    timer.IsGameTimePaused = true;
}

update
{
    vars.isLoading = current.LoadingScreen || current.SummaryScreen || current.ResZoneLoading || current.LoadingDisk;
}

isLoading
{
    return vars.isLoading;
}