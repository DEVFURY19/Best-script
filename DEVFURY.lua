-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "LoadingScreen"
screenGui.IgnoreGuiInset = true
screenGui.ResetOnSpawn = false
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create full-screen stylish Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(1, 0, 1, 0)
frame.Position = UDim2.new(0, 0, 0, 0)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30) -- modern dark gray
frame.BorderSizePixel = 0
frame.Parent = screenGui

-- Create glowing TextLabel
local textLabel = Instance.new("TextLabel")
textLabel.Text = "PLEASE STAND BY\nTHE SCRIPT IS LOADING ⏳"
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.Position = UDim2.new(0, 0, 0, 0)
textLabel.BackgroundTransparency = 1
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255) -- white text
textLabel.TextScaled = true
textLabel.Font = Enum.Font.GothamBold
textLabel.Parent = frame

-- Optional: UIStroke for glowing effect
local stroke = Instance.new("UIStroke")
stroke.Thickness = 2
stroke.Color = Color3.fromRGB(0, 170, 255) -- neon blue glow
stroke.Parent = textLabel

-- Optional: fade-in effect
frame.BackgroundTransparency = 1
textLabel.TextTransparency = 1
stroke.Transparency = 1

for i = 1, 10 do
    local t = i * 0.1
    frame.BackgroundTransparency = 1 - t
    textLabel.TextTransparency = 1 - t
    stroke.Transparency = 1 - t
    wait(0.05)
end
