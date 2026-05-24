script_key = "kaZUiYzAccthgeUoIbkrBQloWmGBnhWJ";
getgenv().PetSimulator99 = {
    AutoRankFirst = false,
    Rank = 9,
    Rebirth = 9,
    BuyEggSlots = 99,
    BuyPetSlots = 99,
    MaxUpgradePrice = 1000000,
    MaxZone = 270,
    EquipEnchantsForRankUp = {"Coins","Coins","Criticals","Strong Pets"},
    RankAndRebirthWebhookUrl = "",
    UseUltraMasteryXPPotion = "Pets",
    UseLootbox = {"Hype Egg 2", "Slime Gift"},
    OpenGiftBags = true,

    EquipEnchants = {"Tap Power","Tap Power","Criticals","Strong Pets"},
    UsePotions = {"Damage", "Coins", "Lucky", "Treasure Hunter"},

    MailConfig = {
        ["All Huges"] = {Class = "Pet", MinAmount = 1},
        ["Spring Pink Rose Token"] = {Class = "Misc", MinAmount = 150000},
        ["Spring Red Tulip Token"] = {Class = "Misc", MinAmount = 150000},
        ["Spring Bluebell Token"] = {Class = "Misc", MinAmount = 150000},
    },
    MaxMailPrice = 10000,
    MailUser = {"ihy4rk"},
    KeepHuges = 1,

    DiscordId = "",
    ShowPingInGlobalWebhook = false,
    WebhookUrl = "https://discord.com/api/webhooks/1508068762111184998/EBj0SdnrUmeYeXGOeTfCuiOhBc8vFc4jEuD5AkqQMOu2X3dKUugUDT3mOHoe6_5JReTl",

    World = 1,
    Fps = 0,

    --event
    UseDice = {"Lucky Dice V2", "Lucky Dice II V2", "Mega Lucky Dice V2", "Mega Lucky Dice II V2"},
    RngUpgrades = {
        RNGHugeLuck = {MaxTier = 999},
        RNGEggLuck = {MaxTier = 999},
        RNGHatchSpeed = {MaxTier = 999},
        RNGBonusLuck = {MaxTier = 999},
        RNGExtraEgg = {MaxTier = 999},
    },
    CraftToDice = {
        "Lucky Dice II V2",
        "Lucky Dice III V2",
        "Mega Lucky Dice V2",
        "Mega Lucky Dice II V2",
        "Fire Dice V2",
    },
    CraftDiceAmount = "Max", -- can 1,2,3... 
    KeepPets = 15, --if u have huges u can 1
    WaitBonusRollForUseMegaDice = true, -- wait bonus roll for use Mega Lucky Dice II V2
    DiceLimitInInventory = {
        ["Mega Lucky Dice V2"] = 10,
        ["Mega Lucky Dice II V2"] = 10,
    },
    WaitComboForUseMegaDice = 5000,
}
loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/fc4697b9d225539da838fc74ae83aac4.lua"))()
