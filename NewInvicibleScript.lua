-- QUANTUM V13.0 - FIX EDITION (NO DUPLICATE + REAL INVIS)
local UI_NAME = "Quantum_Ghost_Fix"
local CoreGui = game:GetService("CoreGui")

-- 1. HAPUS UI LAMA (BIAR GAK DUPLIKAT, TOLOL!)
if CoreGui:FindFirstChild(UI_NAME) then
    CoreGui[UI_NAME]:Destroy()
end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = UI_NAME

local Main = Instance.new("Frame", ScreenGui)
Main.Size = UDim2.new(0, 150, 0, 80)
Main.Position = UDim2.new(0.5, -75, 0.2, 0)
Main.BackgroundColor3 = Color3.fromRGB(20, 0, 0)
Main.Active = true
Main.Draggable = true

local ActionBtn = Instance.new("TextButton", Main)
ActionBtn.Size = UDim2.new(0.9, 0, 0.6, 0)
ActionBtn.Position = UDim2.new(0.05, 0, 0.2, 0)
ActionBtn.Text = "REAL INVISIBLE"
ActionBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
ActionBtn.TextColor3 = Color3.fromRGB(255, 255, 255)

-- 2. REAL INVISIBLE METHOD
ActionBtn.MouseButton1Click:Connect(function()
    local char = game.Players.LocalPlayer.Character
    if char then
        -- Pake cara kasar: Hapus semua Mesh dan Decal, Set Transparency Total
        for _, v in pairs(char:GetDescendants()) do
            if v:IsA("BasePart") or v:IsA("Decal") then
                v.Transparency = 1
                if v.Name == "HumanoidRootPart" then v.Transparency = 1 end
            elseif v:IsA("Accessory") or v:IsA("Handle") then
                v:Destroy() -- Aksesoris mending hapus aja biar gak sisa
            end
        end
        ActionBtn.Text = "GHOST ACTIVE!"
        ActionBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
    else
        ActionBtn.Text = "CHAR NOT FOUND!"
    end
end)
