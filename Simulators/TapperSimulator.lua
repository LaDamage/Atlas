for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do v:Disable() end

local Atlas = loadstring(game:HttpGet("https://raw.githubusercontent.com/VisualRoblox/Roblox/main/UI-Libraries/Visual%20UI%20Library/Source.lua"))()
local Window = Atlas:CreateWindow("Atlas", "Tapper Simulator", "Project Atlas", "rbxassetid://10618928818", true, "VisualUIConfigs", "Default")

local Credentials = {"Scripting: CollateralDamage#2848"}

local Libraries = {
    Network = require(game.ReplicatedStorage.Modules.Utils.Network),
    Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/LaDamage/Functions/main/numbers.lua"))()
}

local Eggs = {}
for _, v in pairs(game:GetService("Workspace").GameAssets.Capsules:GetChildren()) do
    if not string.find(v.Name, "Robux") then
        if not table.find(Eggs, v.Name) then
            table.insert(Eggs, v.Name)
        end
    end
end

local Rebirths = {}
for _, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Menus.Rebirths.Menu.Holder:GetChildren()) do
    if v:IsA("ImageButton") and typeof(tonumber(v.Name)) == "number" then
        if not table.find(Rebirths, v.Name) then
            table.insert(Rebirths, v.Name)
        end
    end
end

local Tabs = {
    Automation = Window:CreateTab("Automation", true, "rbxassetid://3926305904", Vector2.new(524, 44), Vector2.new(36, 36)),
    Settings = Window:CreateTab("Settings", false, "rbxassetid://3926305904", Vector2.new(524, 44), Vector2.new(36, 36))
}

local SelectionSection = Tabs.Automation:CreateSection("📝 Settings Section")
local RebirthDropdown = SelectionSection:CreateDropdown("Selected Rebirth", Rebirths, "1", 0.25, function(option)
    getgenv().SelectedRebirth = option
end)

local EggDropdown = SelectionSection:CreateDropdown("Selected Egg", Eggs, "Forest Egg", 0.25, function(option)
    getgenv().SelectedEgg = option
end)

local FarmingSection = Tabs.Automation:CreateSection("💰 Farming Section")
local AutoClick = FarmingSection:CreateToggle("Auto Click", false, Color3.fromRGB(0, 125, 255), 0.25, function(bool)
    getgenv().AutoClick = bool
    while task.wait(0.1) do
        if getgenv().AutoClick then
            Libraries.Network:FireServer("ClickDetect")
        end
    end
end)

local AutoRebirth = FarmingSection:CreateToggle("Auto Rebirth", false, Color3.fromRGB(0, 125, 255), 0.25, function(bool)
    getgenv().AutoRebirth = bool
    while task.wait(0.01) do
        if getgenv().AutoRebirth then
            Libraries.Network:FireServer("Rebirth", tonumber(SelectedRebirth))
        end
    end
end)


local PetSection = Tabs.Automation:CreateSection("🥚 Pet Section")
local AutoEgg = PetSection:CreateToggle("Auto Open Eggs", false, Color3.fromRGB(0, 125, 255), 0.25, function(bool)
    getgenv().AutoEgg = bool
    while task.wait(0.01) do
        if getgenv().AutoEgg then
            Libraries.Network:FireServer("OpenCapsules", SelectedEgg, 3)
        end
    end
end)

local MiscellaneousSection = Tabs.Automation:CreateSection("✨ Miscellaneous")
local RefeshRebirths = MiscellaneousSection:CreateButton("Refresh Rebirth List", function()
    local Rebirths = {}
    for _, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Menus.Rebirths.Menu.Holder:GetChildren()) do
        if v:IsA("ImageButton") and typeof(tonumber(v.Name)) == "number" then
            if not table.find(Rebirths, tonumber(v.Name)) then
                table.insert(Rebirths, tonumber(v.Name))
            end
        end
    end

    RebirthDropdown:UpdateDropdown(Rebirths)
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
