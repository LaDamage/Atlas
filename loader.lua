local GamesTable = {
    ["Slime Tower Tycoon"] = {ID = 10675066724, Script = "https://raw.githubusercontent.com/LaDamage/Atlas/main/Tycoons/SlimeTowerTycoon.lua"},
    ["Sheep Tycoon"] = {ID = 10903978962, Script = "https://raw.githubusercontent.com/LaDamage/Atlas/main/Tycoons/SheepTycoon.lua"},
}

for _, games in pairs(GamesTable) do
    if game.PlaceId == games.ID then
        print(_)
        loadstring(game:HttpGet(games.Script))()
    else
        print("This game is not supported!")
    end
end
