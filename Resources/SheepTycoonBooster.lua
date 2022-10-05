if game:GetService("CoreGui"):FindFirstChild("FeverDisplay") then game:GetService("CoreGui"):FindFirstChild("FeverDisplay"):Destroy() end

local screenGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
local instances = {
	["UIStroke_4"] = Instance.new("UIStroke"),
	["UIPadding_2"] = Instance.new("UIPadding"),
	["LocalScript_1"] = Instance.new("LocalScript"),
	["UICorner_1"] = Instance.new("UICorner"),
	["UIPadding_3"] = Instance.new("UIPadding"),
	["UIPadding_1"] = Instance.new("UIPadding"),
	["UIPadding_4"] = Instance.new("UIPadding"),
	["Frame_2"] = Instance.new("Frame"),
	["TextLabel_2"] = Instance.new("TextLabel"),
	["UIStroke_2"] = Instance.new("UIStroke"),
	["TextLabel_1"] = Instance.new("TextLabel"),
	["TextLabel_3"] = Instance.new("TextLabel"),
	["UIListLayout_1"] = Instance.new("UIListLayout"),
	["Frame_1"] = Instance.new("Frame"),
	["UIStroke_3"] = Instance.new("UIStroke"),
	["UIStroke_1"] = Instance.new("UIStroke"),
}

screenGui.Name = 'FeverDisplay'
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

instances.Frame_1.Parent = screenGui
instances.Frame_1.BackgroundColor3 = Color3.new(0.207843, 0.207843, 0.207843)
instances.Frame_1.Position = UDim2.new(0, 10, 0, 10)
instances.Frame_1.Size = UDim2.new(0, 310, 0, 100)
instances.Frame_1.Name = 'ObjectContainer'

instances.UICorner_1.Parent = instances.Frame_1

instances.UIStroke_1.Parent = instances.Frame_1
instances.UIStroke_1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
instances.UIStroke_1.Color = Color3.new(0.72549, 0.72549, 0.72549)
instances.UIStroke_1.Thickness = 2

instances.Frame_2.Parent = instances.Frame_1
instances.Frame_2.AnchorPoint = Vector2.new(0.5, 0.5)
instances.Frame_2.BackgroundColor3 = Color3.new(1, 1, 1)
instances.Frame_2.BackgroundTransparency = 1
instances.Frame_2.Position = UDim2.new(0.5, 0, 0.5, 0)
instances.Frame_2.Size = UDim2.new(1, 0, 1, 0)
instances.Frame_2.Name = 'TextHolder'

instances.UIListLayout_1.Parent = instances.Frame_2
instances.UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder

instances.TextLabel_1.Parent = instances.Frame_2
instances.TextLabel_1.Font = Enum.Font.FredokaOne
instances.TextLabel_1.Text = 'Group Bonus: ❎​'
instances.TextLabel_1.TextColor3 = Color3.new(1, 1, 1)
instances.TextLabel_1.TextSize = 22
instances.TextLabel_1.TextXAlignment = Enum.TextXAlignment.Left
instances.TextLabel_1.BackgroundColor3 = Color3.new(1, 1, 1)
instances.TextLabel_1.BackgroundTransparency = 1
instances.TextLabel_1.Size = UDim2.new(1, 0, 0, 30)
instances.TextLabel_1.Name = 'GroupBonus'

instances.UIStroke_2.Parent = instances.TextLabel_1
instances.UIStroke_2.Color = Color3.new(0.529412, 0.529412, 0.529412)

instances.UIPadding_1.Parent = instances.TextLabel_1
instances.UIPadding_1.PaddingLeft = UDim.new(0, 5)

instances.TextLabel_2.Parent = instances.Frame_2
instances.TextLabel_2.Font = Enum.Font.FredokaOne
instances.TextLabel_2.Text = 'Wool Fever: 24d 59h 59m 59s'
instances.TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
instances.TextLabel_2.TextSize = 22
instances.TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
instances.TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
instances.TextLabel_2.BackgroundTransparency = 1
instances.TextLabel_2.Size = UDim2.new(1, 0, 0, 30)
instances.TextLabel_2.Name = 'WoolFever'

instances.UIStroke_3.Parent = instances.TextLabel_2
instances.UIStroke_3.Color = Color3.new(0.529412, 0.529412, 0.529412)

instances.UIPadding_2.Parent = instances.TextLabel_2
instances.UIPadding_2.PaddingLeft = UDim.new(0, 5)

instances.TextLabel_3.Parent = instances.Frame_2
instances.TextLabel_3.Font = Enum.Font.FredokaOne
instances.TextLabel_3.Text = 'Money Fever: 24d 59h 59m 59s'
instances.TextLabel_3.TextColor3 = Color3.new(1, 1, 1)
instances.TextLabel_3.TextSize = 22
instances.TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left
instances.TextLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)
instances.TextLabel_3.BackgroundTransparency = 1
instances.TextLabel_3.Size = UDim2.new(1, 0, 0, 30)
instances.TextLabel_3.Name = 'MoneyFever'

instances.UIStroke_4.Parent = instances.TextLabel_3
instances.UIStroke_4.Color = Color3.new(0.529412, 0.529412, 0.529412)

instances.UIPadding_3.Parent = instances.TextLabel_3
instances.UIPadding_3.PaddingLeft = UDim.new(0, 5)

instances.UIPadding_4.Parent = instances.Frame_1
instances.UIPadding_4.PaddingBottom = UDim.new(0, 5)
instances.UIPadding_4.PaddingLeft = UDim.new(0, 5)
instances.UIPadding_4.PaddingRight = UDim.new(0, 5)
instances.UIPadding_4.PaddingTop = UDim.new(0, 5)

instances.LocalScript_1.Parent = instances.Frame_1
instances.LocalScript_1.Name = 'TextHandler'

local DO_NOT_COPY_THIS_VARIABLE_001 = {}
local DO_NOT_COPY_THIS_VARIABLE_002 = require

local require = function(object)
	local module = DO_NOT_COPY_THIS_VARIABLE_001[object]

	if module then
		return DO_NOT_COPY_THIS_VARIABLE_001[object]()
	end

	return DO_NOT_COPY_THIS_VARIABLE_002(object)
end


function Code_LocalScript_1() --TextHandler
	local script = instances.LocalScript_1

	local groupID = 15909547
	local feverNames = {"Wool", "Money"}
	
	local player = game:GetService("Players").LocalPlayer
	
	local ConvertTime = function(s)
		local day = math.floor(s / 86400)
		s = s - day * 86400
		local hour = math.floor(s / 3600)
		s = s - hour * 3600
		local minute = math.floor(s / 60);
		s = s - minute * 60
		s = s > 0 and math.floor(s) .. "s " or ""
		return (day > 0 and day .. "d " or "") .. (hour > 0 and hour .. "h " or "") .. (minute > 0 and minute .. "m " or "") .. s
	end
	
	for _, v in pairs(feverNames) do 
		player["Fever_".. v].Changed:Connect(function()
			script.Parent.TextHolder[v .."Fever"].Text = v .." Fever: ".. ConvertTime(player["Fever_".. v].Value)
		end)	
	end
	
	if (player:IsInGroup(groupID)) then
		script.Parent.TextHolder.GroupBonus.Text = "Group Bonus: ✅"
	else
		script.Parent.TextHolder.GroupBonus.Text = "Group Bonus: ❎"
	end
end
coroutine.wrap(Code_LocalScript_1)()
