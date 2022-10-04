local request = request or http_request
if type(syn) == 'table' and type(syn.request) == 'function' then
	request = syn.request
end

local GuiService = game:GetService("GuiService")

local Marketplace = game:GetService("MarketplaceService")
local Get_Game = Marketplace:GetProductInfo(game.PlaceId)

GuiService.ErrorMessageChanged:Connect(function(Message)
    local ErrorCode = GuiService:GetErrorCode()
    local WebhookData = {
        ["content"] = "<@".. getgenv().DiscordID ..">",
        ["embeds"] = {{
            ["title"] = "You have been kicked from a game!",
            ["color"] = tonumber(0xc80000),
            ["fields"] = {{
                ["name"] = "⚠️️ Error Code:",
                ["value"] = ErrorCode.Value,
                ["inline"] = true
            },{
                ["name"] = "📝 Reason:",
                ["value"] = Message,
                ["inline"] = false
            }},
            ["footer"] = {["text"] = Get_Game.Name},
            ["timestamp"] = DateTime.now():ToIsoDate()
        }}
    }

    request({Url= getgenv().DiscordWebhook, Body = game:GetService("HttpService"):JSONEncode(WebhookData), Method = "POST", Headers = {["content-type"] = "application/json"}})
end)
