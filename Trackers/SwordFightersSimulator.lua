local screenGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
local instances = {
	["LocalScript_3"] = Instance.new("LocalScript"),
	["UICorner_4"] = Instance.new("UICorner"),
	["ScrollingFrame_1"] = Instance.new("ScrollingFrame"),
	["UIPadding_9"] = Instance.new("UIPadding"),
	["UICorner_6"] = Instance.new("UICorner"),
	["TextLabel_3"] = Instance.new("TextLabel"),
	["LocalScript_1"] = Instance.new("LocalScript"),
	["UIListLayout_1"] = Instance.new("UIListLayout"),
	["UIListLayout_4"] = Instance.new("UIListLayout"),
	["UIPadding_1"] = Instance.new("UIPadding"),
	["UICorner_3"] = Instance.new("UICorner"),
	["Frame_4"] = Instance.new("Frame"),
	["TextLabel_5"] = Instance.new("TextLabel"),
	["Frame_1"] = Instance.new("Frame"),
	["TextLabel_6"] = Instance.new("TextLabel"),
	["TextButton_1"] = Instance.new("TextButton"),
	["ImageLabel_3"] = Instance.new("ImageLabel"),
	["Frame_5"] = Instance.new("Frame"),
	["UICorner_1"] = Instance.new("UICorner"),
	["LocalScript_2"] = Instance.new("LocalScript"),
	["Frame_2"] = Instance.new("Frame"),
	["UIPadding_5"] = Instance.new("UIPadding"),
	["UIListLayout_3"] = Instance.new("UIListLayout"),
	["TextLabel_1"] = Instance.new("TextLabel"),
	["Frame_6"] = Instance.new("Frame"),
	["UIPadding_7"] = Instance.new("UIPadding"),
	["TextLabel_2"] = Instance.new("TextLabel"),
	["UIPadding_8"] = Instance.new("UIPadding"),
	["UICorner_7"] = Instance.new("UICorner"),
	["Frame_7"] = Instance.new("Frame"),
	["UIPadding_3"] = Instance.new("UIPadding"),
	["UIListLayout_2"] = Instance.new("UIListLayout"),
	["UIPadding_6"] = Instance.new("UIPadding"),
	["ImageLabel_2"] = Instance.new("ImageLabel"),
	["TextLabel_7"] = Instance.new("TextLabel"),
	["Frame_3"] = Instance.new("Frame"),
	["TextLabel_4"] = Instance.new("TextLabel"),
	["UICorner_5"] = Instance.new("UICorner"),
	["UIPadding_4"] = Instance.new("UIPadding"),
	["ImageLabel_1"] = Instance.new("ImageLabel"),
	["UIPadding_2"] = Instance.new("UIPadding"),
	["UICorner_2"] = Instance.new("UICorner"),
}


screenGui.IgnoreGuiInset = true
screenGui.Name = '[SFS] Stat Tracker'
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
instances.TextButton_1.FontFace.Bold = true
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

instances.Frame_5.Parent = instances.ScrollingFrame_1
instances.Frame_5.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
instances.Frame_5.Size = UDim2.new(1, 0, 0.15000000596046448, 0)
instances.Frame_5.Name = 'Power'

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

instances.UIListLayout_1.Parent = instances.Frame_5
instances.UIListLayout_1.FillDirection = Enum.FillDirection.Horizontal
instances.UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder
instances.UIListLayout_1.VerticalAlignment = Enum.VerticalAlignment.Center

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

instances.UIPadding_2.Parent = instances.Frame_5
instances.UIPadding_2.PaddingLeft = UDim.new(0, 9)

instances.UIListLayout_2.Parent = instances.ScrollingFrame_1
instances.UIListLayout_2.Padding = UDim.new(0, 5)
instances.UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

instances.UIPadding_3.Parent = instances.ScrollingFrame_1
instances.UIPadding_3.PaddingLeft = UDim.new(0, 5)
instances.UIPadding_3.PaddingRight = UDim.new(0, 5)
instances.UIPadding_3.PaddingTop = UDim.new(0, 5)

instances.Frame_6.Parent = instances.ScrollingFrame_1
instances.Frame_6.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
instances.Frame_6.Size = UDim2.new(1, 0, 0.15000000596046448, 0)
instances.Frame_6.Name = 'Eggs'

instances.ImageLabel_2.Parent = instances.Frame_6
instances.ImageLabel_2.Image = 'rbxassetid://12114861530'
instances.ImageLabel_2.AnchorPoint = Vector2.new(0, 0.5)
instances.ImageLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
instances.ImageLabel_2.BackgroundTransparency = 1
instances.ImageLabel_2.Position = UDim2.new(0, 0, 0.5, 0)
instances.ImageLabel_2.Size = UDim2.new(0, 35, 0, 35)
instances.ImageLabel_2.Name = 'CurrencyIcon'

instances.UICorner_6.Parent = instances.Frame_6
instances.UICorner_6.CornerRadius = UDim.new(0, 6)

instances.UIListLayout_3.Parent = instances.Frame_6
instances.UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
instances.UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
instances.UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Center

instances.UIPadding_4.Parent = instances.Frame_6
instances.UIPadding_4.PaddingLeft = UDim.new(0, 5)

instances.TextLabel_4.Parent = instances.Frame_6
instances.TextLabel_4.Font = Enum.Font.Ubuntu
instances.TextLabel_4.Text = '0/min'
instances.TextLabel_4.TextColor3 = Color3.new(1, 1, 1)
instances.TextLabel_4.TextSize = 18
instances.TextLabel_4.BackgroundColor3 = Color3.new(1, 1, 1)
instances.TextLabel_4.BackgroundTransparency = 1
instances.TextLabel_4.Position = UDim2.new(0, 295, 0, 0)
instances.TextLabel_4.Size = UDim2.new(0, 192, 0, 35)
instances.TextLabel_4.Name = 'PerMinute'

instances.UIPadding_5.Parent = instances.TextLabel_4
instances.UIPadding_5.PaddingRight = UDim.new(0, 7)

instances.TextLabel_5.Parent = instances.Frame_6
instances.TextLabel_5.Font = Enum.Font.Ubuntu
instances.TextLabel_5.Text = '0/hr'
instances.TextLabel_5.TextColor3 = Color3.new(1, 1, 1)
instances.TextLabel_5.TextSize = 18
instances.TextLabel_5.BackgroundColor3 = Color3.new(1, 1, 1)
instances.TextLabel_5.BackgroundTransparency = 1
instances.TextLabel_5.Position = UDim2.new(0, 295, 0, 0)
instances.TextLabel_5.Size = UDim2.new(0, 192, 0, 35)
instances.TextLabel_5.Name = 'PerHour'

instances.UIPadding_6.Parent = instances.TextLabel_5
instances.UIPadding_6.PaddingRight = UDim.new(0, 7)

instances.LocalScript_2.Parent = instances.ScrollingFrame_1
instances.LocalScript_2.Name = 'Tracker'

instances.Frame_7.Parent = instances.ScrollingFrame_1
instances.Frame_7.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
instances.Frame_7.Size = UDim2.new(1, 0, 0.15000000596046448, 0)
instances.Frame_7.Name = 'Swings'

instances.ImageLabel_3.Parent = instances.Frame_7
instances.ImageLabel_3.Image = 'rbxassetid://742820144'
instances.ImageLabel_3.AnchorPoint = Vector2.new(0, 0.5)
instances.ImageLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)
instances.ImageLabel_3.BackgroundTransparency = 1
instances.ImageLabel_3.Position = UDim2.new(0, 0, 0.5, 0)
instances.ImageLabel_3.Size = UDim2.new(0, 35, 0, 35)
instances.ImageLabel_3.Name = 'CurrencyIcon'

instances.UICorner_7.Parent = instances.Frame_7
instances.UICorner_7.CornerRadius = UDim.new(0, 6)

instances.UIListLayout_4.Parent = instances.Frame_7
instances.UIListLayout_4.FillDirection = Enum.FillDirection.Horizontal
instances.UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
instances.UIListLayout_4.VerticalAlignment = Enum.VerticalAlignment.Center

instances.UIPadding_7.Parent = instances.Frame_7
instances.UIPadding_7.PaddingLeft = UDim.new(0, 5)

instances.TextLabel_6.Parent = instances.Frame_7
instances.TextLabel_6.Font = Enum.Font.Ubuntu
instances.TextLabel_6.Text = '0/min'
instances.TextLabel_6.TextColor3 = Color3.new(1, 1, 1)
instances.TextLabel_6.TextSize = 18
instances.TextLabel_6.BackgroundColor3 = Color3.new(1, 1, 1)
instances.TextLabel_6.BackgroundTransparency = 1
instances.TextLabel_6.Position = UDim2.new(0, 295, 0, 0)
instances.TextLabel_6.Size = UDim2.new(0, 192, 0, 35)
instances.TextLabel_6.Name = 'PerMinute'

instances.UIPadding_8.Parent = instances.TextLabel_6
instances.UIPadding_8.PaddingRight = UDim.new(0, 7)

instances.TextLabel_7.Parent = instances.Frame_7
instances.TextLabel_7.Font = Enum.Font.Ubuntu
instances.TextLabel_7.Text = '0/hr'
instances.TextLabel_7.TextColor3 = Color3.new(1, 1, 1)
instances.TextLabel_7.TextSize = 18
instances.TextLabel_7.BackgroundColor3 = Color3.new(1, 1, 1)
instances.TextLabel_7.BackgroundTransparency = 1
instances.TextLabel_7.Position = UDim2.new(0, 295, 0, 0)
instances.TextLabel_7.Size = UDim2.new(0, 192, 0, 35)
instances.TextLabel_7.Name = 'PerHour'

instances.UIPadding_9.Parent = instances.TextLabel_7
instances.UIPadding_9.PaddingRight = UDim.new(0, 7)

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

	local KnitPackages = require(game:GetService("ReplicatedStorage").Packages.Knit)
	local DataController = KnitPackages.GetController("DataController")
	
	local NumberUtility = require(game:GetService("ReplicatedStorage").Packages.Utility.NumberUtility)
	
	while true do
		local power_start = DataController:GetData("PlayerData").Power
		local hatched_start = DataController:GetData("PlayerData").EggsOpened
		local swings_start = DataController:GetData("PlayerData").SwordSwings
		
		task.wait(60)
		
		local power_end = DataController:GetData("PlayerData").Power
		local hatched_end = DataController:GetData("PlayerData").EggsOpened
		local swings_end = DataController:GetData("PlayerData").SwordSwings
		
		local power_diff = tonumber(power_end) - tonumber(power_start)
		local hatched_diff = tonumber(hatched_end) - tonumber(hatched_start)
		local swings_diff = tonumber(swings_end) - tonumber(swings_start)
		
		script.Parent.Power.PerMinute.Text = NumberUtility.CurrencyEnding(power_diff) .."/min"
		script.Parent.Eggs.PerMinute.Text = NumberUtility.AddCommas(hatched_diff) .."/min"
		script.Parent.Swings.PerMinute.Text = NumberUtility.AddCommas(swings_diff) .."/min"
		
		script.Parent.Power.PerHour.Text = NumberUtility.CurrencyEnding(power_diff * 60) .."/hr"
		script.Parent.Eggs.PerHour.Text = NumberUtility.AddCommas(hatched_diff * 60) .."/hr"
		script.Parent.Swings.PerHour.Text = NumberUtility.AddCommas(swings_diff * 60) .."/hr"
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
