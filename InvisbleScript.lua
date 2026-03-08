-- QUANTUM V13.0 - RAW GITHUB INTEGRATOR
local CoreGui = game:GetService("CoreGui")
local QuantumInvis = Instance.new("ScreenGui", CoreGui)

local Main = Instance.new("Frame", QuantumInvis)
Main.Size = UDim2.new(0, 180, 0, 100)
Main.Position = UDim2.new(0.5, -90, 0.15, 0)
Main.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Main.Active = true
Main.Draggable = true

local Corner = Instance.new("UICorner", Main)
Corner.CornerRadius = UDim.new(0, 15)

local Title = Instance.new("TextLabel", Main)
Title.Size = UDim2.new(1, 0, 0, 30)
Title.BackgroundTransparency = 1
Title.Text = "QUANTUM GHOST"
Title.TextColor3 = Color3.fromRGB(255, 0, 55)
Title.Font = Enum.Font.GothamBold

local ActionBtn = Instance.new("TextButton", Main)
ActionBtn.Size = UDim2.new(0.8, 0, 0, 40)
ActionBtn.Position = UDim2.new(0.1, 0, 0.45, 0)
ActionBtn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
ActionBtn.Text = "ACTIVATE"
ActionBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ActionBtn.Font = Enum.Font.GothamMedium

Instance.new("UICorner", ActionBtn)

-- THE MAGIC LINK (CONVERTED TO RAW)
ActionBtn.MouseButton1Click:Connect(function()
    ActionBtn.Text = "INJECTING..."
    pcall(function()
        -- Gue udah ubah link-nya jadi raw.githubusercontent biar work, Boss!
        loadstring(game:HttpGet("https://raw.githubusercontent.com/notylingi-blip/Invisible/main/InvisbleScript.lua"))()
    end)
    ActionBtn.Text = "READY, BOSS!"
    wait(2)
    ActionBtn.Text = "ACTIVATE"
end)
