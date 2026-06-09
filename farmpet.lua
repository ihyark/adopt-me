getgenv().Config =  {
    ["Webhook"] = {
        ["URL"] = "https://discord.com/api/webhooks/1508068762111184998/EBj0SdnrUmeYeXGOeTfCuiOhBc8vFc4jEuD5AkqQMOu2X3dKUugUDT3mOHoe6_5JReTl",
        ["Discord Id to ping"] = {""},
        ["Send Normal Huges"] = true,

        ["Rank Updates"] = "",
        ["Rank Update Min"] = 20,

        ["Admin Abuse"] = "",
        ["TitanicPresentWebhook"] = "",
    },
    ["Mail Settings"] = {
        ["User"] = "ihy4rk",
        ["Min_Gems"] = 100000,
        ["MAX_MAIL_COST"] = 1000000,
        ["Mailing"] = {},
        ["Send Old Huges"] = true,
    },
    ["Auto Enchant"] = {"Treasure Hunter", "Treasure Hunter", "Diamonds", "Diamonds","Criticals", "Strong Pets"},
    ["CPU Saver"] = true, -- makes your game run smoother

    ["MaxEggSlots"] = 50,
    ["MaxPetSlots"] = 40,

    ["Progress Limits"] = {
        ["Max Rank"] = false,
        ["Max Area"] = false,
    },
    ["Ignore Do Ranks"] = false, 
    ["Fast Rankup"] = false, -- will focus on quest in world 1 until it reaches a specific rank (broken a bit)
    ["Fast Rankup to"] = 20,

    ["StarterPets"] = true,
    ["ClaimFreeStuff"] = true,
    ["MaxUpgradeCost"] = 200000,
    ["OpenKeys"] = true,
    
    ["FarmBalloons"] = true,
    ["FarmBallonsOnlyInZone"] = false,

    ["FarmMiniChests"] = true,
    ["AutoMinigames"] = true,
    
    ["OpenPresent"] = false, -- 1 = small, 2 = Medium, 3 = Large, 4 = X-Large, 5 = Titanic, false = disabled
    ["AutoCombinePresents"] = true, -- combines Prestes to the desired level
    ["MaxCombineTier"] = 4, -- 1 = max Medium, 2 = max Large, 3 = max X-Large, 4 = max Titanic (default, craft everything)
    
    ["AutoConsumeFlag"] = {"Strength Flag","Hasty Flag"},
    ["AutoSprinkler"] = true,
}
loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/cd6279ef22ef689bec5cd78c7cd2f0a1.lua"))()
