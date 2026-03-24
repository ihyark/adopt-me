task.spawn(function()
    task.wait(35)
    getgenv().API_KEY = "46EfVT7TAiRHBD7JF1gB9xsQT"
    getgenv().GroupName = "Main"
    loadstring(game:HttpGet("http://ii.sebas.sbs:4241/adoptme/dashboard.lua"))()
end)

task.spawn(function()
    script_key = "MYYJmxiGUIPgPiRLakmdZAJryZjwzRAW";
    getgenv().Config = {
        ["PetAMountToBuy"] = "20", -- can be 999
        ["WhatCategory"] = "pets", -- gifts if WhatCategory = "" then = pets
        ["PetRemoteToBuy"] = "endangered_2026_endangered_egg", -- exemple for gifts halloween_2025_spider_box

        ["check_for_2d_kitty"] = true, -- farm 2d kitty event work with eggfarm or petfarm


        ["PetFarmAutoSwitchFullGrown"] = false,
        ["PetFarmActive"] = false, -- farm potion

        ["AutoLoopBuyChisel"] = false, -- 2026 SUGAR EVENT    
        ["AutoLoopBuyMallet"] = true,

        ["EggFarmActive"] = true, -- farm egg, if no more eggs will farm potion, if found new egg will farm them to
        ["EggToIgnore"] = {"Crystal Egg"}, -- eggs to ignore when eggfarm active
        ["LoopBuyEgg"] = true, -- when enough bucks will buy egg, only work with eggfarm
        ["EggToBuyEgg"] = "endangered_2026_endangered_egg",


        ["PetPenActive"] = true, -- will put pets in pen, random pets
        ["PetPenFocusPriority"] = true, -- will focus those pets order in pen, then farm any other pets
        ["PetPenFocusPetOrder"] = {"Blue Whale", "Sea Turtle", "Mochi Meow", "Gumball Caterpillar"}, -- pet names to focus in pen exemple {"Donkey","Camel","Zebra"}
        ["PetPenFocusPetRarity"] = false, -- PetPenFocusPriority must be false else will ignore
        ["PetPenFocusPetRarityOrder"] = {"legendary"}, -- will farm pet rarity depending on order using pet pen exemple "common","uncommon","rare","ultra_rare","legendary"
        ["PetPenAutoNeon"] = true, -- will try to make neon pets, check after it remove fullgrown pet from pen
        ["PetPenAutoMega"] = true, -- will try to make mega pets, check after it remove fullgrown pet from pen
        ["PetPenNeonMegaWebhook"] = "", -- webhook to send neon/mega info


        ["HodDogStandHOLDER"] = "", -- will automatically setup hotdog stand you must own one
        ["HodDogStandHOLDERPrice"] = "50", -- 1 to 50 max if not set default is 50
        ["HodDogStandTransfer"] = false, -- enable or disable hotdog stand transfer


        ["NeonMegaFarm"] = false,
        ["BuyEgg"] = "", -- only work with NeonMegaFarm, will loop buy this egg when enough bucks
    

        ["AutoBuyStuffRecyclePoint"] = true, -- will automatically buy stuff in recycle point shop
        ["ItemToBuyInRecyclePoint"] = "Crystal Egg", -- item name or item kind, exemple "Crystal Egg" or "Basic Egg"


        ["AutoReleasePet"] = true, -- work with egg/pet farm, will release selected rarity
        ["OnlyReleasePetList"] = {""}, -- will ONLY release those pet, and will ignore every other release config, if you dont want it let ""
        ["GlobalBlacklist"] = {"Gumball Caterpillar"}, -- item kind or name separated by , ; |
        ["LegendaryAllowedToRecycle"] = {""}, -- item kind or name separated by , ; |
        ["RecycleWebhook"] = "", -- webhook to send recycle info
        ["RecycleOnlyPetWithAge"] = "", -- 6 = full grown, let "" to recycle all, 1 2 3 4 5 6 or "" not 0

        ["common"] = true,
        ["uncommon"] = true,
        ["rare"] = true,
        ["ultra_rare"] = true,
        ["legendary"] = false, -- WARNING must know what you are doing

        ["HideUselessGui"] = false,
        ["Blur_username"] = false,
        ["Blazing_Lion_Log"] = false,
        ["DiscordId"] = "123456",
        ["Webhook"] = "",
        ["LegendaryWebhook"] = "https://discord.com/api/webhooks/1474074467016773632/gQjRBOToQYsa9XOPC6e70wTBYgF0UF3y_BmPoc7DJOxeuR4NCj_OWIY8r17CqL3REMa7",
        ["NeonMegaWebhook"] = "",
    }
    loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/66567bfd337b57eb059b58dbe1badb89.lua"))()
end)
