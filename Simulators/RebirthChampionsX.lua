for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do v:Disable() end

local Atlas = loadstring(game:HttpGet("https://raw.githubusercontent.com/VisualRoblox/Roblox/main/UI-Libraries/Visual%20UI%20Library/Source.lua"))()
local Window = Atlas:CreateWindow("Atlas", "Rebirth Champions X", "Project Atlas", "rbxassetid://10618928818", true, "VisualUIConfigs", "Default")

local Credentials = {"Scripting: CollateralDamage#2848"}

local Libraries = {
    Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/LaDamage/Functions/main/numbers.lua"))()
}

local TableStorage = {
    Eggs = {},
    Potions = {}
}

for _, v in pairs(game:GetService("Workspace").Scripts.Eggs:GetChildren()) do
    if not table.find(TableStorage.Eggs, v.Name) then
        table.insert(TableStorage.Eggs, v.Name)
    end
end

for _, v in pairs(game:GetService("Players").LocalPlayer.Potions:GetChildren()) do
    if not table.find(TableStorage.Potions, v.Name) then
        table.insert(TableStorage.Potions, v.Name)
    end
end

local Tabs = {
    Automation = Window:CreateTab("Automation", true, "rbxassetid://3926305904", Vector2.new(524, 44), Vector2.new(36, 36)),
    Pets = Window:CreateTab("Pets", false, "rbxassetid://3926305904", Vector2.new(524, 44), Vector2.new(36, 36)),
    Player = Window:CreateTab("Player", false, "rbxassetid://3926305904", Vector2.new(524, 44), Vector2.new(36, 36)),
    Settings = Window:CreateTab("Settings", false, "rbxassetid://3926305904", Vector2.new(524, 44), Vector2.new(36, 36))
}

local FarmingSection = Tabs.Automation:CreateSection("💰 Farming Section")
local AutoClick = FarmingSection:CreateToggle("Auto Click", false, Color3.fromRGB(0, 125, 255), 0.25, function(bool)
    getgenv().AutoClick = bool

    while task.wait() do
        if getgenv().AutoClick then
            local function GetClick()
                for _, v in pairs(game:GetService("ReplicatedStorage").Events:GetChildren()) do
                    if string.match(v.Name, "Click") then
                        return v.Name
                    end
                end
            end

            game:GetService("ReplicatedStorage").Events[GetClick()]:FireServer()
        end
    end
end)

local AutoChest = FarmingSection:CreateToggle("Auto Collect Chests", false, Color3.fromRGB(0, 125, 255), 0.25, function(bool)
    getgenv().AutoChest = bool

    while task.wait() do
        if getgenv().AutoChest then
            for _, v in pairs(game:GetService("Workspace").Scripts.Chests:GetChildren()) do
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Touch, 0)
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Touch, 1)
            end
        end
    end
end)

local UnlockPortals = FarmingSection:CreateToggle("Unlock Portals", false, Color3.fromRGB(0, 125, 255), 0.25, function(bool)
    getgenv().UnlockPortals = bool

    while task.wait() do
        if getgenv().UnlockPortals then
            for _, v in pairs(game:GetService("Workspace").Scripts.Portals:GetChildren()) do
                if v:IsA("Model") then
                    v:FindFirstChild("Unlocked").Value = true

                    if v:FindFirstChild("LabelUI") then
                        v:WaitForChild("LabelUI"):Destroy()
                    end
                end
            end
            task.wait(1)
        end
    end
end)

local GamepassSection = Tabs.Automation:CreateSection("🎁 Gamepass Section")
local PremiumClick = GamepassSection:CreateButton("Unlock Premium Auto Click", function()
    game:GetService("Players").LocalPlayer.Passes.AutoClicker.Value = true
end)

local AutoRebirth = GamepassSection:CreateButton("Unlock Auto Rebirth", function()
    game:GetService("Players").LocalPlayer.Passes.AutoRebirth.Value = true
end)

local MiscellaneousSection = Tabs.Automation:CreateSection("✨ Miscellaneous")
local AutoSpin = MiscellaneousSection:CreateToggle("Auto Spin Wheel", false, Color3.fromRGB(0, 125, 255), 0.25, function(bool)
    getgenv().AutoSpin = bool

    while task.wait(1) do
        if getgenv().AutoSpin then
            if os.time() >= game:GetService("Players").LocalPlayer.Data.DailySpin.Value + 86400 then
                game:GetService("ReplicatedStorage").Functions.Spin:InvokeServer()
            end
        end
    end
end)

local AutoDailyMachine = MiscellaneousSection:CreateToggle("Auto Daily Machine", false, Color3.fromRGB(0, 125, 255), 0.25, function(bool)
    getgenv().AutoDailyMachine = bool

    while task.wait(1) do
        if getgenv().AutoDailyMachine then
            if os.time() >= game:GetService("Players").LocalPlayer.Data.Machine.Value + 86400 then
                game:GetService("ReplicatedStorage").Functions.Machine:InvokeServer()
            end
        end
    end
end)

local PetSection = Tabs.Pets:CreateSection("🥚 Pet Section")
local EggDropdown = PetSection:CreateDropdown("Selected Egg", TableStorage.Eggs, "Basic", 0.25, function(option)
    getgenv().EggToHatch = option
end)

local AmountDropdown = PetSection:CreateDropdown("Selected Amount", {"Single", "Triple"}, "Single", 0.25, function(option)
    getgenv().EggAmount = option
end)

local AutoHatch = PetSection:CreateToggle("Auto Open Eggs", false, Color3.fromRGB(0, 125, 255), 0.25, function(bool)
    getgenv().AutoHatch = bool

    while task.wait(0.1) do
        if getgenv().AutoHatch then
            game:GetService("ReplicatedStorage").Functions.Unbox:InvokeServer(EggToHatch, EggAmount)
        end
    end
end)

local ExtraPetSection = Tabs.Pets:CreateSection("✨ Extra Pet Section")
local AutoCraft = ExtraPetSection:CreateToggle("Auto Craft All Pets", false, Color3.fromRGB(0, 125, 255), 0.25, function(bool)
    getgenv().AutoCraft = bool

    while task.wait(0.5) do
        if getgenv().AutoCraft then
            game:GetService("ReplicatedStorage").Functions.Request:InvokeServer("CraftAll", {})
        end
    end
end)

local PlayerModification = Tabs.Player:CreateSection("🏃‍♂️ Player Modification")
local SpeedSlider = PlayerModification:CreateSlider("WalkSpeed", 25, 125, 25, Color3.fromRGB(0, 125, 255), function(value)
    game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = value
end)
local JumpSlider = PlayerModification:CreateSlider("JumpPower", 25, 150, 25, Color3.fromRGB(0, 125, 255), function(value)
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
