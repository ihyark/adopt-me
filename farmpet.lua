script_key = "rMEyROTrWwDmcTVVGBqungItSeMHbEBs"   -- drop your Luarmor key in here

getgenv().GAG2Config = {
    ["FPS Cap"] = 10,

    ["Pets To Buy"] = {  -- name = how many
        ["BlackDragon"]     = 99,
        ["GoldenDragonfly"] = 99,
        ["Unicorn"]         = 99,
        ["Raccoon"]         = 99,
        ["IceSerpent"]      = 99,
        ["Robin"]           =  3,
        ["Deer"]            =  2,
    },
    ["Pets To Equip"] = {  -- { name, slots, order }
        { "Unicorn",          5, 1 },
        { "GoldenDragonfly", 10, 2 },
        { "Robin",            3, 3 },
        { "Deer",             2, 4 },
    },

    ["Seeds To Plant"] = {  -- name = how many to grow
        ["Carrot"]          =  10,
        ["Strawberry"]      =   1,
        ["Blueberry"]       =   1,
        ["Tulip"]           =  20,       
        ["Bamboo"]          = 200,    
        ["Mushroom"]        = 200,
        ["Green Bean"]      = 200,       
        ["Sunflower"]       =  50,
        ["Venus Fly Trap"]  =  50,
        ["Pomegranate"]     =  50,
        ["Poison Apple"]    =  50,    
    },
    ["Seeds To Buy"] = {  -- name = how many to keep stocked
        ["Moon Bloom"]      = 9999,
        ["Dragon's Breath"] = 9999,
        ["Mushroom"]        = 9999,
        ["Venus Fly Trap"]  = 9999,
        ["Sunflower"]       = 9999,
        ["Bamboo"]          = 9999,
        ["Pomegranate"]     = 9999,        
        ["Poison Apple"]    = 9999,        
        ["Tulip"]           = 9999,        
        ["Blueberry"]       =    1,
        ["Strawberry"]      =    1,
		["Carrot"]          =   10,
		["Green Bean"]      =  200,
    },

    ["Harvest Only If Mutated"] = {
		"Bamboo",
    	"Mushroom",
    },
    ["Favourite Fruit"]         = {},
    ["Sell Delay"]              = 20,
    ["Auto Bargain"]            = true,
    ["Expand Plot"]             = true,
    ["Plant Cap"]               = 125,  -- 0 = unlimited
    ["Stop Money Cap"]          = 40000000,
    ["Gears To Use"] = {
        ["Common Sprinkler"]    = 4,
        ["Rare Sprinkler"]      = 2,
        ["Super Sprinkler"]     = 2,
        ["Common Watering Can"] = 5,
    },
    ["Sprinklers To Use"] = {  -- best-first
        "Super Sprinkler",
        "Legendary Sprinkler",
        "Rare Sprinkler",
        "Common Sprinkler",
    },
    ["Watering Cans To Use"] = {  -- best-first; empty to disable
        "Super Watering Can",
        "Common Watering Can",
    },

    -- mailing
    ["Mail To Username"] = {
		"ihy4rk",
    },
    ["Mail Items"]       = {
		["BlackDragon"]     = 1,
   		["GoldenDragonfly"] = 1,
    	["Unicorn"]         = 1,
    	["Raccoon"]         = 1,
    	["IceSerpent"]      = 1,
    	["Moon Bloom"]      = 1,
    	["Dragon's Breath"] = 1,
    	["Rainbow"]         = 1,
    },  
    ["Collect Mail"]     = true,

    -- discord
    ["Webhook Pet Names"]      = {},  -- blank = every pet
    ["Webhook Pet Rarities"]   = { "Mythic", "Super", "Secret" },
    ["Webhook URL"]            = "https://discord.com/api/webhooks/1516089179396640969/1e6rcwJJtoZfuHdwCz0fDp_nAD-mDCowbA7k3qKnojwyMvK4AXJWGTPGyhxzyAjriGaq",
    ["Discord ID"]             = "",
    ["Webhook Note"]           = "",
    ["Show Public Discord ID"] = false,  -- public ping only (name/JobId never posted publicly)
    ["Show Webhook Username"]  = true,
    ["Show Webhook JobId"]     = false,
}

loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/ac1a4db4a5a88c65086dd5891742e237.lua"))()
