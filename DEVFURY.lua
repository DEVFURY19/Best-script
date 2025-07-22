-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "LoadingScreen"
screenGui.IgnoreGuiInset = true
screenGui.ResetOnSpawn = false
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create full-screen white Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(1, 0, 1, 0)
frame.Position = UDim2.new(0, 0, 0, 0)
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255) -- white background
frame.BorderSizePixel = 0
frame.Parent = screenGui

-- Create warning TextLabel
local textLabel = Instance.new("TextLabel")
textLabel.Text = "PLEASE STAND BY\nTHE SCRIPT IS LOADING ⏳"
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.Position = UDim2.new(0, 0, 0, 0)
textLabel.BackgroundTransparency = 1
textLabel.TextColor3 = Color3.fromRGB(0, 0, 0) -- black text
textLabel.TextScaled = true
textLabel.Font = Enum.Font.SourceSansBold
textLabel.Parent = frame

-- Optional: fade in effect
frame.BackgroundTransparency = 1
textLabel.TextTransparency = 1

for i = 1, 10 do
    frame.BackgroundTransparency = 1 - i * 0.1
    textLabel.TextTransparency = 1 - i * 0.1
    wait(0.05)
end
