_G.TpWorkspace = true
script_key="OEjhHjfFlFWLPKFojgAjtZOrPPyRWHrI";
getgenv().Config = {
    ["Webhook"] = {
        ["URL"] = "https://discord.com/api/webhooks/1508068762111184998/EBj0SdnrUmeYeXGOeTfCuiOhBc8vFc4jEuD5AkqQMOu2X3dKUugUDT3mOHoe6_5JReTl",
        ["Discord Id to ping"] = {""},
        ["Send Normal Huges"] = true,
    },

    ["Mail Settings"] = {
        ["User"] = "ihy4rk",
        ["Min_Gems"] = 50000000,
        ["MAX_MAIL_COST"] = 2000000,
        
        ["Mailing"] = {},
        
        ["Send Old Huges"] = true,
    },
    ["Auto Enchant"] = {"Tap Teamwork", "Criticals", "Criticals", "Tap Power", "Tap Power", "Happy Pets"},
    ["CPU Saver"] = true, -- turn on or off

    ["EggSettings"] = {
        ["KickIfNoEgg"] = rejoin,
        ["FarmChesWhileHatching"] = true,
        ["MinDeepFreeEgg"] = 100,
        ["MinDeepLockedEgg"] = 100,
    },

    ["NoCoinsFarmTo"] = "100m",
    ["FarmMiniBoss"] = true,
    ["CollectRandomRewards"] = false,
    ["FarmDayDreamChest"] = false,

    ["FarmDayDreamChestWhileKey"] = false, -- ENABLING THIS MAY LEAD TO YOUR ACCOUNT INFINITLY FARMING CHESTS

    ["Upgrades"] = {
        ["BackroomsEggLuck"] = 99,
        ["BackroomsKeyFind"] = 0,
        ["BackroomsDeepBossDamage"] = 99,
        ["BackroomsDeepBossDamage"] = 99,
        ["BackroomsCoinMultiplier"] = 0,
    },
}
loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/992997535910a415037c9a7234bf76ac.lua"))()
