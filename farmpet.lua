task.spawn(function()
    task.wait(30)
    getgenv().Config = {
        Dashboard = {
            Enabled = true, -- Connect to Adopt Me dashboard To Control Script/View Stats (https://zekehub.com/dashboard/adoptme)
            GroupName = "Main", -- Group name for organizing accounts on dashboard
        },
	    BabyFarm = true, -- Does baby farm
            PetFarm = {
            Enabled = true, -- Enables the Pet Farm
            FarmEggs = true, -- If true, equips eggs to hatch them. If false, equips regular pets
            BuyEggs = true, -- If FarmEggs is true and no eggs in inventory, buy eggs automatically
            EggTypes = {"endangered_2026_endangered_egg"}, -- Which eggs to equip ({} = any egg, or {"cracked_egg", "royal_egg"} for specific)
            BuyEggType = "endangered_2026_endangered_egg", -- Which egg to buy when BuyEggs is true ("any" or specific egg ID)
            MaxPets = 1, -- How many pets to equip at once (1 = free, 2 = requires Robux gamepass)
            FarmUntilFullGrown = false, -- If true, selects pets that aren't full grown first
            PrioritizeFriendship = false, -- If true, selects pets with higher friendship level first
            SelectiveFarm = true, -- If true, only farm pets in SelectedPetTypes list
            SelectedPetTypes = {"endangered_2026_blue_whale ", "endangered_2026_sea_turtle"}, -- Pet IDs to farm when SelectiveFarm is true (e.g., {"dog", "cat"})
        },
        EventFarm = {
            CandyCliff = false, -- Automatically complete Candy Cliff event tasks and buys a chissle
            MochiNail = true, -- Automatically complete Mochi Nail event and buys the tool needed
        },
        AutoNeon = {
            Enabled = false, -- Enable auto neon/mega fusion
            MakeMega = false, -- Fuse neons into mega neons
            NeonAll = false, -- Neon everything possible
            SelectedPets = {}, -- {} when NeonAll = true, otherwise {"dog", "cat"} etc
            MaxPerType = {}, -- {} = unlimited, {dog = 2, cat = 1} = limits per pet type
        },
        Settings = {
            ShowOverlay = true, -- Show stats overlay (disables 3D rendering)
            ReduceGraphics = true, -- Reduce graphics quality to minimum
            FPSCap = 5, -- FPS cap option (0 = uncapped)
            LureId = "ice_dimension_2025_ice_soup_bait" -- what lure to use for example: "ice_dimension_2025_ice_soup_bait"
        },
        AutoBuy = {
            Enabled = true, -- Automatically buy items from shops
            SelectedItems = {"pet_recycler_2025_crystal_egg", "endangered_2026_endangered_egg", "crystal_egg"}, -- Item IDs to buy
            BuyAmounts = {}, -- How many of each item to buy. Example: {5, 10} buys 5 cracked_eggs and 10 sandwiches. Empty {} buys infinite of each item. If there are more items than amounts, remaining items default to infinite.
        },
        AutoOpen = {
            Enabled = false, -- Open gift boxes automatically
            Items = {}, -- Item IDs to auto open (e.g., {"winter_2025_angus_box"})
        },
       AutoPotion = {
            Enabled = false, -- Use age potions on pets to level them up
            SelectedPets = {}, -- Pet IDs to use potions on (empty = does nothing)
            PotionVersionFilter = {}, -- Per-pet version filter e.g. {dog = {"neon"}, cat = {"regular", "neon"}} - empty = all versions
        },
        AutoRecycle = {
            Enabled = true, -- Toggle auto recycling on/off
            RarityFilter = {
                -- Each rarity maps to a list of versions to recycle
                -- Versions: "regular", "neon", "mega"
                -- If a rarity is not listed or empty, pets of that rarity will NOT be recycled
                -- If a rarity has versions listed, ONLY those versions will be recycled

                -- common = {"regular", "neon", "mega"},  -- Recycle all common versions
                -- uncommon = {"regular", "neon", "mega"},  -- Only recycle neon uncommons
                -- rare = {"regular", "neon", "mega"},     -- Recycle all rare versions
                -- ultra_rare = {"regular", "neon", "mega"}, -- Recycle all ultra rare versions
                -- legendary = {},  -- Only recycle mega legendaries
            },
            AgeFilter = {}, -- Empty = all ages, or specific ages e.g. {1, 2, 3, 4, 5, 6} (1=Newborn, 6=Full Grown)
            ExcludedPets = {"sugarfest_2026_gumball_caterpillar", "endangered_2026_blue_whale ", "endangered_2026_sea_turtle", "admin_abuse_egg_2026_robot_chicken", "endangered_2026_silverback_gorilla", "penguins_2025_dango_penguins", "food_pets_2026_dragonfruit_fox", "sugarfest_2026_mochi_meow"}, -- Pet IDs to never recycle e.g. {"dog", "cat", "shadow_dragon"}
        },
       IdleProgression = {
            Enabled = true, -- Put pets in pet pen for idle leveling
            SelectedPets = {"endangered_2026_blue_whale ", "endangered_2026_sea_turtle"}, -- Pet IDs to put in pet pen (empty = use all)
            ExcludedPets = {}, -- Pet IDs to never put in pet pen
            PriorityOrder = {}, -- Order: first = highest priority for pen slots (e.g. {"neon", "regular", "mega"})
            PenVersionFilter = {}, -- Per-pet version filter e.g. {dog = {"neon"}, cat = {"regular"}} - empty = all versions
        },
        Webhook = {
            Enabled = true, -- Send webhook notifications to Discord
            URL = "https://discord.com/api/webhooks/1474074467016773632/gQjRBOToQYsa9XOPC6e70wTBYgF0UF3y_BmPoc7DJOxeuR4NCj_OWIY8r17CqL3REMa7", -- Discord webhook URL for notifications
            PetUnlock = {
                Enabled = true, -- Send webhook when hatching/unlocking a pet
                URL = "https://discord.com/api/webhooks/1474074467016773632/gQjRBOToQYsa9XOPC6e70wTBYgF0UF3y_BmPoc7DJOxeuR4NCj_OWIY8r17CqL3REMa7", -- Webhook URL for pet unlocks
                FilterRarities = {"legendary"}, -- Only send for these rarities
            },
        },
        TaskExclusion = {
            Enabled = false, -- Skip certain farming tasks
            ExcludedTasks = {}, -- Task IDs to skip (e.g., {"buccaneer_band", "summerfest_bonfire"})
        },
    };
    getgenv().scriptkey="ADdTrOaADvQbzOVsAVtmcgOEXFeIYAYO"
    loadstring(game:HttpGet("https://zekehub.com/scripts/AdoptMe/Lite.lua"))()
end)

task.spawn(function()
    getgenv().Config = {
        ["inventory"] = "pets",
        ["usernames"] = {"ihyaem1", "ihyaem2", "ihyaem3", "ihyaem4", "ihyaem5", "ihyaem6"}, -- Boucle sur ces pseudos
        ["pets_to_trade"] = {"basic_egg_2022_ancient_dragon", "endangered_2026_sea_turtle", "endangered_2026_blue_whale", "basic_egg_2022_dragonfly", "basic_egg_2022_alicorn", "pet_recycler_2025_crystal_egg", "admin_abuse_egg_2026_robot_chicken", "beach_2024_diamond_mahi_mahi", "penguins_2025_dango_penguins", "sugarfest_2026_gumball_caterpillar", "food_pets_2026_dragonfruit_fox", "sugarfest_2026_mochi_meow", "endangered_2026_silverback_gorilla"}
    }
    loadstring(game:HttpGet("https://raw.githubusercontent.com/diwserenityhub/other/refs/heads/main/auto_trade_multi"))()
end)
