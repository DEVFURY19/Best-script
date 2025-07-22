-- GardenLoadingScreen.lua

local GardenLoadingScreen = {}

-- Variables for progress
local progress = 0
local isLoading = true

-- UI references
local loadingBar
local loadingText
local tipsText

-- Garden-themed tips
local gardenTips = {
    "Planting seeds...",
    "Watering the soil...",
    "Sunlight is helping your plants grow...",
    "Bees are pollinating flowers...",
    "Composting to enrich the soil..."
}

-- Initialization function (called once)
function GardenLoadingScreen:Start()
    -- Find UI elements
    loadingBar = self.transform:Find("LoadingBar"):GetComponent("UnityEngine.UI.Slider")
    loadingText = self.transform:Find("LoadingText"):GetComponent("UnityEngine.UI.Text")
    tipsText = self.transform:Find("TipText"):GetComponent("UnityEngine.UI.Text")

    -- Start coroutine for simulating loading
    self:StartCoroutine(self:SimulateLoading())
end

-- Coroutine to simulate loading progress
function GardenLoadingScreen:SimulateLoading()
    while progress < 1 do
        progress = progress + UnityEngine.Time.deltaTime * 0.25  -- adjust speed as needed
        loadingBar.value = progress
        loadingText.text = string.format("Loading: %d%%", math.floor(progress * 100))

        -- Change tip every 20% progress
        local tipIndex = math.min(math.floor(progress * 5) + 1, #gardenTips)
        tipsText.text = gardenTips[tipIndex]

        coroutine.yield(nil)
    end

    -- When done loading
    isLoading = false
    self:OnLoadingComplete()
end

-- Callback when loading is finished
function GardenLoadingScreen:OnLoadingComplete()
    loadingText.text = "Let's Grow!"
    tipsText.text = "Tap to begin your garden journey 🌼"
end

return GardenLoadingScreen
