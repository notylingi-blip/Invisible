local CoreGui = game:GetService("CoreGui")
local player = game.Players.LocalPlayer
local QuantumGhost = Instance.new("ScreenGui", CoreGui)
local Frame = Instance.new("Frame", QuantumGhost)
local Button = Instance.new("TextButton", Frame)
local Corner = Instance.new("UICorner", Frame)

-- Layouting
Frame.Size = UDim2.new(0, 150, 0, 80)
Frame.Position = UDim2.new(0.5, -75, 0.1, 0)
Frame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Frame.Active = true
Frame.Draggable = true

Button.Size = UDim2.new(0.8, 0, 0, 40)
Button.Position = UDim2.new(0.1, 0, 0.25, 0)
Button.Text = "GO GHOST"
Button.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Instance.new("UICorner", Button)

-- Action
Button.MouseButton1Click:Connect(function()
    for _, v in pairs(player.Character:GetDescendants()) do
        if v:IsA("BasePart") or v:IsA("Decal") then v.Transparency = 1 end
    end
    Button.Text = "ACTIVE!"
end)
