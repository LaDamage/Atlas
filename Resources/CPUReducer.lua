local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = 'CPUSaver'
ScreenGui.Enabled = false
ScreenGui.Parent = game:GetService("CoreGui")

local TextLabel = Instance.new("TextLabel")
TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextStrokeTransparency = 1
TextLabel.AnchorPoint = Vector2.new(.5, .5)
TextLabel.Position = UDim2.fromScale(.5, .5)
TextLabel.Size = UDim2.fromScale(1.5, 1.5)
TextLabel.Font = Enum.Font.RobotoMono
TextLabel.TextSize = 24
TextLabel.Text = "CPU Saver is enabled.\n\nPress any key to disable manually."
TextLabel.Parent = ScreenGui

local WindowFocusReleasedFunction = function()
    ScreenGui.Enabled = true

    RunService:Set3dRenderingEnabled(false)
    setfpscap(10)
    return
end

local WindowFocusedFunction = function()
    ScreenGui.Enabled = false

    RunService:Set3dRenderingEnabled(true)
    setfpscap(360)
    return
end

local Initialize = function()
    UserInputService.WindowFocusReleased:Connect(WindowFocusReleasedFunction)
    UserInputService.WindowFocused:Connect(WindowFocusedFunction)
    return
end

Initialize()
