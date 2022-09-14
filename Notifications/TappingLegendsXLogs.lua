if game:GetService("CoreGui"):FindFirstChild("HatchLogs") then game:GetService("CoreGui"):FindFirstChild("HatchLogs"):Destroy() end

local HatchLogs = Instance.new("ScreenGui")
local UIPadding = Instance.new("UIPadding")
local Frame = Instance.new("ImageLabel")
local Close = Instance.new("ImageLabel")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local ImageLabel = Instance.new("ImageLabel")
local ImageLabel_2 = Instance.new("ImageLabel")
local Icon = Instance.new("ImageLabel")
local TextButton = Instance.new("TextButton")
local Background = Instance.new("ImageLabel")
local Background_2 = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local NameOfMenu = Instance.new("TextLabel")
local UIStroke = Instance.new("UIStroke")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local Back = Instance.new("ImageLabel")
local ImageLabel_3 = Instance.new("ImageLabel")
local ImageLabel_4 = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local TextButton_2 = Instance.new("TextButton")
local List = Instance.new("ScrollingFrame")
local UIPadding_2 = Instance.new("UIPadding")
local UIGridLayout = Instance.new("UIGridLayout")

HatchLogs.Name = "HatchLogs"
HatchLogs.Parent = game:GetService("CoreGui")
HatchLogs.DisplayOrder = 10
HatchLogs.ResetOnSpawn = false
HatchLogs.Enabled = false

UIPadding.Parent = HatchLogs
UIPadding.PaddingTop = UDim.new(-0.075000003, 0)

Frame.Name = "Frame"
Frame.Parent = HatchLogs
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.LayoutOrder = 1
Frame.Position = UDim2.new(0.5, 0, 0.449999988, 0)
Frame.Size = UDim2.new(0.449999988, 0, 0.550000012, 0)
Frame.Image = "rbxassetid://8894447842"
Frame.ImageColor3 = Color3.fromRGB(30, 30, 30)
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(274, 253, 274, 253)

Close.Name = "Close"
Close.Parent = Frame
Close.AnchorPoint = Vector2.new(0.5, 0.5)
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 1.000
Close.ClipsDescendants = true
Close.LayoutOrder = 3
Close.Position = UDim2.new(0.980000019, 0, 0.0149999997, 0)
Close.Size = UDim2.new(0.159999996, 0, 0.159999996, 0)
Close.ZIndex = 25
Close.Image = "rbxassetid://6269959221"
Close.ImageColor3 = Color3.fromRGB(30, 30, 30)
Close.ScaleType = Enum.ScaleType.Fit

UIAspectRatioConstraint.Parent = Close

ImageLabel.Parent = Close
ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.ClipsDescendants = true
ImageLabel.Position = UDim2.new(0.499999911, 0, 0.475000083, 0)
ImageLabel.Size = UDim2.new(0.910000026, 0, 0.889999986, 0)
ImageLabel.ZIndex = 26
ImageLabel.Image = "rbxassetid://6269959221"
ImageLabel.ImageColor3 = Color3.fromRGB(255, 59, 59)

ImageLabel_2.Parent = ImageLabel
ImageLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BackgroundTransparency = 1.000
ImageLabel_2.ClipsDescendants = true
ImageLabel_2.Position = UDim2.new(0.5, 0, 0.5, 0)
ImageLabel_2.Size = UDim2.new(0.925000012, 0, 0.925000012, 0)
ImageLabel_2.ZIndex = 27
ImageLabel_2.Image = "rbxassetid://6269959221"
ImageLabel_2.ImageColor3 = Color3.fromRGB(50, 50, 50)

Icon.Name = "Icon"
Icon.Parent = ImageLabel
Icon.AnchorPoint = Vector2.new(0.5, 0.5)
Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon.BackgroundTransparency = 1.000
Icon.Position = UDim2.new(0.5, 0, 0.5, 0)
Icon.Size = UDim2.new(0.550000012, 0, 0.550000012, 0)
Icon.ZIndex = 27
Icon.Image = "rbxassetid://8894677999"
Icon.ScaleType = Enum.ScaleType.Fit

TextButton.Parent = Close
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.ClipsDescendants = true
TextButton.Size = UDim2.new(1, 0, 1, 0)
TextButton.ZIndex = 99
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = ""
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000
TextButton.MouseButton1Click:Connect(function()
	HatchLogs.Enabled = false
end)
TextButton.MouseEnter:Connect(function()
	ImageLabel.ImageColor3 = Color3.fromRGB(59, 255, 59)
end)
TextButton.MouseLeave:Connect(function()
	ImageLabel.ImageColor3 = Color3.fromRGB(255, 59, 59)
end)

Background.Name = "Background"
Background.Parent = Frame
Background.AnchorPoint = Vector2.new(0.5, 0.5)
Background.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Background.BackgroundTransparency = 1.000
Background.LayoutOrder = 1
Background.Position = UDim2.new(0.49999997, 0, 0.50000006, 0)
Background.Size = UDim2.new(0.992500007, 0, 0.984000027, 0)
Background.Image = "rbxassetid://8894447842"
Background.ImageColor3 = Color3.fromRGB(50, 50, 50)
Background.ScaleType = Enum.ScaleType.Slice
Background.SliceCenter = Rect.new(274, 253, 274, 253)

Background_2.Name = "Background"
Background_2.Parent = Background
Background_2.AnchorPoint = Vector2.new(0.5, 0.5)
Background_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Background_2.BackgroundTransparency = 1.000
Background_2.Position = UDim2.new(0.5, 0, 0.5, 0)
Background_2.Size = UDim2.new(1, 0, 1, 0)
Background_2.ZIndex = 2
Background_2.Image = "rbxassetid://8773769065"
Background_2.ImageColor3 = Color3.fromRGB(170, 255, 255)
Background_2.ImageTransparency = 0.983
Background_2.ScaleType = Enum.ScaleType.Crop

UICorner.CornerRadius = UDim.new(0.200000003, 0)
UICorner.Parent = Background_2

NameOfMenu.Name = "NameOfMenu"
NameOfMenu.Parent = Frame
NameOfMenu.AnchorPoint = Vector2.new(0.5, 0.5)
NameOfMenu.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameOfMenu.BackgroundTransparency = 1.000
NameOfMenu.BorderSizePixel = 0
NameOfMenu.Position = UDim2.new(0.219640508, 0, -0.00580961583, 0)
NameOfMenu.Rotation = -5.000
NameOfMenu.Size = UDim2.new(0.504409909, 0, 0.112183288, 0)
NameOfMenu.ZIndex = 15
NameOfMenu.Font = Enum.Font.FredokaOne
NameOfMenu.Text = "Hatch Logs!"
NameOfMenu.TextColor3 = Color3.fromRGB(255, 255, 255)
NameOfMenu.TextScaled = true
NameOfMenu.TextSize = 14.000
NameOfMenu.TextWrapped = true
NameOfMenu.TextXAlignment = Enum.TextXAlignment.Left

UIStroke.Parent = NameOfMenu
UIStroke.Color = Color3.fromRGB(28, 69, 82)
UIStroke.LineJoinMode = Enum.LineJoinMode.Bevel
UIStroke.Thickness = 4

UIAspectRatioConstraint_2.Parent = Frame
UIAspectRatioConstraint_2.AspectRatio = 1.420

Back.Name = "Back"
Back.Parent = Frame
Back.AnchorPoint = Vector2.new(0.5, 0.5)
Back.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Back.BackgroundTransparency = 1.000
Back.ClipsDescendants = true
Back.LayoutOrder = 3
Back.Position = UDim2.new(0.5, 0, 0.996331275, 0)
Back.Size = UDim2.new(0.275000006, 0, 0.117614262, 0)
Back.Visible = false
Back.ZIndex = 5
Back.Image = "rbxassetid://6269959221"
Back.ImageColor3 = Color3.fromRGB(30, 30, 30)
Back.ScaleType = Enum.ScaleType.Slice
Back.SliceCenter = Rect.new(274, 253, 274, 253)

ImageLabel_3.Parent = Back
ImageLabel_3.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_3.BackgroundTransparency = 1.000
ImageLabel_3.ClipsDescendants = true
ImageLabel_3.Position = UDim2.new(0.499999911, 0, 0.475000083, 0)
ImageLabel_3.Size = UDim2.new(0.970000029, 0, 0.889999986, 0)
ImageLabel_3.ZIndex = 5
ImageLabel_3.Image = "rbxassetid://6269959221"
ImageLabel_3.ImageColor3 = Color3.fromRGB(0, 255, 0)
ImageLabel_3.ScaleType = Enum.ScaleType.Slice
ImageLabel_3.SliceCenter = Rect.new(274, 253, 274, 253)

ImageLabel_4.Parent = ImageLabel_3
ImageLabel_4.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_4.BackgroundTransparency = 1.000
ImageLabel_4.ClipsDescendants = true
ImageLabel_4.Position = UDim2.new(0.5, 0, 0.5, 0)
ImageLabel_4.Size = UDim2.new(0.970000029, 0, 0.889999986, 0)
ImageLabel_4.ZIndex = 6
ImageLabel_4.Image = "rbxassetid://6269959221"
ImageLabel_4.ImageColor3 = Color3.fromRGB(50, 50, 50)
ImageLabel_4.ScaleType = Enum.ScaleType.Slice
ImageLabel_4.SliceCenter = Rect.new(274, 253, 274, 253)

TextLabel.Parent = ImageLabel_3
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.LayoutOrder = 1
TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel.Size = UDim2.new(0.899999976, 0, 0.449999988, 0)
TextLabel.ZIndex = 10
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = "Back"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextButton_2.Parent = Back
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.BackgroundTransparency = 1.000
TextButton_2.ClipsDescendants = true
TextButton_2.Size = UDim2.new(1, 0, 1, 0)
TextButton_2.ZIndex = 99
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = ""
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 14.000

List.Name = "List"
List.Parent = Frame
List.Active = true
List.AnchorPoint = Vector2.new(0.5, 0.5)
List.BackgroundColor3 = Color3.fromRGB(35, 37, 39)
List.BackgroundTransparency = 1.000
List.BorderSizePixel = 0
List.Position = UDim2.new(0.500042975, 0, 0.509708107, 0)
List.Size = UDim2.new(0.958232284, 0, 0.881792367, 0)
List.ZIndex = 9
List.CanvasSize = UDim2.new(0, 0, 2.70000005, 0)
List.ScrollBarThickness = 6
List.AutomaticCanvasSize = Enum.AutomaticSize.Y

UIPadding_2.Parent = List
UIPadding_2.PaddingBottom = UDim.new(0, 10)
UIPadding_2.PaddingLeft = UDim.new(0, 10)
UIPadding_2.PaddingRight = UDim.new(0, 10)
UIPadding_2.PaddingTop = UDim.new(0, 5)

UIGridLayout.Parent = List
UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellPadding = UDim2.new(0, 0, 0.00499999989, 0)
UIGridLayout.CellSize = UDim2.new(1, 0, 0, 85)
UIGridLayout.StartCorner = Enum.StartCorner.BottomLeft

local CreateHatchFrame = function(petimage, petname, petserial, timehatch)
    local Template = Instance.new("ImageLabel")
    local Holder = Instance.new("ImageLabel")
    local PetImage = Instance.new("ImageLabel")
    local PetName = Instance.new("TextLabel")
    local PetSerial = Instance.new("TextLabel")
    local TimeHatch = Instance.new("TextLabel")
    local UIPadding_3 = Instance.new("UIPadding")

	Template.Name = "Template"
	Template.Parent = List
	Template.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Template.BackgroundTransparency = 1.000
	Template.Size = UDim2.new(0, 100, 0, 100)
	Template.ZIndex = 3
	Template.Image = "rbxassetid://6269959221"
	Template.ImageColor3 = Color3.fromRGB(0, 255, 127)
	Template.ScaleType = Enum.ScaleType.Slice
	Template.SliceCenter = Rect.new(263, 255, 281, 255)
	Template.SliceScale = 0.500

	Holder.Name = "Holder"
	Holder.Parent = Template
	Holder.AnchorPoint = Vector2.new(0.5, 0.5)
	Holder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Holder.BackgroundTransparency = 1.000
	Holder.Position = UDim2.new(0.5, 0, 0.5, 0)
	Holder.Size = UDim2.new(1, -4, 1, -4)
	Holder.ZIndex = 3
	Holder.Image = "rbxassetid://6269959221"
	Holder.ImageColor3 = Color3.fromRGB(65, 65, 65)
	Holder.ScaleType = Enum.ScaleType.Slice
	Holder.SliceCenter = Rect.new(263, 255, 281, 255)
	Holder.SliceScale = 0.500

	PetImage.Name = "PetImage"
	PetImage.Parent = Holder
	PetImage.AnchorPoint = Vector2.new(0, 0.5)
	PetImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	PetImage.BackgroundTransparency = 1.000
	PetImage.Position = UDim2.new(0, 20, 0.5, 0)
	PetImage.Size = UDim2.new(0, 55, 0, 55)
	PetImage.ZIndex = 3
	PetImage.Image = petimage

	PetName.Name = "PetName"
	PetName.Parent = Holder
	PetName.AnchorPoint = Vector2.new(0, 0.5)
	PetName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	PetName.BackgroundTransparency = 1.000
	PetName.Position = UDim2.new(0, 90, 0.300000012, 0)
	PetName.Size = UDim2.new(0.864057839, 0, 0.5, 0)
	PetName.ZIndex = 3
	PetName.Font = Enum.Font.FredokaOne
	PetName.Text = petname
	PetName.TextColor3 = Color3.fromRGB(255, 255, 255)
	PetName.TextScaled = true
	PetName.TextSize = 28.000
	PetName.TextWrapped = true
	PetName.TextXAlignment = Enum.TextXAlignment.Left

	PetSerial.Name = "PetSerial"
	PetSerial.Parent = Holder
	PetSerial.AnchorPoint = Vector2.new(0, 0.5)
	PetSerial.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	PetSerial.BackgroundTransparency = 1.000
	PetSerial.Position = UDim2.new(0, 90, 0.735092044, 0)
	PetSerial.Size = UDim2.new(0.864057839, 0, 0.382909775, 0)
	PetSerial.ZIndex = 3
	PetSerial.Font = Enum.Font.FredokaOne
	PetSerial.Text = petserial
	PetSerial.TextColor3 = Color3.fromRGB(255, 255, 255)
	PetSerial.TextScaled = true
	PetSerial.TextSize = 28.000
	PetSerial.TextWrapped = true
	PetSerial.TextXAlignment = Enum.TextXAlignment.Left

	TimeHatch.Name = "TimeHatch"
	TimeHatch.Parent = Holder
	TimeHatch.AnchorPoint = Vector2.new(0, 0.5)
	TimeHatch.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TimeHatch.BackgroundTransparency = 1.000
	TimeHatch.Position = UDim2.new(0.135942131, 0, 0.735092044, 0)
	TimeHatch.Size = UDim2.new(0.864057839, 0, 0.382909775, 0)
	TimeHatch.ZIndex = 3
	TimeHatch.Font = Enum.Font.FredokaOne
	TimeHatch.Text = timehatch
	TimeHatch.TextColor3 = Color3.fromRGB(255, 255, 255)
	TimeHatch.TextScaled = true
	TimeHatch.TextSize = 28.000
	TimeHatch.TextWrapped = true
	TimeHatch.TextXAlignment = Enum.TextXAlignment.Right

	UIPadding_3.Parent = TimeHatch
	UIPadding_3.PaddingRight = UDim.new(0, 17)
end

local GetHatchedPetStats = function(uid, stat)
    return game:GetService("ReplicatedStorage").Stats[game:GetService("Players").LocalPlayer.Name].Pets[tostring(uid)][tostring(stat)].Value
end

game:GetService("ReplicatedStorage").Stats[game:GetService("Players").LocalPlayer.Name].Pets.ChildAdded:Connect(function(instance)
    
    task.wait(3)

    local PetName = GetHatchedPetStats(instance.Name, "PetName")
    local PetSerial = GetHatchedPetStats(instance.Name, "Serial")
    local PetTier = GetHatchedPetStats(instance.Name, "Tier")

    if PetTier == 1 then
        PetImage = require(game:GetService("ReplicatedStorage").Pets[instance.PetName.Value].Settings).icon
    elseif PetTier == 2 then
        PetImage = require(game:GetService("ReplicatedStorage").Pets[instance.PetName.Value].Settings).iconGold
		PetName = "Golden ".. PetName
    elseif PetTier == 3 then
        PetImage = require(game:GetService("ReplicatedStorage").Pets[instance.PetName.Value].Settings).icon
		PetName = "Rainbow ".. PetName
    end

    if PetSerial == "" then
        PetSerial = "No Serial"
    elseif PetSerial ~= "" then
        PetSerial = "Serial: #"..PetSerial
    end

    CreateHatchFrame(PetImage, PetName, PetSerial, os.date(string.format("%%I:%%M %%p"), os.time()))
end)

local Display = game:GetService("Players").LocalPlayer.PlayerGui.Menus.Main.DisplayBars

local CloneThing = function(path_to_clone, parent, name)
    if parent:FindFirstChild(name) then
        parent[name]:Destroy()
        
        local ClonedUI = path_to_clone:Clone()
        ClonedUI.Parent = parent 
        ClonedUI.Name = name
    else
        local ClonedUI = path_to_clone:Clone()
        ClonedUI.Parent = parent 
        ClonedUI.Name = name
    end
end

CloneThing(Display.VialToken, Display, "LogButton")

local LogButton = Display:FindFirstChild("LogButton")
LogButton.TextLabel:Destroy()
LogButton.Icon.ImageLabel.Icon.Image = "rbxassetid://9515612193"

local OpenLogs = Instance.new("TextButton", LogButton)
OpenLogs.AnchorPoint = Vector2.new(0.5, 0.5)
OpenLogs.Size = UDim2.new(1, 0, 0.7, 0)
OpenLogs.Position = UDim2.new(0.5, 0, 0.5, 0)
OpenLogs.Text = "Open Logs"
OpenLogs.Font = Enum.Font.GothamBlack
OpenLogs.TextColor3 = Color3.fromRGB(255, 255, 255)
OpenLogs.TextSize = 30
OpenLogs.BackgroundTransparency = 1
OpenLogs.ZIndex = 2
OpenLogs.MouseButton1Click:Connect(function()
    game:GetService("CoreGui").HatchLogs.Enabled = not game:GetService("CoreGui").HatchLogs.Enabled
end)

local UIPad = Instance.new("UIPadding")
UIPad.Parent = OpenLogs
UIPad.PaddingLeft = UDim.new(0, 25)
