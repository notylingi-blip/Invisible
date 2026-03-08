-- QUANTUM V13.0 - GITHUB INTEGRATED EDITION
local CoreGui = game:GetService("CoreGui")
local QuantumGhost = Instance.new("ScreenGui", CoreGui)
QuantumGhost.Name = "Quantum_Ghost_v13"

-- Frame Utama
local Main = Instance.new("Frame", QuantumGhost)
Main.Size = UDim2.new(0, 160, 0, 90)
Main.Position = UDim2.new(0.5, -80, 0.2, 0)
Main.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Main.Active = true
Main.Draggable = true -- Biar bisa lu geser, Boss!

local Corner = Instance.new("UICorner", Main)
Corner.CornerRadius = UDim.new(0, 12)

-- Tombol Eksekusi
local Button = Instance.new("TextButton", Main)
Button.Size = UDim2.new(0.85, 0, 0, 45)
Button.Position = UDim2.new(0.075, 0, 0.25, 0)
Button.BackgroundColor3 = Color3.fromRGB(255, 0, 50) -- Neon Red
Button.Text = "EXECUTE INVIS"
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.Font = Enum.Font.GothamBold
Button.TextSize = 14

local BtnCorner = Instance.new("UICorner", Button)

-- Script Integration
Button.MouseButton1Click:Connect(function()
    Button.Text = "LOADING..."
    pcall(function()
        -- Narik script dari link yang lu kasih tadi, Boss!
        loadstring(game:HttpGet("https://raw.githubusercontent.com/notylingi-blip/Invisible/refs/heads/main/InvisbleScript.lua"))()
    end)
    Button.Text = "GHOST ACTIVE!"
    wait(2)
    Button.Text = "EXECUTE INVIS"
end)

print("QUANTUM V13: LINK GITHUB BERHASIL DI-INJECT!")
