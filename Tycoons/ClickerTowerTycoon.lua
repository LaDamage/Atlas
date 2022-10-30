for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do v:Disable() end

local Atlas = loadstring(game:HttpGet("https://raw.githubusercontent.com/VisualRoblox/Roblox/main/UI-Libraries/Visual%20UI%20Library/Source.lua"))()
local Window = Atlas:CreateWindow("Atlas", "Clicker Tower Tycoon", "Project Atlas", "rbxassetid://10618928818", true, "VisualUIConfigs", "Default")

local GetPlot = function()
    for _, v in pairs(game:GetService("Workspace")["__MAP"].Plots:GetChildren()) do
        if v.Name == game:GetService("Players").LocalPlayer.Name then
            plot = tostring(v)
        end
    end
    return plot
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
local AutoDeposit = FarmingSection:CreateToggle("Auto Deposit", false, Color3.fromRGB(0, 125, 255), 0.25, function(bool)
    getgenv().AutoDeposit = bool

    while task.wait(1) do
        if getgenv().AutoDeposit then
            if require(game:GetService("ReplicatedStorage").Game.Packages.Shared.GameSupporter).GetStat(game:GetService("Players").LocalPlayer, "Clicks").Value ~= 0 then
                firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace")["__MAP"].Plots[GetPlot()].Depositer.Main, 0)
                firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace")["__MAP"].Plots[GetPlot()].Depositer.Main, 1)
            end
        end
    end
end)

local AutoMerge = FarmingSection:CreateToggle("Auto Merge", false, Color3.fromRGB(0, 125, 255), 0.25, function(bool)
    getgenv().AutoMerge = bool

    while task.wait(0.1) do
        if getgenv().AutoMerge then
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace")["__MAP"].Plots[GetPlot()].Merge.Main, 0)
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace")["__MAP"].Plots[GetPlot()].Merge.Main, 1)
        end
    end
end)

local BuySection = Tabs.Automation:CreateSection("💸 Buy Section")
local AmountDropdown = BuySection:CreateDropdown("Dropper Amount", {1, 5, 25, 100}, 1, 0.25, function(option)
    getgenv().SheepAmount = "Clicker".. option 
end)

local BuySheeps = BuySection:CreateToggle("Buy Droppers", false, Color3.fromRGB(0, 125, 255), 0.25, function(bool)
    getgenv().BuySheeps = bool
    while task.wait(0.1) do
        if getgenv().BuySheeps then
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace")["__MAP"].Plots[GetPlot()].Clickers[SheepAmount].Main, 0)
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace")["__MAP"].Plots[GetPlot()].Clickers[SheepAmount].Main, 1)
        end
    end
end)

local BuyRate = BuySection:CreateToggle("Buy Drop Rate", false, Color3.fromRGB(0, 125, 255), 0.25, function(bool)
    getgenv().BuyRate = bool

    while task.wait(0.01) do
        if getgenv().BuyRate then
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace")["__MAP"].Plots[GetPlot()].Rate.Main, 0)
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace")["__MAP"].Plots[GetPlot()].Rate.Main, 1)
        end
    end
end)

local MiscellaneousSection = Tabs.Automation:CreateSection("✨ Miscellaneous")
local ClickForBoost = MiscellaneousSection:CreateToggle("Auto Click For Boost", false, Color3.fromRGB(0, 125, 255), 0.25, function(bool)
    getgenv().ClickForBoost = bool

    while task.wait(0.1) do
        if getgenv().ClickForBoost then
            game:GetService("ReplicatedStorage").Game.Remotes.BoostInteract:InvokeServer("Tap")
            game:GetService("ReplicatedStorage").Game.Remotes.BoostInteract:InvokeServer("Claim")
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
