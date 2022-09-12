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

local GetRarityColor = function(data, str)
    for _, v in pairs(data) do
        if string.find(str, _) then
            if _ == "Secret" then
                getgenv().SecretPing = SecretNotification
                return tonumber(v)
            end
            
            getgenv().SecretPing = nil
            return tonumber(v)
        end
    end
end

local GetHatchedPetStats = function(stat, uid)
    return PetInventory[tostring(uid)][tostring(stat)].Value
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

--[ Pet Data Handler ]--
PetInventory.ChildAdded:Connect(function(instance)
    getgenv().identification = instance.Name
end)

--[ Webhook Data Collecter & Sender ]--
PlayerChat.ChildAdded:Connect(function(message)
    if string.find(message.TextLabel.Text, client.Name.." hatched a") then

        --[ Get pet Information ]--
        local RarityColor = GetRarityColor(ColorData, message.TextLabel.Text)

        local PetName = GetHatchedPetStats("PetName", identification)
        local PetPower = GetHatchedPetStats("Power", identification)
        local PetTier = GetHatchedPetStats("Tier", identification)

        --[ Get Egg Name ]--
        for _, v in pairs(game:GetService("Workspace").Eggs:GetChildren()) do
            if client:DistanceFromCharacter(v.E.Position) < 25 then
                getgenv().EggName = tostring(v)
            end
        end

        --[ Calculate Pet Chance ]--
        --print(EggName, PetName, PetPower, PetTier)
        for _, v in pairs(require(services.ReplicatedStorage.Modules.Tables.Eggs)[EggName].Pets) do
            if v.PetName == PetName then
                getgenv().PetChance = tonumber(100/v.Chance/services.ReplicatedStorage.Stats[client.Name].PlayerData.TotalLuckMultiplier.Value)
            end
        end

        --[ Get Roblox Asset ID Of Hatched Pet ]--
        local Pet = PetAssets[PetName]
        if PetTier == 1 then
            PetIconLink = GetImage(require(Pet.Settings).icon:gsub("rbxassetid%:%/%/", ""))
        elseif PetTier == 2 then
            PetIconLink = GetImage(require(Pet.Settings).iconGold:gsub("rbxassetid%:%/%/", ""))
            PetChance *= services.ReplicatedStorage.Stats[client.Name].PlayerData.GoldenChance.Value
        elseif PetTier == 3 then
            for _, v in pairs(images) do
                if _ == PetName then
                    PetIconLink = v or GetImage(require(Pet.Settings).icon:gsub("rbxassetid%:%/%/", ""))
                end
            end
            PetChance *= services.ReplicatedStorage.Stats[client.Name].PlayerData.RainbowChance.Value
        end

        --[ Create Webhook Data ]--
        local WebhookData = {
            ["content"] = getgenv().SecretPing,
            ["embeds"] = {{
                ["title"] = message.TextLabel.Text,
                ["thumbnail"] = {
                    ["url"] = PetIconLink
                },
                ["color"] = RarityColor,
                ["fields"] = {{
                    ["name"] = "🔢 Pet Stats:",
                    ["value"] = ValueOutput(Options.PetStats, PetPower),
                    ["inline"] = true
                },
                {
                    ["name"] = "🍀 Chance:",
                    ["value"] = "1 in ".. ValueOutput(Options.Chance, PetChance),
                    ["inline"] = false
                },
                {
                    ["name"] = "📦 Inventory Space:",
                    ["value"] = client.PlayerGui.Menus.Pets.Frame.TotalPetsInfo.Label.Text:split(" ")[1],
                    ["inline"] = false
                }
                },
                ["footer"] = {["text"] = '🥚 '.. ValueOutput("Comma", client.leaderstats.Eggs.Value)},
                ["timestamp"] = DateTime.now():ToIsoDate()
            }}
        }

        request({Url= getgenv().Webhook, Body = game:GetService("HttpService"):JSONEncode(WebhookData), Method = "POST", Headers = {["content-type"] = "application/json"}})
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
