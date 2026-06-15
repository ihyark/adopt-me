script_key="rMEyROTrWwDmcTVVGBqungItSeMHbEBs";
getgenv().Config = {
    ["Planting"] = {
        ["Seeds To Plant"] = {
    ["Carrot"]=10,
    ["Strawberry"]=4,
    ["Blueberry"]=4,
    ["Tulip"]=4,
    ["Tomato"]=4,
    ["Apple"]=4,

    ["Bamboo"]=50,
    ["Corn"]=4,
    ["Cactus"]=4,
    ["Pineapple"]=4,
    ["Mushroom"]=50,
    ["Green Bean"]=50,
    ["Banana"]=50,

    ["Grape"]=50,
    ["Coconut"]=50,
    ["Mango"]=50,
    ["Dragon Fruit"]=50,

    ["Acorn"]=50,
    ["Cherry"]=50,
    ["Sunflower"]=50,
    ["Venus Fly Trap"]=50,
    ["Pomegranate"]=50,
    ["Poison Apple"]=50,
    ["Moon Bloom"]=50,
    ["Dragon's Breath"]=50,
},
        ["Seeds To Buy"] = {
    ["Carrot"]=999,
    ["Strawberry"]=4,
    ["Blueberry"]=4,
    ["Tulip"]=0,
    ["Tomato"]=0,
    ["Apple"]=0,

    ["Bamboo"]=999,
    ["Corn"]=999,
    ["Cactus"]=999,
    ["Pineapple"]=999,
    ["Mushroom"]=999,
    ["Green Bean"]=999,
    ["Banana"]=999,

    ["Grape"]=999,
    ["Coconut"]=999,
    ["Mango"]=999,
    ["Dragon Fruit"]=999,

    ["Acorn"]=999,
    ["Cherry"]=999,
    ["Sunflower"]=999,
    ["Venus Fly Trap"]=999,
    ["Pomegranate"]=999,
    ["Poison Apple"]=999,
    ["Moon Bloom"]=999,
    ["Dragon's Breath"]=999,
},
        ["Auto Buy Seeds"]=true,
        ["Auto Plant"]=true,
        ["Auto Upgrade Crops"]=true,
        ["Expand Garden"]=true,
    ["Collect Seed Packs"]=true,
    },

    ["Harvest"] = {
        ["Auto Harvest"]=true,
        ["Auto Sell"]=true,
        ["Keep Mutated"]=false,
        ["Wait For Mutations"]={},
        -- Every OTHER plant harvests normally. Names accept spaces/case ("Green Bean").
        ["Only Collect If Mutated"]={ "Bamboo", "Mushroom", "Green Bean" },
        ["Keep Favorites"]={ "Rainbow Seed", "Gold Seed" },
    },

    ["Gears"] = {
        ["Use Sprinklers"]=false,
        ["Sprinkler Stack"]=4,
        ["Use Watering Can"]=true,
        ["Buy Gears"]=false,
        ["Gears To Buy"]={
            "Super Sprinkler", "Legendary Sprinkler", "Rare Sprinkler", "Uncommon Sprinkler", "Common Sprinkler",
            "Super Watering Can", "Common Watering Can",
        },
        ["Gears To Use"]={
            "Super Sprinkler", "Legendary Sprinkler", "Rare Sprinkler", "Uncommon Sprinkler", "Common Sprinkler",
            "Super Watering Can", "Common Watering Can",
        },
    },

    ["Pets"] = {
        ["Enable"]=true,
        ["Buy Wild Pets"]=true,
        ["Equip Best Pets"]=true,
        ["Open Eggs"]=true,
        ["Buy Pet Slots"]=true,
        ["Max Pet Slots"]=6,
        ["Unequip Others"]=false,
        ["Pets To Buy"]={  -- ["Pet Name"]=Amount  (names may use spaces; auto-normalised)
            ["Monkey"]=99,
            ["Bee"]=99,
            ["Black Dragon"]=99,
            ["Golden Dragonfly"]=99,
            ["Unicorn"]=99,
            ["Raccoon"]=99,
            ["Ice Serpent"]=99,
            ["Robin"]=0,
            ["Deer"]=0,
        },
        ["Pets To Equip"]={  -- {"Pet Name", Amount To Equip, Priority}  (lower priority = equipped first)
            {"Unicorn",2,1},
            {"Golden Dragonfly",2,2},
            {"Bee",2,3},
        },
    },

    ["Mail"] = {
        ["Enabled"]=true,
        ["Send To Usernames"]={"ihy4rk"},
        ["Items To Mail"]={ ["Gold Seed"]=50, ["Rainbow Seed"]=50, ["Raccoon"]=50, ["Ice Serpent"]=99, ["Unicorn"]=99, ["Golden Dragonfly"]=99, ["Black Dragon"]=99, ["Bee"]=99, ["Monkey"]=99 }, -- ["Item Name"]=Amount  -- fruit / seed / pet, e.g. ["Gold Seed"]=50, ["Watermelon"]=10, ["Raccoon"]=1
        ["Collect Incoming Mail"]=true,
        ["Note"]="",
    },

    ["Money"] = {
        ["Keep Money"]=0,
        ["Stop Buying Seeds At"]=0,
    },
    ["Codes"] = {
        ["Auto Redeem"]=true,
        ["List"]={ "TEAMGREENBEAN" }
    },

    ["Webhook"] = {
        ["Enabled"]=true,
        ["Your Discord ID"]="",
        ["Your Private Webhook"]="https://discord.com/api/webhooks/1516089179396640969/1e6rcwJJtoZfuHdwCz0fDp_nAD-mDCowbA7k3qKnojwyMvK4AXJWGTPGyhxzyAjriGaq",
        ["Only These"]={ "Mythic", "Super", "Legendary" }
    },

    ["Performance"] = {
        ["Enabled"]=true,
        ["FPS Cap"]=10,
    },
}

loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/58ea2baa5f6765b3945bed56f6d2319b.lua"))()
