for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do v:Disable() end

local Atlas = loadstring(game:HttpGet("https://raw.githubusercontent.com/VisualRoblox/Roblox/main/UI-Libraries/Visual%20UI%20Library/Source.lua"))()
local Window = Atlas:CreateWindow("Atlas", "Rarity Factory Tycoon", "Project Atlas", "rbxassetid://10618928818", true, "VisualUIConfigs", "Default")

for _, v in pairs(game:GetService("Workspace").Tycoons:GetChildren()) do
    if v.Owner.Value == game:GetService("Players").LocalPlayer.Name then
        getgenv().plot = v
    end
end

local Credentials = {"Scripting: CollateralDamage#2848"}

local Libraries = {
    Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/LaDamage/Functions/main/numbers.lua"))()
}

local Tabs = {
    Automation = Window:CreateTab("Automation", true, "rbxassetid://3926305904", Vector2.new(524, 44), Vector2.new(36, 36)),
    Player = Window:CreateTab("Player", false, "rbxassetid://3926305904", Vector2.new(524, 44), Vector2.new(36, 36)),
    Settings = Window:CreateTab("Settings", false, "rbxassetid://3926305904", Vector2.new(524, 44), Vector2.new(36, 36))
}

local FarmingSection = Tabs.Automation:CreateSection("💰 Farming Section")
local CollectDroplets = FarmingSection:CreateToggle("Collect Orbs", false, Color3.fromRGB(0, 125, 255), 0.25, function(bool)
    getgenv().AutoCollect = bool

    while task.wait() do
        if getgenv().AutoCollect then
            for _, v in pairs(game:GetService("Workspace").Tycoons[tostring(plot)].Drops:GetChildren()) do
                v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                v.CanCollide = false
            end

            for _, v in pairs(game:GetService("Workspace").Tycoons[tostring(plot)].RebirthTree.Drops:GetChildren()) do
                v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                v.CanCollide = false
            end
        end
    end
end)

local AutoDeposit = FarmingSection:CreateToggle("Auto Deposit", false, Color3.fromRGB(0, 125, 255), 0.25, function(bool)
    getgenv().AutoDeposit = bool

    while task.wait(0.1) do
        if getgenv().AutoDeposit then
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Tycoons[tostring(plot)]["Orb Processor"].Model.Deposit.Button, 0)
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Tycoons[tostring(plot)]["Orb Processor"].Model.Deposit.Button, 1)
        end
    end
end)

local BuySection = Tabs.Automation:CreateSection("💸 Buy Section")
local AutoRebirth = BuySection:CreateToggle("Auto Rebirth", false, Color3.fromRGB(0, 125, 255), 0.25, function(bool)
    getgenv().AutoRebirth = bool

    while task.wait(0.01) do
        if getgenv().AutoRebirth then
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Tycoons[tostring(plot)].Rebirth.Button, 0)
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Tycoons[tostring(plot)].Rebirth.Button, 1)
        end
    end
end)
local AutoButtons = BuySection:CreateToggle("Auto Buy Buttons", false, Color3.fromRGB(0, 125, 255), 0.25, function(bool)
    getgenv().AutoButtons = bool

    while task.wait(0.01) do
        if getgenv().AutoButtons then
            for _, v in pairs(game:GetService("Workspace").Tycoons[tostring(plot)].Buttons:GetChildren()) do
                if v:FindFirstChild("Glow") then
                    firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Tycoons[tostring(plot)].Buttons[v.Name].Button, 0)
                    firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Tycoons[tostring(plot)].Buttons[v.Name].Button, 1)
                    task.wait(1)
                end
            end
        end
    end
end)

local MiscellaneousSection = Tabs.Automation:CreateSection("✨ Miscellaneous")
local CompleteObby = MiscellaneousSection:CreateToggle("Auto Complete Obby", false, Color3.fromRGB(0, 125, 255), 0.25, function(bool)
    getgenv().CompleteObby = bool

    while task.wait(0.01) do
        if getgenv().CompleteObby then
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").obby["2x Cash for 1 Minute"].Button, 0)
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").obby["2x Cash for 1 Minute"].Button, 1)
        end
    end
end)

local RarityFixButton = MiscellaneousSection:CreateButton("Fix Rarity Board", function()
    local Rarities = require(game:GetService("ReplicatedStorage").Modules.RarityPlan)
    local Numbers = require(game:GetService("ReplicatedStorage").Modules.NumberUtil)

    for _, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.RarityScreen.RaritiesFrame:GetChildren()) do
        if Rarities.Loot[v.Name] then
            if v.Label:FindFirstChild("UIGradient") then
                v.Label.UIGradient:Destroy() 
            end
            
            v.Label.Font = Enum.Font.FredokaOne
            v.Label.TextColor3 = Color3.fromRGB(255, 255, 255)
            v.Label.Text = string.format("%s: 1/%s | $%s", v.Name, Numbers.Simplify(tonumber(math.ceil(100 / Rarities:GetTrueLootChance(v.Name)))), Numbers.AddCommas(game.ReplicatedStorage.Rarities[v.Name].Money.Value))
        end
    end
end)

local ValueSection = Tabs.Player:CreateSection("🏃‍♂️ Player Modification")
local SpeedSlider = ValueSection:CreateSlider("WalkSpeed", 25, 125, 25, Color3.fromRGB(0, 125, 255), function(value)
    game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = value
end)
local JumpSlider = ValueSection:CreateSlider("JumpPower", 25, 150, 25, Color3.fromRGB(0, 125, 255), function(value)
    game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = value
end)

local Settings = Tabs.Settings:CreateSection("👀 User Interface")
local DestroyButton = Settings:CreateButton("Destroy UI", function()
    Atlas:DestroyUI()
end)
local ToggleKeybind = Settings:CreateKeybind("Toggle UI", "RightControl", function()
    Atlas:ToggleUI()
end)

local Credits = Tabs.Settings:CreateSection("✏️ Credits")
for _, v in pairs(Credentials) do
    Credits:CreateLabel(v)
end
