local GamesTable = {
    ["Slime Tower Tycoon"] = {ID = 10675066724, Script = "https://raw.githubusercontent.com/LaDamage/Atlas/main/Tycoons/SlimeTowerTycoon.lua"},
}

for _, games in pairs(GamesTable) do
    if game.PlaceId == games.ID then
        print(_)
        loadstring(game:HttpGet(games.Script))()
    else
        game:GetService("Players").LocalPlayer:Kick("This game is not supported by Atlas!")
    end
end
