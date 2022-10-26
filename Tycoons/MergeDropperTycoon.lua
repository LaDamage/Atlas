for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do v:Disable() end

local Atlas = loadstring(game:HttpGet("https://raw.githubusercontent.com/VisualRoblox/Roblox/main/UI-Libraries/Visual%20UI%20Library/Source.lua"))()
local Window = Atlas:CreateWindow("Atlas", "Merge Droppers", "Project Atlas", "rbxassetid://10618928818", true, "VisualUIConfigs", "Default")

local GetPlot = function()
    for _, v in pairs(game:GetService("Workspace").Tycoon.Plot:GetChildren()) do
        if v.Owner.Value == game:GetService("Players").LocalPlayer then
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
local CollectDroplets = FarmingSection:CreateToggle("Infinite Parts", false, Color3.fromRGB(0, 125, 255), 0.25, function(bool)
    getgenv().AutoCollect = bool

    while task.wait(0.05) do
        if getgenv().AutoCollect then
            game:GetService("ReplicatedStorage").Signals.RemoteEvents.GetWoolRemote:FireServer(16, Vector3.new(0, 0, 0))
        end
    end
end)

local AutoDeposit = FarmingSection:CreateToggle("Auto Deposit", false, Color3.fromRGB(0, 125, 255), 0.25, function(bool)
    getgenv().AutoDeposit = bool

    while task.wait() do
        if getgenv().AutoDeposit then
            if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Bottom.ImageLabel.Wool.Text ~= "0" then
                game:GetService("ReplicatedStorage").Signals.RemoteEvents.PutRemote:FireServer()
            end
        end
    end
end)

local AutoMerge = FarmingSection:CreateToggle("Auto Merge", false, Color3.fromRGB(0, 125, 255), 0.25, function(bool)
    getgenv().AutoMerge = bool
    while task.wait(0.1) do
        if getgenv().AutoMerge then
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Tycoon.Plot[GetPlot()]["Buttons_E"].Merge.Head, 0)
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Tycoon.Plot[GetPlot()]["Buttons_E"].Merge.Head, 1)
        end
    end
end)

local BuySection = Tabs.Automation:CreateSection("💸 Buy Section")
local BuySection = Tabs.Automation:CreateSection("Auto Buy")
local AmountDropdown = BuySection:CreateDropdown("Dropper Amount", {1, 5, 10, 25, 50, 100}, 1, 0.25, function(option)
    if option == 1  then
        getgenv().SheepAmount = "Add" 
    else
        getgenv().SheepAmount = "Add".. option 
    end
end)

local BuySheeps = BuySection:CreateToggle("Buy Droppers", false, Color3.fromRGB(0, 125, 255), 0.25, function(bool)
    getgenv().BuySheeps = bool
    while task.wait(0.1) do
        if getgenv().BuySheeps then
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Tycoon.Plot[GetPlot()]["Buttons_E"][SheepAmount].Head, 0)
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Tycoon.Plot[GetPlot()]["Buttons_E"][SheepAmount].Head, 1)
        end
    end
end)

local BuyRate = BuySection:CreateToggle("Buy Drop Rate", false, Color3.fromRGB(0, 125, 255), 0.25, function(bool)
    getgenv().BuyRate = bool

    while task.wait(0.01) do
        if getgenv().BuyRate then
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Tycoon.Plot[GetPlot()]["Buttons_E"].Upgrade.Head, 0)
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Tycoon.Plot[GetPlot()]["Buttons_E"].Upgrade.Head, 1)
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
