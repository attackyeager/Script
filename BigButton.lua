while true do
    local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local touchGui = playerGui:WaitForChild("TouchGui")
local touchFrame = touchGui:WaitForChild("TouchControlFrame")
local jumpButton = touchFrame:WaitForChild("JumpButton")


jumpButton.Size = UDim2.new(0.121, 0, 0.3, 0) -- Increased size for a more prominent circle
jumpButton.Position = UDim2.new(1, -165, 1, -140)


local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(1, 0)
uiCorner.Parent = jumpButton

    task.wait()
end
