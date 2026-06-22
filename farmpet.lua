script_key="rZCWOzijiqdqkuEEwrZpzeuGJiOwMdzz";
setfpscap(10)
getgenv().Config =  {
    ["Webhook"] = {
        ["URL"] = "https://discord.com/api/webhooks/1508068762111184998/EBj0SdnrUmeYeXGOeTfCuiOhBc8vFc4jEuD5AkqQMOu2X3dKUugUDT3mOHoe6_5JReTl",
        ["Discord Id to ping"] = {""},
        ["Send Normal Huges"] = true,

        ["Rank Updates"] = "https://discord.com/api/webhooks/1516089179396640969/1e6rcwJJtoZfuHdwCz0fDp_nAD-mDCowbA7k3qKnojwyMvK4AXJWGTPGyhxzyAjriGaq",
        ["Rank Update Min"] = 9,

        ["Admin Abuse"] = "",
        ["TitanicPresentWebhook"] = "",
    },
    ["Mail Settings"] = {
        ["User"] = "",
        ["Min_Gems"] = 99999999999999999999,
        ["MAX_MAIL_COST"] = 9999999999,
        ["Mailing"] = {},
        ["Send Old Huges"] = false,
    },
    ["Auto Enchant"] = {"Treasure Hunter", "Treasure Hunter", "Diamonds", "Diamonds","Criticals", "Strong Pets"},
    ["CPU Saver"] = true, -- makes your game run smoother

    ["MaxEggSlots"] = 99,
    ["MaxPetSlots"] = 99,

    ["Progress Limits"] = {
        ["Max Rank"] = 11,
        ["Max Area"] = 220,
    },
    ["Ignore Do Ranks"] = false, 
    ["Fast Rankup"] = false, -- will focus on quest in world 1 until it reaches a specific rank (broken a bit)
    ["Fast Rankup to"] = 11,

    ["StarterPets"] = true,
    ["ClaimFreeStuff"] = true,
    ["MaxUpgradeCost"] = 200000,
    ["OpenKeys"] = true,
    
    ["FarmBalloons"] = false,
    ["FarmBallonsOnlyInZone"] = true,

    ["FarmMiniChests"] = true,
    ["AutoMinigames"] = true,
    
    ["OpenPresent"] = false, -- 1 = small, 2 = Medium, 3 = Large, 4 = X-Large, 5 = Titanic, false = disabled
    ["AutoCombinePresents"] = false, -- combines Prestes to the desired level
    ["MaxCombineTier"] = 4, -- 1 = max Medium, 2 = max Large, 3 = max X-Large, 4 = max Titanic (default, craft everything)
    
    ["AutoConsumeFlag"] = {"Strength Flag","Hasty Flag"},
    ["AutoSprinkler"] = true,
}
loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/cd6279ef22ef689bec5cd78c7cd2f0a1.lua"))()
