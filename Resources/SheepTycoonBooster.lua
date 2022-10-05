if game:GetService("CoreGui"):FindFirstChild("FeverDisplay") then game:GetService("CoreGui"):FindFirstChild("FeverDisplay"):Destroy() end
game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Top.ImageLabel.Fever.Visible = false

local screenGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
local instances = {
	["UICorner_3"] = Instance.new("UICorner"),
	["UIStroke_4"] = Instance.new("UIStroke"),
	["Frame_1"] = Instance.new("Frame"),
	["UIStroke_1"] = Instance.new("UIStroke"),
	["UIPadding_2"] = Instance.new("UIPadding"),
	["TextLabel_2"] = Instance.new("TextLabel"),
	["UICorner_2"] = Instance.new("UICorner"),
	["UIPadding_3"] = Instance.new("UIPadding"),
	["UIListLayout_1"] = Instance.new("UIListLayout"),
	["TextLabel_3"] = Instance.new("TextLabel"),
	["UIStroke_6"] = Instance.new("UIStroke"),
	["TextLabel_1"] = Instance.new("TextLabel"),
	["LocalScript_1"] = Instance.new("LocalScript"),
	["UIStroke_3"] = Instance.new("UIStroke"),
	["UICorner_1"] = Instance.new("UICorner"),
	["UIStroke_2"] = Instance.new("UIStroke"),
	["UIStroke_5"] = Instance.new("UIStroke"),
	["UIPadding_1"] = Instance.new("UIPadding"),
}

screenGui.Name = 'FeverDisplay'
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

instances.Frame_1.Parent = screenGui
instances.Frame_1.BackgroundColor3 = Color3.new(0.207843, 0.207843, 0.207843)
instances.Frame_1.BackgroundTransparency = 1
instances.Frame_1.Position = UDim2.new(0, 17, 0, 10)
instances.Frame_1.Size = UDim2.new(0, 310, 0, 105)
instances.Frame_1.Name = 'ObjectContainer'

instances.TextLabel_1.Parent = instances.Frame_1
instances.TextLabel_1.Font = Enum.Font.FredokaOne
instances.TextLabel_1.Text = '10% Group Bonus'
instances.TextLabel_1.TextColor3 = Color3.new(1, 1, 1)
instances.TextLabel_1.TextSize = 22
instances.TextLabel_1.TextXAlignment = Enum.TextXAlignment.Left
instances.TextLabel_1.BackgroundColor3 = Color3.new(0.0784314, 0.447059, 1)
instances.TextLabel_1.LayoutOrder = 1
instances.TextLabel_1.Size = UDim2.new(1, 0, 0, 30)
instances.TextLabel_1.Visible = false
instances.TextLabel_1.Name = 'GroupBonus'

instances.UICorner_1.Parent = instances.TextLabel_1

instances.UIPadding_1.Parent = instances.TextLabel_1
instances.UIPadding_1.PaddingLeft = UDim.new(0, 5)

instances.UIStroke_1.Parent = instances.TextLabel_1
instances.UIStroke_1.Color = Color3.new(0.227451, 0.235294, 0.388235)
instances.UIStroke_1.Name = 'TextStroke'

instances.UIStroke_2.Parent = instances.TextLabel_1
instances.UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
instances.UIStroke_2.Color = Color3.new(1, 1, 1)
instances.UIStroke_2.Thickness = 2
instances.UIStroke_2.Name = 'BorderStroke'

instances.UIListLayout_1.Parent = instances.Frame_1
instances.UIListLayout_1.Padding = UDim.new(0, 7)
instances.UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder

instances.TextLabel_2.Parent = instances.Frame_1
instances.TextLabel_2.Font = Enum.Font.FredokaOne
instances.TextLabel_2.Text = 'Wool Fever: 0s'
instances.TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
instances.TextLabel_2.TextSize = 22
instances.TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
instances.TextLabel_2.BackgroundColor3 = Color3.new(1, 0.25098, 0)
instances.TextLabel_2.LayoutOrder = 2
instances.TextLabel_2.Size = UDim2.new(1, 0, 0, 30)
instances.TextLabel_2.Name = 'WoolFever'

instances.UICorner_2.Parent = instances.TextLabel_2

instances.UIPadding_2.Parent = instances.TextLabel_2
instances.UIPadding_2.PaddingLeft = UDim.new(0, 5)

instances.UIStroke_3.Parent = instances.TextLabel_2
instances.UIStroke_3.Color = Color3.new(0.227451, 0.235294, 0.388235)
instances.UIStroke_3.Name = 'TextStroke'

instances.UIStroke_4.Parent = instances.TextLabel_2
instances.UIStroke_4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
instances.UIStroke_4.Color = Color3.new(1, 1, 1)
instances.UIStroke_4.Thickness = 2
instances.UIStroke_4.Name = 'BorderStroke'

instances.TextLabel_3.Parent = instances.Frame_1
instances.TextLabel_3.Font = Enum.Font.FredokaOne
instances.TextLabel_3.Text = 'Money Fever: 0s'
instances.TextLabel_3.TextColor3 = Color3.new(1, 1, 1)
instances.TextLabel_3.TextSize = 22
instances.TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left
instances.TextLabel_3.BackgroundColor3 = Color3.new(0.137255, 0.921569, 0)
instances.TextLabel_3.LayoutOrder = 3
instances.TextLabel_3.Size = UDim2.new(1, 0, 0, 30)
instances.TextLabel_3.Name = 'MoneyFever'

instances.UIStroke_5.Parent = instances.TextLabel_3
instances.UIStroke_5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
instances.UIStroke_5.Color = Color3.new(1, 1, 1)
instances.UIStroke_5.Thickness = 2
instances.UIStroke_5.Name = 'BorderStroke'

instances.UICorner_3.Parent = instances.TextLabel_3

instances.UIPadding_3.Parent = instances.TextLabel_3
instances.UIPadding_3.PaddingLeft = UDim.new(0, 5)

instances.UIStroke_6.Parent = instances.TextLabel_3
instances.UIStroke_6.Color = Color3.new(0.227451, 0.235294, 0.388235)
instances.UIStroke_6.Name = 'TextStroke'

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
			script.Parent[v .."Fever"].Text = v .." Fever: ".. ConvertTime(player["Fever_".. v].Value)
		end)	
	end
	
	if (player:IsInGroup(groupID)) then
		script.Parent.GroupBonus.Visible = true
	end
end
coroutine.wrap(Code_LocalScript_1)()
