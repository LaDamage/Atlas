local screenGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
local instances = {
	["LocalScript_2"] = Instance.new("LocalScript"),
	["UICorner_4"] = Instance.new("UICorner"),
	["UIListLayout_2"] = Instance.new("UIListLayout"),
	["Frame_5"] = Instance.new("Frame"),
	["UICorner_3"] = Instance.new("UICorner"),
	["UICorner_5"] = Instance.new("UICorner"),
	["LocalScript_3"] = Instance.new("LocalScript"),
	["UIPadding_3"] = Instance.new("UIPadding"),
	["TextButton_1"] = Instance.new("TextButton"),
	["TextLabel_2"] = Instance.new("TextLabel"),
	["UIPadding_1"] = Instance.new("UIPadding"),
	["TextLabel_3"] = Instance.new("TextLabel"),
	["Frame_2"] = Instance.new("Frame"),
	["Frame_4"] = Instance.new("Frame"),
	["Folder_1"] = Instance.new("Folder"),
	["UIPadding_2"] = Instance.new("UIPadding"),
	["UIListLayout_1"] = Instance.new("UIListLayout"),
	["ImageLabel_1"] = Instance.new("ImageLabel"),
	["ScrollingFrame_1"] = Instance.new("ScrollingFrame"),
	["UICorner_1"] = Instance.new("UICorner"),
	["UICorner_2"] = Instance.new("UICorner"),
	["TextLabel_1"] = Instance.new("TextLabel"),
	["Frame_3"] = Instance.new("Frame"),
	["Frame_1"] = Instance.new("Frame"),
	["LocalScript_1"] = Instance.new("LocalScript"),
}


screenGui.IgnoreGuiInset = true
screenGui.Name = '[SFS] Stat Tracker2'
screenGui.IgnoreGuiInset = true
screenGui.ResetOnSpawn = false

instances.Frame_1.Parent = screenGui
instances.Frame_1.AnchorPoint = Vector2.new(0.5, 0.5)
instances.Frame_1.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
instances.Frame_1.BorderSizePixel = 0
instances.Frame_1.Position = UDim2.new(0.5, 0, 0.5, 0)
instances.Frame_1.Size = UDim2.new(0, 450, 0, 275)
instances.Frame_1.Name = 'MainFrame'

instances.Frame_2.Parent = instances.Frame_1
instances.Frame_2.BackgroundColor3 = Color3.new(0.105882, 0.105882, 0.105882)
instances.Frame_2.BorderSizePixel = 0
instances.Frame_2.Size = UDim2.new(0, 450, 0, 30)
instances.Frame_2.Name = 'Topbar'

instances.UICorner_1.Parent = instances.Frame_2

instances.Frame_3.Parent = instances.Frame_2
instances.Frame_3.BackgroundColor3 = Color3.new(0.105882, 0.105882, 0.105882)
instances.Frame_3.BorderSizePixel = 0
instances.Frame_3.Position = UDim2.new(0, 0, 0.6666666865348816, 0)
instances.Frame_3.Size = UDim2.new(0, 450, 0, 10)
instances.Frame_3.Name = 'TopbarFix'

instances.TextLabel_1.Parent = instances.Frame_2
instances.TextLabel_1.Font = Enum.Font.Ubuntu
instances.TextLabel_1.RichText = true
instances.TextLabel_1.Text = 'Project <font color="rgb(85, 170, 255)">A</font>tlas'
instances.TextLabel_1.TextColor3 = Color3.new(1, 1, 1)
instances.TextLabel_1.TextSize = 24
instances.TextLabel_1.TextWrapped = true
instances.TextLabel_1.TextXAlignment = Enum.TextXAlignment.Left
instances.TextLabel_1.BackgroundColor3 = Color3.new(1, 1, 1)
instances.TextLabel_1.BackgroundTransparency = 1
instances.TextLabel_1.Size = UDim2.new(0, 450, 0, 30)
instances.TextLabel_1.Name = 'Title'

instances.UIPadding_1.Parent = instances.TextLabel_1
instances.UIPadding_1.PaddingLeft = UDim.new(0, 8)

instances.TextButton_1.Parent = instances.Frame_2
instances.TextButton_1.Font = Enum.Font.Ubuntu
instances.TextButton_1.Text = 'X'
instances.TextButton_1.TextColor3 = Color3.new(1, 1, 1)
instances.TextButton_1.TextSize = 18
instances.TextButton_1.TextWrapped = true
instances.TextButton_1.AnchorPoint = Vector2.new(0, 0.5)
instances.TextButton_1.BackgroundColor3 = Color3.new(0.643137, 0.133333, 0.188235)
instances.TextButton_1.BorderSizePixel = 0
instances.TextButton_1.Position = UDim2.new(0.9399999976158142, 0, 0.5, 0)
instances.TextButton_1.Size = UDim2.new(0, 22, 0, 22)
instances.TextButton_1.Name = 'MinimizeButton'

instances.UICorner_2.Parent = instances.TextButton_1
instances.UICorner_2.CornerRadius = UDim.new(0, 4)

instances.LocalScript_1.Parent = instances.TextButton_1
instances.LocalScript_1.Name = 'Toggle'

instances.UICorner_3.Parent = instances.Frame_1

instances.Frame_4.Parent = instances.Frame_1
instances.Frame_4.AnchorPoint = Vector2.new(0.5, 0.5)
instances.Frame_4.BackgroundColor3 = Color3.new(0.184314, 0.184314, 0.184314)
instances.Frame_4.Position = UDim2.new(0.5, 0, 0.5525000095367432, 0)
instances.Frame_4.Size = UDim2.new(0, 440, 0, 235)
instances.Frame_4.Name = 'Holder'

instances.UICorner_4.Parent = instances.Frame_4
instances.UICorner_4.CornerRadius = UDim.new(0, 6)

instances.ScrollingFrame_1.Parent = instances.Frame_4
instances.ScrollingFrame_1.AutomaticCanvasSize = Enum.AutomaticSize.Y
instances.ScrollingFrame_1.CanvasSize = UDim2.new(0, 0, 0, 0)
instances.ScrollingFrame_1.ScrollBarImageColor3 = Color3.new(0, 0, 0)
instances.ScrollingFrame_1.ScrollBarThickness = 0
instances.ScrollingFrame_1.Active = true
instances.ScrollingFrame_1.AnchorPoint = Vector2.new(0.5, 0.5)
instances.ScrollingFrame_1.BackgroundColor3 = Color3.new(0.168627, 0.168627, 0.168627)
instances.ScrollingFrame_1.BackgroundTransparency = 1
instances.ScrollingFrame_1.BorderSizePixel = 0
instances.ScrollingFrame_1.Position = UDim2.new(0.5, 0, 0.5, 0)
instances.ScrollingFrame_1.Size = UDim2.new(1, 0, 1, 0)

instances.UIListLayout_1.Parent = instances.ScrollingFrame_1
instances.UIListLayout_1.Padding = UDim.new(0, 5)
instances.UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder

instances.UIPadding_2.Parent = instances.ScrollingFrame_1
instances.UIPadding_2.PaddingLeft = UDim.new(0, 5)
instances.UIPadding_2.PaddingRight = UDim.new(0, 5)
instances.UIPadding_2.PaddingTop = UDim.new(0, 5)

instances.LocalScript_2.Parent = instances.ScrollingFrame_1
instances.LocalScript_2.Name = 'Tracker'

instances.Folder_1.Parent = instances.ScrollingFrame_1
instances.Folder_1.Name = 'Template'

instances.Frame_5.Parent = instances.Folder_1
instances.Frame_5.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
instances.Frame_5.Size = UDim2.new(1, 0, 0.15000000596046448, 0)
instances.Frame_5.Visible = false
instances.Frame_5.Name = 'frame'

instances.UICorner_5.Parent = instances.Frame_5
instances.UICorner_5.CornerRadius = UDim.new(0, 6)

instances.ImageLabel_1.Parent = instances.Frame_5
instances.ImageLabel_1.Image = 'rbxassetid://11287000768'
instances.ImageLabel_1.AnchorPoint = Vector2.new(0, 0.5)
instances.ImageLabel_1.BackgroundColor3 = Color3.new(1, 1, 1)
instances.ImageLabel_1.BackgroundTransparency = 1
instances.ImageLabel_1.Position = UDim2.new(0, 5, 0.5, 0)
instances.ImageLabel_1.Size = UDim2.new(0, 26, 0, 26)
instances.ImageLabel_1.Name = 'CurrencyIcon'

instances.TextLabel_2.Parent = instances.Frame_5
instances.TextLabel_2.Font = Enum.Font.Ubuntu
instances.TextLabel_2.Text = '0/min'
instances.TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
instances.TextLabel_2.TextSize = 18
instances.TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
instances.TextLabel_2.BackgroundTransparency = 1
instances.TextLabel_2.Position = UDim2.new(0, 295, 0, 0)
instances.TextLabel_2.Size = UDim2.new(0, 192, 0, 35)
instances.TextLabel_2.Name = 'PerMinute'

instances.UIListLayout_2.Parent = instances.Frame_5
instances.UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
instances.UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
instances.UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center

instances.TextLabel_3.Parent = instances.Frame_5
instances.TextLabel_3.Font = Enum.Font.Ubuntu
instances.TextLabel_3.Text = '0/hr'
instances.TextLabel_3.TextColor3 = Color3.new(1, 1, 1)
instances.TextLabel_3.TextSize = 18
instances.TextLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)
instances.TextLabel_3.BackgroundTransparency = 1
instances.TextLabel_3.Position = UDim2.new(0, 295, 0, 0)
instances.TextLabel_3.Size = UDim2.new(0, 192, 0, 35)
instances.TextLabel_3.Name = 'PerHour'

instances.UIPadding_3.Parent = instances.Frame_5
instances.UIPadding_3.PaddingLeft = UDim.new(0, 9)

instances.LocalScript_3.Parent = instances.Frame_1
instances.LocalScript_3.Name = 'Dragify'

local DO_NOT_COPY_THIS_VARIABLE_001 = {}
local DO_NOT_COPY_THIS_VARIABLE_002 = require

local require = function(object)
	local module = DO_NOT_COPY_THIS_VARIABLE_001[object]

	if module then
		return DO_NOT_COPY_THIS_VARIABLE_001[object]()
	end

	return DO_NOT_COPY_THIS_VARIABLE_002(object)
end


function Code_LocalScript_1() --Toggle
	local script = instances.LocalScript_1

	local Toggled = false
	
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Parent:Destroy()
		--[[
		Toggled = not Toggled
		
		if Toggled then
			script.Parent.Parent.Parent.Size = UDim2.new(0, 450, 0, 30)
			script.Parent.Parent.Parent.Holder.Visible = false
			script.Parent.Parent.TopbarFix.Visible = false
		else
			script.Parent.Parent.Parent.Size = UDim2.new(0, 450, 0, 275)
			script.Parent.Parent.Parent.Holder.Visible = true
			script.Parent.Parent.TopbarFix.Visible = true
		end]]
	end)
end
coroutine.wrap(Code_LocalScript_1)()


function Code_LocalScript_2() --Tracker
	local script = instances.LocalScript_2
	_G.StatData = {}
	
	local KnitPackages = require(game:GetService("ReplicatedStorage").Packages.Knit)
	local DataController = KnitPackages.GetController("DataController")
	
	local NumberUtility = require(game:GetService("ReplicatedStorage").Packages.Utility.NumberUtility)
	
	for stat, icon in pairs(_G.Tracking) do
		local newFrame = script.Parent.Template.frame:Clone()
		newFrame.Parent = script.Parent
		newFrame.Visible = true
		newFrame.Name = stat
		
		newFrame.CurrencyIcon.Image  = icon
		newFrame.PerMinute.Text = "0/min"
		newFrame.PerHour.Text = "0/hr"
		
		spawn(function()
			while true do
				_G.StatData["start_".. stat] = DataController:GetData("PlayerData")[stat]
				
				task.wait(60)
				
				_G.StatData["end_".. stat] = DataController:GetData("PlayerData")[stat]
				
				_G.StatData["diff_".. stat] = tonumber(_G.StatData["end_".. stat]) - _G.StatData["start_".. stat]
				
				if stat == "Power" or stat == "Coins" then
					newFrame:FindFirstChild("PerMinute").Text = NumberUtility.CurrencyEnding(_G.StatData["diff_".. stat]) .."/min"
					newFrame:FindFirstChild("PerHour").Text = NumberUtility.CurrencyEnding(_G.StatData["diff_".. stat] * 60) .."/hr"
				else
					newFrame:FindFirstChild("PerMinute").Text = NumberUtility.AddCommas(_G.StatData["diff_".. stat]) .."/min"
					newFrame:FindFirstChild("PerHour").Text = NumberUtility.AddCommas(_G.StatData["diff_".. stat] * 60) .."/hr"
				end
					
				if _G.StatData["diff_".. stat] < 0 then
				    newFrame:FindFirstChild("PerMinute").Text = "0/min"
				    newFrame:FindFirstChild("PerHour").Text = "0/hr"
				end
			end
		end)
	end
	
end
coroutine.wrap(Code_LocalScript_2)()


function Code_LocalScript_3() --Dragify
	local script = instances.LocalScript_3

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(Code_LocalScript_3)()
