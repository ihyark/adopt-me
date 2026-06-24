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
        
        ["Mailing"] = {
	    ["All Huges"] = {Class = "Pet", Id = "All Huges", MinAmount = 1},
            ["Send Diamonds"] = {Class = "Currency", Id = "Diamonds", KeepAmount = "25m", MinAmount = "50m"},
            ["Hype Egg 2"] = {Class = "Lootbox", Id = "Hype Egg 2", MinAmount = 1},
            ["Hype Egg 3"] = {Class = "Lootbox", Id = "Hype Egg 3", MinAmount = 1},
            ["Ghostly Pack"] = {Class = "Lootbox", Id = "Ghostly Pack",  MinAmount = 1},
            ["Huge Hunter"] = {Class = "Enchant", Id = "Huge Hunter",  MinAmount = 1},
            ["Shiny Hunter"] = {Class = "Enchant", Id = "Shiny Hunter",  MinAmount = 1},
            ["Exclusive Raffle Ticket"] = {Class = "Misc", Id = "Exclusive Raffle Ticket", MinAmount = 1},
            ["Exclusive Egg 60"] = {Class = "Egg", Id = "Exclusive Egg 60", MinAmount = 1},
            ["Exclusive Egg 61"] = {Class = "Egg", Id = "Exclusive Egg 61", MinAmount = 1},
            ["MVP Key Upper Half"] = {Class = "Misc", Id = "MVP Key Upper Half", MinAmount = 50},
            ["Royalty"] = {Class = "Charm", Id = "Royalty", MinAmount = 2},
            ["Overload"] = {Class = "Charm", Id = "Overload", MinAmount = 2},
            ["Secret pet1"] = {Class = "Pet", Id = "Rainbow Swirl", MinAmount = 1, AllVariants = true},
            ["Secret pet2"] = {Class = "Pet", Id = "Banana", MinAmount = 1, AllVariants = true},
            ["Secret pet3"] = {Class = "Pet", Id = "Coin", MinAmount = 1, AllVariants = true},
            ["Secret pet4"] = {Class = "Pet", Id = "Yellow Lucky Block", MinAmount = 1, AllVariants = true},
            ["Secret pet5"] = {Class = "Pet", Id = "Crown", MinAmount = 1, AllVariants = true},
            ["Secret pet6"] = {Class = "Pet", Id = "Heart", MinAmount = 1, AllVariants = true},
            ["Secret pet7"] = {Class = "Pet", Id = "Mystery", MinAmount = 1, AllVariants = true},
            ["Secret pet8"] = {Class = "Pet", Id = "Rainbow", MinAmount = 1, AllVariants = true},
	}, 
        ["Send Old Huges"] = true,
    },
    ["Auto Enchant"] = {"Treasure Hunter", "Treasure Hunter", "Diamonds", "Diamonds", "Criticals", "Strong Pets"},
    ["CPU Saver"] = true, -- turn on or off

    ["EggSettings"] = {
        ["KickIfNoEgg"] = "rejoin",
        ["FarmChesWhileHatching"] = true,
        ["MinDeepFreeEgg"] = false,
        ["MinDeepLockedEgg"] = 100,
    },

    ["NoCoinsFarmTo"] = "100m",
    ["FarmMiniBoss"] = true,
    ["CollectRandomRewards"] = true,
    ["FarmDayDreamChest"] = true,

    ["FarmDayDreamChestWhileKey"] = false, -- ENABLING THIS MAY LEAD TO YOUR ACCOUNT INFINITLY FARMING CHESTS

    ["Upgrades"] = {
        ["BackroomsEggLuck"] = 99,
        ["BackroomsKeyFind"] = 99,
        ["BackroomsDeepBossDamage"] = 99,
        ["BackroomsDeepBossDamage"] = 99,
        ["BackroomsCoinMultiplier"] = 99,
    },
}
loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/992997535910a415037c9a7234bf76ac.lua"))()
