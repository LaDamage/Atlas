local GamesTable = {
    ["Slime Tower Tycoon"] = {ID = 10675066724, Script = "https://raw.githubusercontent.com/LaDamage/Atlas/main/Tycoons/SlimeTowerTycoon.lua"},
    ["Sheep Tycoon"] = {ID = 10903978962, Script = "https://raw.githubusercontent.com/LaDamage/Atlas/main/Tycoons/SheepTycoon.lua"},
    ["Tapper Simulator"] = {ID = 9625096419, Script = "https://raw.githubusercontent.com/LaDamage/Atlas/main/Simulators/TapperSimulator.lua"},
    ["Rarity Factory Tycoon"] = {ID = 10919241870, Script = "https://raw.githubusercontent.com/LaDamage/Atlas/main/Tycoons/RarityFactoryTycoon.lua"},
    ["Merge Dropper Tycoon"] = {ID = 10977918334, Script = "https://raw.githubusercontent.com/LaDamage/Atlas/main/Tycoons/MergeDropperTycoon.lua"},
    ["Clicker Tower Tycoon"] = {ID = 10769559578, Script = "https://raw.githubusercontent.com/LaDamage/Atlas/main/Tycoons/ClickerTowerTycoon.lua"},
}

local atlas = [[ 
.----------------.  .----------------.  .----------------.  .----------------.  .----------------. 
| .--------------. || .--------------. || .--------------. || .--------------. || .--------------. |
| |      __      | || |  _________   | || |   _____      | || |      __      | || |    _______   | |
| |     /  \     | || | |  _   _  |  | || |  |_   _|     | || |     /  \     | || |   /  ___  |  | |
| |    / /\ \    | || | |_/ | | \_|  | || |    | |       | || |    / /\ \    | || |  |  (__ \_|  | |
| |   / ____ \   | || |     | |      | || |    | |   _   | || |   / ____ \   | || |   '.___`-.   | |
| | _/ /    \ \_ | || |    _| |_     | || |   _| |__/ |  | || | _/ /    \ \_ | || |  |`\____) |  | |
| ||____|  |____|| || |   |_____|    | || |  |________|  | || ||____|  |____|| || |  |_______.'  | |
| |              | || |              | || |              | || |              | || |              | |
| '--------------' || '--------------' || '--------------' || '--------------' || '--------------' |
 '----------------'  '----------------'  '----------------'  '----------------'  '----------------' 
]]

for _, games in pairs(GamesTable) do
    if game.PlaceId == games.ID then
        print(_ .. atlas)
        loadstring(game:HttpGet(games.Script))()
    end
end
