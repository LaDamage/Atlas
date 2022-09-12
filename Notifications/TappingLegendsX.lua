--[ Debugging ]--
repeat wait() until game:IsLoaded()

if notifications_loaded then warn("[!] Tapping Legends X Hatch Notifications Already Loaded!") return end
pcall(function() getgenv().notifications_loaded = true end)

--[ Services ]--
local services = setmetatable({}, { __index = function(self, key) return game:GetService(key) end })
local client = services.Players.LocalPlayer

local request = request or http_request
if type(syn) == 'table' and type(syn.request) == 'function' then
	request = syn.request
end

local beginTick = tick()

--[ Resource Managers ]--
local numbers = loadstring(game:HttpGet("https://raw.githubusercontent.com/LaDamage/Functions/main/numbers.lua"))()
local codes = loadstring(game:HttpGet("https://raw.githubusercontent.com/LaDamage/MonkeHaxx/main/Tapping-Legends-X/resources/codes.lua"))()
local images = loadstring(game:HttpGet("https://raw.githubusercontent.com/LaDamage/MonkeHaxx/main/Tapping-Legends-X/resources/pet-images.lua"))()

local eggModule = require(services.ReplicatedStorage.Modules.Tables.Eggs)
local notificationModule = require(client.PlayerGui.UIScripts.Modules.UIController)

--[ Game Variables ]--
local PetInventory = services.ReplicatedStorage.Stats[client.Name].Pets
local PetAssets = services.ReplicatedStorage.Pets
local PlayerChat = client.PlayerGui.Chat.Frame.ChatChannelParentFrame["Frame_MessageLogDisplay"].Scroller

--[ Function Managers ]--
local GetImage = function(assetId)
    local api = request({
            Url = "https://thumbnails.roblox.com/v1/assets?assetIds=" .. assetId .. "&size=150x150&format=Png",
            Method = "GET"
    })

    local dataString = string.split(api.Body, '"')
    return dataString[12]
end

local GetRarityColor = function(data, string)
    for _, v in pairs(data) do
        if string.find(string, _) then
            if _ == "Secret" then
                getgenv().SecretPing = SecretNotification
                return tonumber(v)
            end
            
            getgenv().SecretPing = nil
            return tonumber(v)
        end
    end
end

local ValueOutput = function(option, number)
    if type(option) == "string" and type(number) == "number" then
        if option == "Suffix" then
            return numbers:suffix(number, 2)
        elseif option == "Comma" then
            return numbers:comma(numbers:round(number, 0))
        end
    end
end

local RedeemCode = function(code)
    return services.ReplicatedStorage.Remotes.RedeemCode:InvokeServer(code)
end

--[ Data Libraries ]--
getgenv().ScriptData = {
    Version = "5.0.0"
}

getgenv().ColorData = {
    Legendary = "0xffdf00",
    Exotic = "0xff0800",
    Godly = "0x4b0082",
    Secret = "0x32cd32"
}

--[ Pet Information Handler ]--
PetInventory.ChildAdded:Connect(function(instance)
    getgenv().PetUID = instance.Name
end)

--[ Webhook Data Collecter & Sender ]--
PlayerChat.ChildAdded:Connect(function(message)
    if string.find(message.TextLabel.Text, client.Name.." hatched a") then
        GetRarityColor(ColorData, message.TextLabel.Text)

        --// Get Pet Variables
        local HatchedPetName = PetInventory[getgenv().PetUID].PetName.Value
        local HatchedPetPower = PetInventory[getgenv().PetUID].Power.Value
        local HatchedPetTier = PetInventory[getgenv().PetUID].Tier.Value

        --// Get Egg Name
        for _, v in pairs(game:GetService("Workspace").Eggs:GetChildren()) do
            if client:DistanceFromCharacter(v.E.Position) < 15 then
                getgenv().EggName = tostring(v)
            end
        end

        --// get Pet Chance
        for i, table in pairs(eggModule[getgenv().EggName].Pets) do
            if table.PetName == HatchedPetName then
                getgenv().PetChance = ValueOutput(Options.Chance, 100/table.Chance/services.ReplicatedStorage.Stats[client.Name].PlayerData.TotalLuckMultiplier.Value)
            end
        end

        --// Get Roblox Asset ID Of Hatched Pet
        local Pet = PetAssets[HatchedPetName]
        if HatchedPetTier == 1 then
            PetIconLink = getImage(require(Pet.Settings).icon:gsub("rbxassetid%:%/%/", ""))
        elseif HatchedPetTier == 2 then
            PetIconLink = getImage(require(Pet.Settings).iconGold:gsub("rbxassetid%:%/%/", ""))
        elseif HatchedPetTier == 3 then
            for _, v in pairs(images) do
                if _ == HatchedPetName then
                    PetIconLink = v or getImage(require(Pet.Settings).icon:gsub("rbxassetid%:%/%/", ""))
                end
            end
        end

        --// Get Inventory Count
        local InventorySpace = client.PlayerGui.Menus.Pets.Frame.TotalPetsInfo.Label.text
        local SplittedInventory = InventorySpace:split(" ")

        --// Create Webhook Data
        local WebhookData = {
            ["content"] = getgenv().SecretNotification,
            ["embeds"] = {{
                ["title"] = message.TextLabel.Text,
                ["thumbnail"] = {["url"] = PetIconLink},
                ["color"] =  GetRarityColor(ColorData, message.TextLabel.Text),
                ["fields"] = {{
                    ["name"] = "🔢 Pet Stats:",
                    ["value"] = ValueOutput(Options.PetStats, HatchedPetPower),
                    ["inline"] = true
                },
                {
                    ["name"] = "🍀 Chance:",
                    ["value"] = "1 in "..PetChance,
                    ["inline"] = false
                },
                {
                    ["name"] = "📦 Inventory Space:",
                    ["value"] = client.PlayerGui.Menus.Pets.Frame.TotalPetsInfo.Label.Text:split(" ")[1],
                    ["inline"] = false
                }
                },
                ["footer"] = {["text"] = '🥚 '..numbers:comma(client.leaderstats.Eggs.Value)},
                ["timestamp"] = DateTime.now():ToIsoDate()
            }}
        }

        request({Url= getgenv().NotificationWebhook, Body = game:GetService("HttpService"):JSONEncode(WebhookData), Method = "POST", Headers = {["content-type"] = "application/json"}})
    end
end)

spawn(function()
    warn("[!] Tapping Legends X Hatch Notifications Loaded!")
    warn("[!] Script took", numbers:round((tick() - beginTick)*10^3, 0), "ms to load.\n")
    warn("[?] Script Version: v".. ScriptData.Version)
    warn("[?] Provided & Made by: CollateralDamage\n")
    print("[*] Anti AFK is Enabled\n__________________________________________________________")

    notificationModule.CreateNotification("Tapping Legends X Hatch Notifications Loaded!", Color3.fromRGB(255, 255, 255))
    notificationModule.CreateNotification("Script took "..numbers:round((tick() - beginTick)*10^3, 0).." ms to load.", Color3.fromRGB(255, 255, 255))

    for _, v in pairs(codes) do
        RedeemCode(v)
        task.wait(0.5)
    end
end)

for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do v:Disable() end
