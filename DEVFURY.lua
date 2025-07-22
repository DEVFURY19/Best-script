-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "LoadingScreen"
screenGui.IgnoreGuiInset = true
screenGui.ResetOnSpawn = false
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create full-screen custom Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(1, 0, 1, 0)
frame.Position = UDim2.new(0, 0, 0, 0)
frame.BackgroundColor3 = Color3.fromRGB(20, 20, 30) -- custom dark-blue tone
frame.BorderSizePixel = 0
frame.Parent = screenGui

-- Create personalized TextLabel
local textLabel = Instance.new("TextLabel")
textLabel.Text = "💻 Welcome to DEVFURY script\nLoading your personal setup..."
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.Position = UDim2.new(0, 0, 0, 0)
textLabel.BackgroundTransparency = 1
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.TextScaled = true
textLabel.Font = Enum.Font.GothamSemibold
textLabel.Parent = frame

-- UIStroke for glow
local stroke = Instance.new("UIStroke")
stroke.Thickness = 2
stroke.Color = Color3.fromRGB(255, 100, 150) -- personal pink glow
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

-- Optional: delay and auto-destroy GUI after load
wait(2) -- wait 2 seconds after fade-in
screenGui:Destroy()
