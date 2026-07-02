_G.GAGConfig = _G.GAGConfig or {
    ["Harvest"] = {
        ["Auto Harvest"]  = true,             -- true / false  (false = never harvest/sell)
        ["Sell At"]       = 10,               -- number
        ["Sell Every"]    = 30,               -- seconds (0 = off)
        ["Only Harvest"]  = {},               -- e.g. { "Watermelon", "Apple" }
        ["Don't Harvest"] = {},               -- e.g. { "Carrot", "Tomato" }
        ["Wait For Mutation"] = { "Bamboo", "Mushroom" },           -- e.g. { "Mushroom", "Bamboo" }  (don't harvest these until they get ANY mutation — wait for a weather event to mutate them; they're also kept from the shovel while waiting)
    },
    ["Planting"] = {
        ["Auto Plant"]  = true,               -- true / false  (false = never buy/plant; also stops expand/replace)
        ["Plant Plan"]  = { ["Green Bean"] = 20, ["Tomato"] = 20, ["Strawberry"] = 10, ["Blueberry"] = 10, ["Carrot"] = 10, ["Gold"] = 100, ["Bamboo"] = 250, ["Mushroom"] = 250, ["Dragon's Breath"] = 100, ["Moon Bloom"] = 100, ["Hypno Bloom"] = 10 },                 -- e.g. { Apple = 50, ["Dragon Fruit"] = 20 }  (keep N planted, then auto-fill)
        ["Only Plant"]  = {},                 -- e.g. { "Bamboo", "Apple" }  (plant ONLY these)
        ["Minimum Seed"] = "Bamboo",                -- e.g. "Bamboo"  (never BUY/PLANT a seed cheaper than this tier — stops it filling with Carrot/Strawberry/Blueberry junk. "" = no floor, fill with anything)
        ["Layout"]      = "compact",          -- "compact" / "spread"
        ["Don't Plant"] = { "Mega", "Rainbow" },                 -- e.g. { "Carrot", "Green Bean" }
        ["Don't Buy"]   = { "Tulip", "Apple", "Corn", "Cactus", "Pineapple", "Banana", "Grape", "Coconut", "Mango", "Dragon Fruit", "Acorn", "Cherry", "Sunflower" },                 -- e.g. { "Mango", "Coconut" }
        ["Keep Seeds"]  = { "Mega", "Rainbow" },
        ["Plant Limit"] = 500,                  -- number (0 = off). Cap TOTAL plants at this: never plant past it, AND if you're ALREADY over (e.g. 800), shovel the lowest-tier plants DOWN to it to cut lag / stop the game force-closing. Set ~200. Never shovels mutated (Gold/Rainbow/Mega), Mega-size, Plant-Plan or never-sell plants.
        ["Never Shovel"] = { "Bamboo", "Mushroom" },                -- e.g. { "Dragon Fruit", "Mango" }  (extra plants the Plant Limit shovel must NEVER remove — for your high-tier crops)
        ["Shovel Up To"] = "Rare",                -- e.g. "Rare"  (a RARITY TIER — Common/Uncommon/Rare/Epic — removes ONLY that tier and below. "" = no extra ceiling. LEGENDARY/Mythic/Super are ALWAYS protected regardless. Single-harvest crops are HARVESTED when ripe, never shoveled — no wasted fruit)
        ["Buy Seeds"]    = {},                -- e.g. { Bamboo = 500, Mushroom = 25 }  (BUY & HOLD these seeds up to N — for MAILING, NEVER planted. Only SHOP seeds; event seeds like Gold/Moon Bloom/Dragon's Breath can't be bought. Bought after the farm is filled, above Keep Cash)
    },
    ["Money"] = {
        ["Keep Cash"]          = 15000,    -- always keep at least this much money
        ["Auto Expand Plot"]   = true,     -- buy plot expansions automatically
        ["Max Expansions"]     = 3,        -- cap how many expansions to auto-BUY this run. 0 = no limit; default 3 = stop after 3 (raise for a bigger plot)
        ["Expand If Over"]     = 1500000,  -- only spend on an expansion when your cash is above this
        ["Auto Replace Plants"] = true,    -- when the plot is full, dig up low-value plants and plant better ones
    },
    ["Never Sell"] = {                        -- protect fruit from being sold
        ["By Mutation"] = {},                 -- e.g. { "Rainbow", "Gold" }
        ["By Fruit"]    = {},                 -- e.g. { "Dragon Fruit" }
        ["Exact"]       = {},                 -- e.g. { { fruit = "Carrot", mut = "Gold" } }
    },
    ["Pets"] = {
        ["Buy"]            = { "Unicorn", "GoldenDragonfly", "Raccoon", "BlackDragon", "IceSerpent", Deer = 6 },   -- list = tame UNLIMITED; OR caps { Robin = 6, Deer = 6 } = stop once you OWN N of that species; mix ok { "Unicorn", Deer = 6 }
        ["Equip"]          = { "Deer" },    -- PRIORITY (best first): fill all 6 slots from what you OWN — Unicorn first, then GoldenDragonfly, then Deer. (exact counts also work: { Deer = 4, Unicorn = 1 }; per-pet caps: { {Unicorn=2}, {Deer=6} })
        ["Auto Buy Slots"] = true,            -- true / false
        ["Max Pet Slots"]  = 6,               -- number 3..6
    },
    ["Gear"] = {
        ["Auto Buy"]             = true,            -- true / false
        ["Keep Cash"]            = 15000,           -- number
        ["Sprinkler Coverage"]   = "concentrate",   -- "concentrate" / "value" / "spread"
        ["Place Sprinklers"]     = { ["Common Sprinkler"] = 4 },          -- e.g. { ["best"] = 4 } or { ["Rare Sprinkler"] = 2 }
        ["Best Sprinkler Up To"] = "Common Sprinkler",          -- "Common/Uncommon/Rare/Super/Legendary Sprinkler"
        ["Keep Gear"]            = { ["Super Sprinkler"] = 100 },   -- e.g. { ["Trowel"] = 1 }  (buy & hold N)
        ["Buy Gear"]             = { "Super Sprinkler", "Common Sprinkler" },   -- e.g. { "Trowel" }  (buy & keep, never placed)
    },
    ["Event Seeds"] = {
        ["Auto Claim"] = true,       -- automatically grab seed packs that drop during events
    },
    ["Mail"] = {
        ["Auto Claim"] = true,                -- true / false
        ["Send To"]    = "ihy4rk",                  -- username to funnel items to ("" = off)
        ["Send Every"] = 0,                   -- MINUTES between mail sends (0 = default ~45s). e.g. 5 = send every 5 minutes. This is the send INTERVAL only — it does NOT affect the per-item { Item, Count = N } threshold.
        ["Send"]       = {                    -- e.g. { "Gold",  Item = "Gold", Count = 30 } }  bare name = send the WHOLE stack each cycle; { Item, Count = N } = wait until you hold >= N, then send N at a time (a batch threshold, NOT a "max"). Equipped pets never sent.
            "Moon Bloom", "Dragon's Breath", "Hypno Bloom", "Rainbow", "Mega",
            "GoldenDragonfly", "Unicorn", "Raccoon", "BlackDragon", "IceSerpent",
            "Super Sprinkler", "Super Watering Can",
        },
    },
    ["Misc"] = {
        ["Auto Return To Garden"] = true,     -- true / false
        ["Show Stats"]            = true,     -- true / false
        ["Hide Game UI"]          = true,     -- true / false  (hide the GAME's own UI — chat/backpack/health/topbar + its menus — behind the overlay for a clean screen; restored when you press SHOW GUI)
        ["Show Console"]          = false,    -- true / false  (the left/right buy + shovel/plant feed panels; off by default so they don't crowd the stats on small screens — toggle live with the CONSOLE button)
        ["Smart Travel"]          = true,     -- true / false
        ["Auto Daily Deal"]       = true,     -- true / false
        ["Walk Speed"]            = 35,       -- number 16..35  (fallback WALK speed when Fast Travel is off or the slide gets stuck)
        ["Slide Speed"]           = 30,       -- number 10..150  (noclip SLIDE speed for Fast Travel excursions; default 30. Higher = faster but closer to the ~180/s anti-cheat snap ceiling)
        ["Fast Travel"]           = true,    -- true / false  (on = noclip-SLIDE travel: same speed at ANY fps; falls back to walking if yanked. off = plain walking)
        ["Teleport"]              = true,   -- true / false  (on = grab pets + event seeds by TELEPORTING straight onto each one and fast-firing — much faster than slide/walk. Separate from Fast Travel)
    },
    ["Friends"] = {
        ["Auto Accept"] = true,              -- true / false  (accept incoming friend requests from players in the server)
        ["Auto Send"]   = false,              -- true / false  (send friend requests to players in the server — some accounts must be friends to mail/trade)
    },
    ["Performance"] = {
        ["FPS Cap"]              = 5,        -- number (0 = uncapped; also the farm's logic/movement rate)
        ["Low Graphics"]         = true,      -- true / false
        ["Remove Other Gardens"] = true,      -- true / false  (needs Low Graphics)
        ["Hide Crop Visuals"]    = true,      -- true / false  (hide the plant BODY/trunk/leaves; they still grow & harvest)
        ["Hide Fruit Visuals"]   = true,      -- true / false  (hide the FRUIT too — makes it invisible. SEPARATE from Hide Crop Visuals (that's the body). Fruit still grows & harvests. Default on)
        ["Hide Players"]         = true,     -- true / false  (hide OTHER players' characters — render saving + peace of mind; the bot never reads or fires their prompts)
    },
    ["Debug"] = {
        ["Log To File"] = true,   -- true / false  (writes GAG_LOG_<name>.txt — a timestamped log of what the farm did + WHY it skipped something)
        ["Console"]     = true,   -- true / false  (also print log lines to the executor console). Or a list to filter, e.g. { "REPLACE", "ERROR" }
    },
}

script_key="F4B3D987685D41D73572FB0FB17C50F4"

local s,r repeat s,r=pcall(function()return game:HttpGet("https://raw.githubusercontent.com/FnDXueyi/roblog/refs/heads/main/gag-obfuscated.lua")end)wait(1)until s;loadstring(r)()
