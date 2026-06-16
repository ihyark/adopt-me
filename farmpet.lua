 getgenv().Config = {
        Dashboard = {
            Enabled = true; -- Enable dashboard features (live stats, etc)
            SyncConfig = true; -- Allow the dashboard to update config in real-time
            GroupName = "GAG2"; -- Group name for organising bots (https://zekehub.com/dashboard/gag2)
        };
        AutoHarvest = {
            Enabled = true; -- Harvest ready fruit/plants
            IgnoreMutated = false; -- Skip harvesting fruit with mutations
            IgnoredMutations = {}; -- Mutation names to skip (e.g. {"Gold", "Rainbow"}, {} = skip all when IgnoreMutated on)
            IgnoreByWeight = false; -- Skip harvesting fruit under a min weight
            MinIgnoreWeight = 0; -- Minimum weight [KG] to ignore when IgnoreByWeight on
        };
        AutoPlant = {
            Enabled = true; -- Plant seeds from inventory
            Mode = "All"; -- "All" = plant any seed, "Selected" = only Plants list
            Plants = {}; -- Seed names to plant when Mode = "Selected" (e.g. {"Carrot", "Strawberry"})
            Ignore = {"Rainbow", "Gold", "Strawberry", "Blueberry", "Moon Bloom", "Dragon's Breath"}; -- Seed names to NEVER plant, applies in any mode (e.g. {"Rainbow", "Beanstalk"})
        };
        AutoBuySeeds = {
            Enabled = true, -- Buy seeds from the seed shop
            Mode = "All"; -- "All" = buy any in-stock seed, "Selected" = only Seeds list
            Seeds = {}; -- Seed names to buy when Mode = "Selected"
        };
        AutoBuyGears = {
            Enabled = false; -- Buy gears from the gear shop
            Mode = "All"; -- "All" = buy any in-stock gear, "Selected" = only Gears list
            Gears = {}; -- Gear names to buy when Mode = "Selected" (e.g. {"Watering Can"})
        };
        AutoBuySlot = {
            Enabled = false; -- Auto buy garden plot expansions when affordable
        };
        AutoBuyPets = {
            Enabled = false; -- Tame/buy wild pets that spawn
            Pets = {}; -- Pet names/keys to buy (e.g. {"Dog", "Cat"})
        };
        AutoEventSeeds = {
            Enabled = false; -- Collect event seed spawns (gold/rainbow)
            Types = {}; -- Seed types to collect (e.g. {"Gold", "Rainbow"})
        };
        WipePlot = {
            Enabled = false; -- Shovel/remove selected plants from your plot
            Plants = {}; -- Seed names to wipe (e.g. {"Carrot"})
        };
        AutoFavorite = {
            Enabled = false; -- Auto favorite fruit matching checks
            Checks = {}; -- Which checks to use (e.g. {"Weight", "Mutation", "Sell Price"})
            Mutations = {}; -- Mutations to favorite when Mutation check on ({} or {"Any"} = any mutation)
            MinWeight = 100; -- Min weight [KG] when Weight check on
            MinSellPrice = 1000; -- Min sell price [$] when Sell Price check on
        };
        AutoSell = {
            Enabled = false; -- Auto sell fruit
            Mode = "Inventory"; -- "Inventory" = sell all (minus favorites/blacklist), "Selected" = only Fruits list
            Fruits = {}; -- Fruit names to sell when Mode = "Selected" (e.g. {"Carrot"})
            BlacklistChecks = {}; -- Protect-from-sell checks (e.g. {"Weight", "Mutation", "Sell Price"})
            BlacklistMutations = {}; -- Mutations to protect ({} or {"Any"} = any mutation)
            BlacklistMinWeight = 100; -- Min weight [KG] to protect when Weight blacklist check on
            BlacklistMinSellPrice = 1000; -- Min sell price [$] to protect when Sell Price blacklist check on
        };
        AutoMail = {
            Enabled = false; -- Mail items to one or more usernames
            ClaimMail = false; -- Auto claim incoming mail rewards
            Recipients = {}; -- list of { Username = "player1"; Items = {"Seed: Carrot"}; ItemCounts = {10}; }
        };
        Settings = {
            ShowOverlay = true; -- show in-game overlay with stats and info
            AutoCenter = false; -- Puts your character in the center of your plot repeatedly
            FPSCap = 10; -- set fps cap
        };
    };
getgenv().scriptkey="pItekpTueNoKljDhicKRIqdJFsoZfYcK"
loadstring(game:HttpGet("https://zekehub.com/scripts/GAG2/Main.lua"))()
