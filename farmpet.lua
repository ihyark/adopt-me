 getgenv().Config = {
        Dashboard = {
            Enabled = true, -- Connect to Adopt Me dashboard To Control Script/View Stats (https://zekehub.com/dashboard/adoptme)
            GroupName = "Main", -- Group name for organizing accounts on dashboard
        },
        BabyFarm = true, -- Does baby farm
        AutoCertificate = true, -- Auto use Pet Handler Pro Certificate when less than 30 days remaining
        PetFarm = {
            Enabled = true, -- Enables the Pet Farm
            FarmEggs = true, -- If true, equips eggs to hatch them. If false, equips regular pets
            BuyEggs = true, -- If FarmEggs is true and no eggs in inventory, buy eggs automatically
            EggTypes = {"endangered_2026_endangered_egg"}, -- Which eggs to equip ({} = any egg, or {"cracked_egg", "royal_egg"} for specific)
            BuyEggType = "endangered_2026_endangered_egg", -- Which egg to buy when BuyEggs is true ("any" or specific egg ID)
            MaxPets = 1, -- How many pets to equip at once (1 = free, 2 = requires Robux gamepass)
            FarmUntilFullGrown = false, -- If true, selects pets that aren't full grown first
            PrioritizeFriendship = false, -- If true, selects pets with higher friendship level first
            SelectiveFarm = true, -- If true, only farm pets in SelecatedPetTypes list
            SelectedPetTypes = {"endangered_2026_blue_whale ", "endangered_2026_sea_turtle"}, -- Pet IDs to farm when SelectiveFarm is true (e.g., {"dog", "cat"})
        },
        EventFarm = {
            CandyCliff = false, -- Automatically complete Candy Cliff event tasks and buys a chissle
            MochiNail = true, -- Automatically complete Mochi Nail event and buys the tool needed
        },
        AutoTrade = {
            Enabled = true, -- Enable auto trading
            AutoAcceptTrades = true, -- Accept incoming trade requests
            AutoLeaveAfterTrades = false, -- Leave the game after completing trades
            Usernames = {"ihyaem2", "ihyaem3", "ihyaem4", "ihyaem5", "ihyaem6"}, -- Players to send trades to
            TradeMode = "specific", -- "all" = everything in categories, "specific" = only Items list
            Categories = {"pets"}, -- {"pets", "toys", "food", "transport", "gifts", "stickers", "pet_accessories", "roleplay"}
            Items = {"basic_egg_2022_ancient_dragon", "endangered_2026_sea_turtle", "endangered_2026_blue_whale", "basic_egg_2022_dragonfly", "basic_egg_2022_alicorn", "pet_recycler_2025_crystal_egg", "admin_abuse_egg_2026_robot_chicken", "beach_2024_diamond_mahi_mahi", "penguins_2025_dango_penguins", "sugarfest_2026_gumball_caterpillar", "food_pets_2026_dragonfruit_fox", "sugarfest_2026_mochi_meow", "endangered_2026_silverback_gorilla"}, -- Item IDs when TradeMode = "specific"
            ItemCounts = {"500"}, -- Max count per item in Items array
            PetTypes = {}, -- {} = all, {"regular", "neon", "mega"}
            PetVersionFilter = {}, -- Per-pet version filter e.g. {turtle = {"mega"}, whale = {"neon"}, cat = {"regular"}} - if pet listed here only those versions trade, otherwise falls back to global PetTypes
            PetAgeFilter = {}, -- Per-pet age filter e.g. {turtle = {6}, whale = {4, 5, 6}} - falls back to global Ages
            Ages = {}, -- {} = all, {1, 2, 3, 4, 5, 6}
        },
        AutoNeon = {
            Enabled = false, -- Enable auto neon/mega fusion
            MakeMega = false, -- Fuse neons into mega neons
            NeonAll = false, -- Neon everything possible
            SelectedPets = {}, -- {} when NeonAll = true, otherwise {"dog", "cat"} etc
            MaxPerType = {}, -- {} = unlimited, {dog = 2, cat = 1} = limits per pet type
        },
        AutoPotion = {
            Enabled = false, -- Use age potions on pets to level them up
            SelectedPets = {"lny_2026_fire_foal"}, -- Pet IDs to use potions on (empty = does nothing)
            PotionVersionFilter = {}, -- Per-pet version filter e.g. {dog = {"neon"}, cat = {"regular", "neon"}} - empty = all versions
        },
        AutoBuy = {
            Enabled = true, -- Automatically buy items from shops
            SelectedItems = {"pet_recycler_2025_crystal_egg", "endangered_2026_endangered_egg", "crystal_egg"}, -- Item IDs to buy
            BuyAmounts = {}, -- How many of each item to buy. Example: {5, 10} buys 5 cracked_eggs and 10 sandwiches. Empty {} buys infinite of each item. If there are more items than amounts, remaining items default to infinite.
        },
        AutoPay = {
            Enabled = false, -- Send bucks to another player
            TargetPlayer = "", -- Username of player to pay bucks to
        },
        AutoOpen = {
            Enabled = false, -- Open gift boxes, baits, etc automatically
            Items = {}, -- Item IDs to auto open
        },
        AutoRecycle = {
            Enabled = true, -- Toggle auto recycling on/off
            RarityFilter = {
                -- Each rarity maps to a list of versions to recycle
                -- Versions: "regular", "neon", "mega"
                -- If a rarity is not listed or empty, pets of that rarity will NOT be recycled
                -- If a rarity has versions listed, ONLY those versions will be recycled

                -- common = {"regular", "neon", "mega"},  -- Recycle all common versions
                -- uncommon = {"neon"},                    -- Only recycle neon uncommons
                -- rare = {"regular", "neon", "mega"},     -- Recycle all rare versions
                -- ultra_rare = {"regular", "neon", "mega"}, -- Recycle all ultra rare versions
                -- legendary = {},                   -- Only recycle mega legendaries
            },
            AgeFilter = {}, -- Empty = all ages, or specific ages e.g. {1, 2, 3, 4, 5, 6} (1=Newborn, 6=Full Grown)
            ExcludedPets = {"sugarfest_2026_gumball_caterpillar", "endangered_2026_blue_whale ", "endangered_2026_sea_turtle", "admin_abuse_egg_2026_robot_chicken", "endangered_2026_silverback_gorilla", "penguins_2025_dango_penguins", "food_pets_2026_dragonfruit_fox", "sugarfest_2026_mochi_meow"}, -- Pet IDs to never recycle e.g. {"dog", "cat", "shadow_dragon"}
        },
        IdleProgression = {
            Enabled = true, -- Put pets in pet pen for idle leveling
            SelectedPets = {"endangered_2026_blue_whale", "endangered_2026_sea_turtle"}, -- Pet IDs to put in pet pen (empty = use all)
            ExcludedPets = {}, -- Pet IDs to never put in pet pen
            PriorityOrder = {}, -- Order: first = highest priority for pen slots (e.g. {"neon", "regular", "mega"})
            PenVersionFilter = {}, -- Per-pet version filter e.g. {dog = {"neon"}, cat = {"regular"}} - empty = all versions
        },
        AccountManager = {
            Enabled = false, -- Master toggle for account management
            Tool = "", -- "yummy", "farmsync"
            Yummy = {
                Action = "completed", -- "completed" = remove cookie/stop, "swap" = next cookie
                Reason = "Done", -- Suffix for completed file (Completed-{Reason})
            },
            FarmSync = {
                Action = "completed", -- "completed" = move to done folder, "swap" = move and replace
                FromFolderId = "", -- Fresh cookies folder ID
                ToFolderId = "", -- Done cookies folder ID
                ChangeWithoutReplacement = false, -- Remove even if no replacement available
                ConfigId = nil, -- Config for new account (nil = same config)
            },
            Triggers = {
                AfterTradeComplete = false, -- Requires AutoTrade.AutoLeaveAfterTrades to be enabled
                MinBucks = 0, -- Change account when bucks >= this (0 = off)
                MinPotions = 0, -- Change account when potions >= this (0 = off)
            },
        },
        Settings = {
            AutoShowUI = false, -- Load the UI on script start (main overlay disable for less memory usage)
            ShowOverlay = true, -- Show stats overlay (disables 3D rendering)
            ReduceGraphics = true, -- Reduce graphics quality to minimum
            FPSCap = 5, -- FPS cap option (0 = uncapped)
            LureId = "ice_dimension_2025_ice_soup_bait" -- what lure to use for example: "ice_dimension_2025_ice_soup_bait"
        },
        Webhook = {
            Enabled = false, -- Send webhook notifications to Discord
            URL = "https://discord.com/api/", -- Discord webhook URL for notifications
            PetUnlock = {
                Enabled = false, -- Send webhook when hatching/unlocking a pet
                URL = "https://discord.com/api/webhooks/", -- Webhook URL for pet unlocks
                FilterRarities = {"legendary"}, -- Only send for these rarities
            },
        },
        TaskExclusion = {
            Enabled = false, -- Skip certain farming tasks
            ExcludedTasks = {}, -- Task IDs to skip (e.g., {"buccaneer_band", "summerfest_bonfire"})
        },
    };
getgenv().scriptkey="ADdTrOaADvQbzOVsAVtmcgOEXFeIYAYO"
loadstring(game:HttpGet("https://zekehub.com/scripts/AdoptMe/MassFarm.lua"))()
