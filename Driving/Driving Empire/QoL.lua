repeat wait() until game:IsLoaded()

task.wait(5)
if game.PlaceId == 3351674303 then
    local LocalPlayer = game:GetService("Players").LocalPlayer
    local PlayerStats = game:GetService("ReplicatedStorage"):WaitForChild("Stats")[LocalPlayer.Name .."'s Stats"]

    local GetCarAmount = function()
        local OwnedCars = {}
        for _, v in pairs(PlayerStats.Vehicles:GetChildren()) do
            if v.Value then
                if not table.find(OwnedCars, v.Name) then
                    table.insert(OwnedCars, v.Name)
                end
            end
        end
        return #OwnedCars
    end

    game:GetService("Players").LocalPlayer.PlayerGui.MainHUD.Vehicles.Title.Title.Text = "My Vehicles (".. GetCarAmount() ..")"
    for _, v in pairs(PlayerStats.Vehicles:GetChildren()) do
        v:GetPropertyChangedSignal("Value"):Connect(function()
            game:GetService("Players").LocalPlayer.PlayerGui.MainHUD.Vehicles.Title.Title.Text = "My Vehicles (".. GetCarAmount() ..")"
        end)
    end
end
