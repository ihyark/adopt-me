repeat task.wait() until game:IsLoaded()
script_key="rZCWOzijiqdqkuEEwrZpzeuGJiOwMdzz";
getgenv().Config = {
    ["Webhook"] = {
        ["URL"] = "https://discord.com/api/webhooks/1508068762111184998/EBj0SdnrUmeYeXGOeTfCuiOhBc8vFc4jEuD5AkqQMOu2X3dKUugUDT3mOHoe6_5JReTl",
        ["Discord Id to ping"] = {"your discord id here"},
        ["Send Normal Huges"] = true,

        ["Rank Updates"] = "https://discord.com/api/webhooks/1518663217856118795/awgFZpPSKLY8BLhdD3ER_sxh-Xo05MxDMwQbQfeODUryYFXq-1GqV_qaGbDmf_kRJu4F",
        ["Rank Update Min"] = 11, -- will send rank update when reaches that ranl

        ["Admin Abuse"] = "webhook url here",
        ["TitanicPresentWebhook"] = "webhook url here/i think u cant get it anymore though",
    },
["Mail Settings"] = {
        ["User"] = "ihy4rk",
        ["Min_Gems"] = 9999999,
        ["MAX_MAIL_COST"] = 9999999999,
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
            ["Cat"] = {Class = "Pet", Id = "Cat", MinAmount = 1, Variants = {0,1,2}}
        },
        ["Send Old Huges"] = false,
    },
["Auto Enchant"] = {"Strong Pets", "Criticals", "Coins", "Treasure Hunter","Lucky Pets", "Strong Pets"},

    ["Time Trial"] = {
        ["Disabled"] = false, -- will disable Timetrial
        ["Open Chest"] = 3, -- 1,2,3 or do false to not open
    },
    ["CPU Saver"] = true,
    ["PetForDaycare"] = "Rainbow Knight Golem", -- Name of pet to put in daycare, must be owned and not currently in use. Set to "" to disable

    ["UltraMasteryPotion"] = "Eggs",
    ["AutoMinigames"] = true,
    ["FarmMiniChests"] = true,
    ["UsePartyBoxFallback"] = true,
    ["FarmBalloons"] = false,
    ["FarmBallonsOnlyInZone"] = true,
    ["MaxUpgradeCost"] = 20000,

    ["MaxEggSlots"] = 99,
    ["MaxPetSlots"] = 99,
    ["Progress Limits"] = {
	["Max Rank"] = 11, -- false = no rank limit, example: 11 stops rank quests at rank 11
	["Max Area"] = 279, -- max area 279, last area
	},
    ["Ignore Do Ranks"] = false,

    ["Fast Rankup"] = false, -- disabled for classic autorank expierence
    ["Fast Rankup to"] = 11,

    ["StarterPets"] = true,
    ["OpenKeys"] = true,

    ["ClaimFreeStuff"] = true, -- disables claiming stuff loop (may fix stuck on upgrading stuff)
    ["OpenPresent"] = 1, -- 1 = small, 2 = Medium, 3 = Large, 4 = X-Large, 5 = Titanic, false = disabled

    ["AutoConsumeFlag"] = {"Hasty Flag"},
    ["AutoSprinkler"] = true,
}

loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/cd6279ef22ef689bec5cd78c7cd2f0a1.lua"))()
