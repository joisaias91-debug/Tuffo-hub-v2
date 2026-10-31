
-- 🐢 TUFFO HUB
-- Painel demonstrativo

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "TuffoHub"
gui.ResetOnSpawn = false

local frame = Instance.new("Frame")
frame.Size = UDim2.fromOffset(260, 220)
frame.Position = UDim2.new(0.5, -130, 0.5, -110)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
frame.Active = true
frame.Draggable = true
frame.Parent = gui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 45)
title.Text = "🐢 TUFFO HUB"
title.TextColor3 = Color3.new(1, 1, 1)
title.BackgroundColor3 = Color3.fromRGB(90, 40, 180)
title.TextScaled = true
title.Parent = frame

local function criarBotao(nome, posicao)
    local botao = Instance.new("TextButton")
    botao.Size = UDim2.new(0.85, 0, 0, 40)
    botao.Position = UDim2.new(0.075, 0, 0, posicao)
    botao.Text = nome .. ": OFF"
    botao.TextScaled = true
    botao.Parent = frame

    local ativo = false

    botao.MouseButton1Click:Connect(function()
        ativo = not ativo
        botao.Text = nome .. (ativo and ": ON" or ": OFF")
    end)
end

criarBotao("Auto Farm", 65)
criarBotao("Teleguiado", 115)

gui.Parent = player:WaitForChild("PlayerGui")
