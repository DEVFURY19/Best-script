-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "GrowAGardenLoadingGUI"
screenGui.IgnoreGuiInset = true
screenGui.ResetOnSpawn = false
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create full-screen garden-style Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(1, 0, 1, 0)
frame.Position = UDim2.new(0, 0, 0, 0)
frame.BackgroundColor3 = Color3.fromRGB(34, 139, 34) -- forest green background
frame.BorderSizePixel = 0
frame.Parent = screenGui

-- Create Garden Game TextLabel
local textLabel = Instance.new("TextLabel")
textLabel.Text = "🌻 Welcome to Grow a Garden! 🌿\nLoading your tools and seeds..."
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.Position = UDim2.new(0, 0, 0, 0)
textLabel.BackgroundTransparency = 1
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255) -- white text
textLabel.TextScaled = true
textLabel.Font = Enum.Font.GothamBold
textLabel.Parent = frame

-- Add a soft glow using UIStroke
local stroke = Instance.new("UIStroke")
stroke.Thickness = 2
stroke.Color = Color3.fromRGB(144, 238, 144) -- light green glow
stroke.Transparency = 1
stroke.Parent = textLabel

-- Fade in effect
frame.BackgroundTransparency = 1
textLabel.TextTransparency = 1

for i = 1, 10 do
    local t = i * 0.1
    frame.BackgroundTransparency = 1 - t
    textLabel.TextTransparency = 1 - t
    stroke.Transparency = 1 - t
    wait(0.05)
end

-- Optional: wait and remove the GUI
wait(2)
screenGui:Destroy()
