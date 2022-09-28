for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do v:Disable() end

local Atlas = loadstring(game:HttpGet("https://raw.githubusercontent.com/VisualRoblox/Roblox/main/UI-Libraries/Visual%20UI%20Library/Source.lua"))()
local Window = Atlas:CreateWindow("Atlas", "Sheep Tycoon", "Project Atlas", "rbxassetid://10618928818", true, "VisualUIConfigs", "Default")

for _, v in pairs(game:GetService("Workspace").Tycoon.Plot:GetChildren()) do
    if v.Owner.Value == game:GetService("Players").LocalPlayer then
        getgenv().plot = v 
    end
end

local Credentials = {
    "Scripting: CollateralDamage#2848",
}

local Libraries = {
    Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/LaDamage/Functions/main/numbers.lua"))()
}

local Tabs = {
    Automation = Window:CreateTab("Automation", true, "rbxassetid://3926305904", Vector2.new(524, 44), Vector2.new(36, 36)),
    Settings = Window:CreateTab("Settings", false, "rbxassetid://3926305904", Vector2.new(524, 44), Vector2.new(36, 36))
}

local FarmingSection = Tabs.Automation:CreateSection("Auto Farm")
local CollectDroplets = FarmingSection:CreateToggle("Collect Wool", false, Color3.fromRGB(0, 125, 255), 0.25, function(bool)
    getgenv().AutoCollect = bool
    while task.wait() do
        if getgenv().AutoCollect then
            for _, v in pairs(game:GetService("Workspace").Tycoon.Plot[tostring(plot)].Wools:GetChildren()) do
                game:GetService("ReplicatedStorage").Signals.RemoteEvents.GetWoolRemote:FireServer(tonumber(v.Name), v.Wool.Position)
            end
        end
    end
end)

local AutoDeposit = FarmingSection:CreateToggle("Auto Deposit", false, Color3.fromRGB(0, 125, 255), 0.25, function(bool)
    getgenv().AutoDeposit = bool
    while task.wait(0.1) do
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
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Tycoon.Plot[tostring(plot)].Buttons.Merge.Head, 0)
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Tycoon.Plot[tostring(plot)].Buttons.Merge.Head, 1)
        end
    end
end)

local BuySection = Tabs.Automation:CreateSection("Auto Buy")
local AmountDropdown = BuySection:CreateDropdown("Sheep Amount", {1, 3, 10}, 1, 0.25, function(option)
    if option == 1  then
        getgenv().SheepAmount = "Add" 
    elseif option == 3  then
        getgenv().SheepAmount = "Add3" 
    elseif option == 10  then
        getgenv().SheepAmount = "Add10" 
    end
end)

local BuySlimes = BuySection:CreateToggle("Buy Sheep", false, Color3.fromRGB(0, 125, 255), 0.25, function(bool)
    getgenv().BuySlimes = bool
    while task.wait(0.1) do
        if getgenv().BuySlimes then
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Tycoon.Plot[tostring(plot)].Buttons[SheepAmount].Head, 0)
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Tycoon.Plot[tostring(plot)].Buttons[SheepAmount].Head, 1)
        end
    end
end)

local BuyRate = BuySection:CreateToggle("Buy Drop Rate", false, Color3.fromRGB(0, 125, 255), 0.25, function(bool)
    getgenv().BuyRate = bool
    while task.wait(0.1) do
        if getgenv().BuyRate then
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Tycoon.Plot[tostring(plot)].Buttons.Upgrade.Head, 0)
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Tycoon.Plot[tostring(plot)].Buttons.Upgrade.Head, 1)
        end
    end
end)

local MiscellaneousSection = Tabs.Automation:CreateSection("Miscellaneous")
local CompleteObby = MiscellaneousSection:CreateToggle("Auto Complete Obby", false, Color3.fromRGB(0, 125, 255), 0.25, function(bool)
    getgenv().CompleteObby = bool
    while task.wait(0.1) do
        if getgenv().CompleteObby then
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Obby.Wool.Finish, 0)
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Obby.Wool.Finish, 1)

            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Obby.Money.Finish, 0)
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Obby.Money.Finish, 1)
        end
    end
end)

local Settings = Tabs.Settings:CreateSection("User Interface")
local DestroyButton = Settings:CreateButton("Destroy UI", function()
    Atlas:DestroyUI()
end)
local ToggleKeybind = Settings:CreateKeybind("Toggle UI", "RightControl", function()
    Atlas:ToggleUI()
end)

local Credits = Tabs.Settings:CreateSection("Credits")
for _, v in pairs(Credentials) do
    Credits:CreateLabel(v)
end
