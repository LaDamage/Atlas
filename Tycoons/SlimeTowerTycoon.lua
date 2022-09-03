for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do v:Disable() end

local Atlas = loadstring(game:HttpGet("https://raw.githubusercontent.com/VisualRoblox/Roblox/main/UI-Libraries/Visual%20UI%20Library/Source.lua"))()
local Window = Atlas:CreateWindow("Atlas", "Slime Tower Tycoon", "Project Atlas", "rbxassetid://10618928818", true, "VisualUIConfigs", "Default")

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
local CollectDroplets = FarmingSection:CreateToggle("Collect Droplets", false, Color3.fromRGB(0, 125, 255), 0.25, function(bool)
    getgenv().AutoCollect = bool
    while task.wait(0.1) do
        if getgenv().AutoCollect then
            for _, v in pairs(game:GetService("Workspace").Drops:GetChildren()) do
                if v:IsA("Part") and v.Name == "Dropper_Drop" then
                    v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                end
            end
        end
    end
end)

local AutoDeposit = FarmingSection:CreateToggle("Auto Deposit", false, Color3.fromRGB(0, 125, 255), 0.25, function(bool)
    getgenv().AutoDeposit = bool
    while task.wait(0.1) do
        if getgenv().AutoDeposit then
            if game:GetService("Players").LocalPlayer.PlayerGui.MainUI.DropsInventory.Amount.Text ~= "0" then
                game:GetService("ReplicatedStorage").GTycoonClient.Remotes.DepositDrops:FireServer()
            end
        end
    end
end)

local AutoMerge = FarmingSection:CreateToggle("Auto Merge", false, Color3.fromRGB(0, 125, 255), 0.25, function(bool)
    getgenv().AutoMerge = bool
    while task.wait(0.1) do
        if getgenv().AutoMerge then
            game:GetService("ReplicatedStorage").GTycoonClient.Remotes.MergeDroppers:FireServer()
        end
    end
end)

local BuySection = Tabs.Automation:CreateSection("Auto Buy")
local AmountDropdown = BuySection:CreateDropdown("Slime Amount", {1, 5, 25, 100}, 1, 0.25, function(option)
    getgenv().SlimeAmount = option
end)

local BuySlimes = BuySection:CreateToggle("Buy Slimes", false, Color3.fromRGB(0, 125, 255), 0.25, function(bool)
    getgenv().BuySlimes = bool
    while task.wait(0.1) do
        if getgenv().BuySlimes then
            game:GetService("ReplicatedStorage").GTycoonClient.Remotes.BuyDropper:FireServer(getgenv().SlimeAmount)
        end
    end
end)

local BuyRate = BuySection:CreateToggle("Buy Drop Rate", false, Color3.fromRGB(0, 125, 255), 0.25, function(bool)
    getgenv().BuyRate = bool
    while task.wait(0.1) do
        if getgenv().BuyRate then
            game:GetService("ReplicatedStorage").GTycoonClient.Remotes.BuySpeed:FireServer(1)
        end
    end
end)

local MiscellaneousSection = Tabs.Automation:CreateSection("Miscellaneous")
local SuffixLeaderboard = MiscellaneousSection:CreateToggle("Add Suffixes To Leaderboards", false, Color3.fromRGB(0, 125, 255), 0.25, function(bool)
    getgenv().LBSuffix = bool
    local Leaderboards = {
        game:GetService("Workspace")["GlobalLeaderboard_Cash"].SurfaceGui.Frame.Contents.Items,
        game:GetService("Workspace")["GlobalLeaderboard_Droppers"].SurfaceGui.Frame.Contents.Items
    }

    for _, v in pairs(Leaderboards) do
        v.ChildAdded:Connect(function()
            if getgenv().LBSuffix then
                wait(5)
                for yes, instance in pairs(v:GetChildren()) do
                    if instance:IsA("Frame") then
                        local lbvalue = tonumber(instance.Values.Value.Text)
                        
                        if typeof(lbvalue) == "number" then
                            instance.Values.Value.Text = Libraries.Functions:suffix(tonumber(lbvalue), 2)
                        end
                    end
                end
            end
        end)
        for yes, instance in pairs(v:GetChildren()) do
            if instance:IsA("Frame") then
                local lbvalue = tonumber(instance.Values.Value.Text)
                    
                if typeof(lbvalue) == "number" then
                    instance.Values.Value.Text = Libraries.Functions:suffix(tonumber(lbvalue), 2)
                end
            end
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
