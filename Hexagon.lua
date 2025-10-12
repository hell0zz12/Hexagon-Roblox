-- Gui to Lua
-- Version: 3.2

-- Instances:

local HexagonGui = Instance.new("ScreenGui")
local DynamicIsland = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local ClientName = Instance.new("TextLabel")
local Circle = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local Time = Instance.new("TextLabel")
local Ping = Instance.new("TextLabel")
local Hotkeys = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local ElementName = Instance.new("TextLabel")
local Keys = Instance.new("TextLabel")
local Keys_2 = Instance.new("TextLabel")
local ClickGui = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local AimButton = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local AimFovButton = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local RaycastButton = Instance.new("TextButton")
local UICorner_16 = Instance.new("UICorner")
local AimModeButton = Instance.new("TextButton")
local UICorner_17 = Instance.new("UICorner")
local ESPButton = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local FlightButton = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local NoclipButton = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local BlinkButton = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local TracersButton = Instance.new("TextButton")
local UICorner_11 = Instance.new("UICorner")
local Panel = Instance.new("Frame")
local UICorner_12 = Instance.new("UICorner")
local ClientLink = Instance.new("TextLabel")
local ClientID = Instance.new("TextLabel")
local FlightSpeedTextBox = Instance.new("TextBox")
local UICorner_13 = Instance.new("UICorner")
local SpeedTextBox = Instance.new("TextBox")
local UICorner_14 = Instance.new("UICorner")
local FOVTextBox = Instance.new("TextBox")
local UICorner_15 = Instance.new("UICorner")

--Properties:

HexagonGui.Name = "HexagonGui"
HexagonGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
HexagonGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
HexagonGui.IgnoreGuiInset = true

DynamicIsland.Name = "DynamicIsland"
DynamicIsland.Parent = HexagonGui
DynamicIsland.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
DynamicIsland.BackgroundTransparency = 0.100
DynamicIsland.BorderColor3 = Color3.fromRGB(0, 0, 0)
DynamicIsland.BorderSizePixel = 0
DynamicIsland.Position = UDim2.new(0.476163179, 0, 0.0214065518, 0)
DynamicIsland.Size = UDim2.new(0, 107, 0, 33)

UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = DynamicIsland

ClientName.Name = "ClientName"
ClientName.Parent = DynamicIsland
ClientName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClientName.BackgroundTransparency = 1.000
ClientName.BorderColor3 = Color3.fromRGB(0, 0, 0)
ClientName.BorderSizePixel = 0
ClientName.Position = UDim2.new(0.2869654, 0, 0, 0)
ClientName.Size = UDim2.new(0, 74, 0, 32)
ClientName.Font = Enum.Font.SourceSansSemibold
ClientName.Text = "Hexagon"
ClientName.TextColor3 = Color3.fromRGB(255, 255, 255)
ClientName.TextSize = 16.000

Circle.Name = "Circle"
Circle.Parent = DynamicIsland
Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Circle.BorderColor3 = Color3.fromRGB(0, 0, 0)
Circle.BorderSizePixel = 0
Circle.Position = UDim2.new(0, 9, 0.201000005, 0)
Circle.Size = UDim2.new(0, 26, 0, 19)

UICorner_2.CornerRadius = UDim.new(5, 0)
UICorner_2.Parent = Circle

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(138, 138, 138)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(206, 206, 206))}
UIGradient.Rotation = 180
UIGradient.Parent = Circle

UIAspectRatioConstraint.Parent = DynamicIsland
UIAspectRatioConstraint.AspectRatio = 3.290

Time.Name = "Time"
Time.Parent = DynamicIsland
Time.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Time.BackgroundTransparency = 1.000
Time.BorderColor3 = Color3.fromRGB(0, 0, 0)
Time.BorderSizePixel = 0
Time.Position = UDim2.new(-0.572847426, 0, 0, 0)
Time.Size = UDim2.new(0, 61, 0, 32)
Time.Font = Enum.Font.SourceSansSemibold
Time.Text = "Time"
Time.TextColor3 = Color3.fromRGB(255, 255, 255)
Time.TextSize = 18.000
Time.TextStrokeTransparency = 0.000

Ping.Name = "Ping"
Ping.Parent = DynamicIsland
Ping.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Ping.BackgroundTransparency = 1.000
Ping.BorderColor3 = Color3.fromRGB(0, 0, 0)
Ping.BorderSizePixel = 0
Ping.Position = UDim2.new(0.997246027, 0, 0, 0)
Ping.Size = UDim2.new(0, 49, 0, 32)
Ping.Font = Enum.Font.SourceSansSemibold
Ping.Text = "Ping"
Ping.TextColor3 = Color3.fromRGB(255, 255, 255)
Ping.TextSize = 18.000
Ping.TextStrokeTransparency = 0.000

Hotkeys.Name = "Hotkeys"
Hotkeys.Parent = HexagonGui
Hotkeys.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Hotkeys.BackgroundTransparency = 0.100
Hotkeys.BorderColor3 = Color3.fromRGB(0, 0, 0)
Hotkeys.BorderSizePixel = 0
Hotkeys.Position = UDim2.new(0.862729013, 2, 0.372000784, -4)
Hotkeys.Size = UDim2.new(0, 147, 0, 89)

UICorner_3.CornerRadius = UDim.new(0.200000003, 0)
UICorner_3.Parent = Hotkeys

ElementName.Name = "ElementName"
ElementName.Parent = Hotkeys
ElementName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ElementName.BackgroundTransparency = 1.000
ElementName.BorderColor3 = Color3.fromRGB(0, 0, 0)
ElementName.BorderSizePixel = 0
ElementName.Position = UDim2.new(0.246149391, 0, 0, 0)
ElementName.Size = UDim2.new(0, 74, 0, 32)
ElementName.Font = Enum.Font.SourceSansSemibold
ElementName.Text = "Hotkeys"
ElementName.TextColor3 = Color3.fromRGB(255, 255, 255)
ElementName.TextSize = 18.000

Keys.Name = "Keys"
Keys.Parent = Hotkeys
Keys.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keys.BackgroundTransparency = 1.000
Keys.BorderColor3 = Color3.fromRGB(0, 0, 0)
Keys.BorderSizePixel = 0
Keys.Position = UDim2.new(-0.00554880174, 0, 0.26794228, 0)
Keys.Size = UDim2.new(0, 147, 0, 32)
Keys.Font = Enum.Font.SourceSansSemibold
Keys.Text = "Flight - - - - - - - - [X]"
Keys.TextColor3 = Color3.fromRGB(255, 255, 255)
Keys.TextSize = 16.000

Keys_2.Name = "Keys"
Keys_2.Parent = Hotkeys
Keys_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keys_2.BackgroundTransparency = 1.000
Keys_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Keys_2.BorderSizePixel = 0
Keys_2.Position = UDim2.new(-0.00599971414, 0, 0.562359393, 0)
Keys_2.Size = UDim2.new(0, 147, 0, 32)
Keys_2.Font = Enum.Font.SourceSansSemibold
Keys_2.Text = "Blink - - - - - - - - - [Z]"
Keys_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Keys_2.TextSize = 16.000

ClickGui.Name = "ClickGui"
ClickGui.Parent = HexagonGui
ClickGui.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ClickGui.BackgroundTransparency = 0.100
ClickGui.BorderColor3 = Color3.fromRGB(0, 0, 0)
ClickGui.BorderSizePixel = 0
ClickGui.Position = UDim2.new(0.346085399, 17, 0.33022067, 8)
ClickGui.Size = UDim2.new(0, 625, 0, 400)

UICorner_4.CornerRadius = UDim.new(0, 21)
UICorner_4.Parent = ClickGui

AimButton.Name = "AimButton"
AimButton.Parent = ClickGui
AimButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
AimButton.BackgroundTransparency = 0.750
AimButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
AimButton.BorderSizePixel = 0
AimButton.Position = UDim2.new(0.0437875018, 0, 0.0700000003, 0)
AimButton.Size = UDim2.new(0, 180, 0, 41)
AimButton.Font = Enum.Font.SourceSansSemibold
AimButton.Text = "Aimbot"
AimButton.TextColor3 = Color3.fromRGB(255, 255, 255)
AimButton.TextSize = 18.000

UICorner_5.CornerRadius = UDim.new(0, 9)
UICorner_5.Parent = AimButton

AimFovButton.Name = "AimFovButton"
AimFovButton.Parent = ClickGui
AimFovButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
AimFovButton.BackgroundTransparency = 0.750
AimFovButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
AimFovButton.BorderSizePixel = 0
AimFovButton.Position = UDim2.new(0.0437875018, 0, 0.204999998, 0)
AimFovButton.Size = UDim2.new(0, 180, 0, 41)
AimFovButton.Font = Enum.Font.SourceSansSemibold
AimFovButton.Text = "Aimbot FOV"
AimFovButton.TextColor3 = Color3.fromRGB(255, 255, 255)
AimFovButton.TextSize = 18.000

UICorner_6.CornerRadius = UDim.new(0, 9)
UICorner_6.Parent = AimFovButton

RaycastButton.Name = "RaycastButton"
RaycastButton.Parent = ClickGui
RaycastButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
RaycastButton.BackgroundTransparency = 0.750
RaycastButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
RaycastButton.BorderSizePixel = 0
RaycastButton.Position = UDim2.new(0.0437875018, 0, 0.340000004, 0)
RaycastButton.Size = UDim2.new(0, 180, 0, 41)
RaycastButton.Font = Enum.Font.SourceSansSemibold
RaycastButton.Text = "Raycast"
RaycastButton.TextColor3 = Color3.fromRGB(255, 255, 255)
RaycastButton.TextSize = 18.000

UICorner_16.CornerRadius = UDim.new(0, 9)
UICorner_16.Parent = RaycastButton

AimModeButton.Name = "AimModeButton"
AimModeButton.Parent = ClickGui
AimModeButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
AimModeButton.BackgroundTransparency = 0.750
AimModeButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
AimModeButton.BorderSizePixel = 0
AimModeButton.Position = UDim2.new(0.0437875018, 0, 0.475, 0)
AimModeButton.Size = UDim2.new(0, 180, 0, 41)
AimModeButton.Font = Enum.Font.SourceSansSemibold
AimModeButton.Text = "Aim Mode: Hold"
AimModeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
AimModeButton.TextSize = 18.000

UICorner_17.CornerRadius = UDim.new(0, 9)
UICorner_17.Parent = AimModeButton

ESPButton.Name = "ESPButton"
ESPButton.Parent = ClickGui
ESPButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ESPButton.BackgroundTransparency = 0.750
ESPButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ESPButton.BorderSizePixel = 0
ESPButton.Position = UDim2.new(0.357712507, 0, 0.0724999979, 0)
ESPButton.Size = UDim2.new(0, 180, 0, 41)
ESPButton.Font = Enum.Font.SourceSansSemibold
ESPButton.Text = "ESP"
ESPButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ESPButton.TextSize = 18.000

UICorner_7.CornerRadius = UDim.new(0, 9)
UICorner_7.Parent = ESPButton

FlightButton.Name = "FlightButton"
FlightButton.Parent = ClickGui
FlightButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FlightButton.BackgroundTransparency = 0.750
FlightButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
FlightButton.BorderSizePixel = 0
FlightButton.Position = UDim2.new(0.673349977, 0, 0.0724999979, 0)
FlightButton.Size = UDim2.new(0, 180, 0, 41)
FlightButton.Font = Enum.Font.SourceSansSemibold
FlightButton.Text = "Flight"
FlightButton.TextColor3 = Color3.fromRGB(255, 255, 255)
FlightButton.TextSize = 18.000

UICorner_8.CornerRadius = UDim.new(0, 9)
UICorner_8.Parent = FlightButton

NoclipButton.Name = "NoclipButton"
NoclipButton.Parent = ClickGui
NoclipButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
NoclipButton.BackgroundTransparency = 0.750
NoclipButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
NoclipButton.BorderSizePixel = 0
NoclipButton.Position = UDim2.new(0.673349977, 0, 0.209999993, 0)
NoclipButton.Size = UDim2.new(0, 180, 0, 41)
NoclipButton.Font = Enum.Font.SourceSansSemibold
NoclipButton.Text = "Noclip"
NoclipButton.TextColor3 = Color3.fromRGB(255, 255, 255)
NoclipButton.TextSize = 18.000

UICorner_9.CornerRadius = UDim.new(0, 9)
UICorner_9.Parent = NoclipButton

BlinkButton.Name = "BlinkButton"
BlinkButton.Parent = ClickGui
BlinkButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
BlinkButton.BackgroundTransparency = 0.750
BlinkButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
BlinkButton.BorderSizePixel = 0
BlinkButton.Position = UDim2.new(0.673349977, 0, 0.354999989, 0)
BlinkButton.Size = UDim2.new(0, 180, 0, 41)
BlinkButton.Font = Enum.Font.SourceSansSemibold
BlinkButton.Text = "Blink"
BlinkButton.TextColor3 = Color3.fromRGB(255, 255, 255)
BlinkButton.TextSize = 18.000

UICorner_10.CornerRadius = UDim.new(0, 9)
UICorner_10.Parent = BlinkButton

TracersButton.Name = "TracersButton"
TracersButton.Parent = ClickGui
TracersButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TracersButton.BackgroundTransparency = 0.750
TracersButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TracersButton.BorderSizePixel = 0
TracersButton.Position = UDim2.new(0.357712507, 0, 0.209999993, 0)
TracersButton.Size = UDim2.new(0, 180, 0, 41)
TracersButton.Font = Enum.Font.SourceSansSemibold
TracersButton.Text = "Tracers"
TracersButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TracersButton.TextSize = 18.000

UICorner_11.CornerRadius = UDim.new(0, 9)
UICorner_11.Parent = TracersButton

Panel.Name = "Panel"
Panel.Parent = ClickGui
Panel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Panel.BackgroundTransparency = 0.100
Panel.BorderColor3 = Color3.fromRGB(0, 0, 0)
Panel.BorderSizePixel = 0
Panel.Position = UDim2.new(0, 0, 0.887499988, 0)
Panel.Size = UDim2.new(0, 625, 0, 45)

UICorner_12.CornerRadius = UDim.new(0, 21)
UICorner_12.Parent = Panel

ClientLink.Name = "ClientLink"
ClientLink.Parent = Panel
ClientLink.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClientLink.BackgroundTransparency = 1.000
ClientLink.BorderColor3 = Color3.fromRGB(0, 0, 0)
ClientLink.BorderSizePixel = 0
ClientLink.Position = UDim2.new(0, 0, 0.13333334, 0)
ClientLink.Size = UDim2.new(0, 327, 0, 32)
ClientLink.Font = Enum.Font.SourceSansSemibold
ClientLink.Text = "Hexagon Free - https://discord.gg/FreBGmdu9C"
ClientLink.TextColor3 = Color3.fromRGB(255, 255, 255)
ClientLink.TextSize = 16.000
ClientLink.TextTransparency = 0.800

ClientID.Name = "ClientID"
ClientID.Parent = Panel
ClientID.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClientID.BackgroundTransparency = 1.000
ClientID.BorderColor3 = Color3.fromRGB(0, 0, 0)
ClientID.BorderSizePixel = 0
ClientID.Position = UDim2.new(0.750400007, 0, 0.13333334, 0)
ClientID.Size = UDim2.new(0, 156, 0, 32)
ClientID.Font = Enum.Font.SourceSansSemibold
ClientID.Text = "Text"
ClientID.TextColor3 = Color3.fromRGB(255, 255, 255)
ClientID.TextSize = 16.000
ClientID.TextTransparency = 0.420

FlightSpeedTextBox.Name = "FlightSpeedTextBox"
FlightSpeedTextBox.Parent = ClickGui
FlightSpeedTextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FlightSpeedTextBox.BackgroundTransparency = 0.750
FlightSpeedTextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
FlightSpeedTextBox.BorderSizePixel = 0
FlightSpeedTextBox.Position = UDim2.new(0.0432000011, 0, 0.745000005, 0)
FlightSpeedTextBox.Size = UDim2.new(0, 176, 0, 37)
FlightSpeedTextBox.Font = Enum.Font.SourceSans
FlightSpeedTextBox.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
FlightSpeedTextBox.Text = "Flight Speed: 50"
FlightSpeedTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
FlightSpeedTextBox.TextSize = 16.000

UICorner_13.CornerRadius = UDim.new(0, 9)
UICorner_13.Parent = FlightSpeedTextBox

SpeedTextBox.Name = "SpeedTextBox"
SpeedTextBox.Parent = ClickGui
SpeedTextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SpeedTextBox.BackgroundTransparency = 0.750
SpeedTextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
SpeedTextBox.BorderSizePixel = 0
SpeedTextBox.Position = UDim2.new(0.35679999, 0, 0.745000005, 0)
SpeedTextBox.Size = UDim2.new(0, 176, 0, 37)
SpeedTextBox.Font = Enum.Font.SourceSans
SpeedTextBox.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
SpeedTextBox.Text = "Speed: 16"
SpeedTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
SpeedTextBox.TextSize = 16.000

UICorner_14.CornerRadius = UDim.new(0, 9)
UICorner_14.Parent = SpeedTextBox

FOVTextBox.Name = "FOVTextBox"
FOVTextBox.Parent = ClickGui
FOVTextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FOVTextBox.BackgroundTransparency = 0.750
FOVTextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
FOVTextBox.BorderSizePixel = 0
FOVTextBox.Position = UDim2.new(0.671999991, 0, 0.745000005, 0)
FOVTextBox.Size = UDim2.new(0, 176, 0, 37)
FOVTextBox.Font = Enum.Font.SourceSans
FOVTextBox.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
FOVTextBox.Text = "FOV: 100"
FOVTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
FOVTextBox.TextSize = 16.000

UICorner_15.CornerRadius = UDim.new(0, 9)
UICorner_15.Parent = FOVTextBox

-- Scripts:

local function NBFQY_fake_script() -- UIGradient.RotateScript 
	local script = Instance.new('LocalScript', UIGradient)

	local UICorner = script.Parent
	local RunService = game:GetService("RunService")
	
	-- Настройки анимации
	local config = {
		rotationSpeed = 360,    -- градусов в секунду
		maxRotation = 180,      -- максимальное вращение
		minRotation = -180      -- минимальное вращение
	}
	
	local currentRotation = config.minRotation
	
	RunService.Heartbeat:Connect(function(deltaTime)
		-- Увеличиваем вращение
		currentRotation = currentRotation + (config.rotationSpeed * deltaTime)
	
		-- Проверяем границы
		if currentRotation >= config.maxRotation then
			currentRotation = config.minRotation
		end
	
		-- Применяем вращение
		UICorner.Rotation = currentRotation
	end)
end
coroutine.wrap(NBFQY_fake_script)()
local function LCLUZ_fake_script() -- Time.TimeScript 
	local script = Instance.new('LocalScript', Time)

	local TextLabel = script.Parent -- Предполагаем, что скрипт находится внутри TextLabel
	
	local function updateTime()
		-- Получаем текущее время
		local currentTime = os.date("*t")
	
		-- Форматируем время: добавляем ведущий ноль если нужно
		local hours = currentTime.hour
		local minutes = currentTime.min
	
		-- Преобразуем в строки и добавляем ведущие нули
		local hoursStr = string.format("%02d", hours)
		local minutesStr = string.format("%02d", minutes)
	
		-- Устанавливаем текст в формате "ЧЧ:ММ"
		TextLabel.Text = hoursStr .. ":" .. minutesStr
	end
	
	-- Обновляем время сразу при запуске
	updateTime()
	
	-- Создаем цикл для обновления времени каждую минуту
	while true do
		wait(60) -- Ждем 60 секунд (1 минуту)
		updateTime()
	end
end
coroutine.wrap(LCLUZ_fake_script)()
local function HBEJ_fake_script() -- Ping.PingScript 
	local script = Instance.new('LocalScript', Ping)

	local TextLabel = script.Parent
	local RunService = game:GetService("RunService")
	
	local function getPing()
		local success, ping = pcall(function()
			return math.floor(game.Stats.Network.ServerStatsItem["Data Ping"]:GetValue())
		end)
	
		return success and ping or 0
	end
	
	local function updatePing()
		local ping = getPing()
	
		-- Цветовая индикация
		local color
		if ping < 60 then
			color = Color3.fromRGB(76, 255, 0)    -- Отлично
		elseif ping < 120 then
			color = Color3.fromRGB(255, 255, 0)   -- Хорошо
		elseif ping < 180 then
			color = Color3.fromRGB(255, 165, 0)   -- Средне
		else
			color = Color3.fromRGB(255, 0, 0)     -- Плохо
		end
	
		TextLabel.Text = "" .. ping .. " ms"
	end
	
	-- Плавное обновление
	RunService.Heartbeat:Connect(function()
		updatePing()
	end)
end
coroutine.wrap(HBEJ_fake_script)()
local function ZQNNIZB_fake_script() -- ClientID.ClientIDGenerate 
	local script = Instance.new('LocalScript', ClientID)

	local textLabel = script.Parent -- Замените на путь к вашему TextLabel
	
	-- Функция для генерации случайного ID
	local function generateRandomID()
		local length = math.random(10, 20) -- Длина от 10 до 20 символов
		local characters = "0123456789"
		local result = ""
	
		for i = 1, length do
			local randomIndex = math.random(1, #characters)
			result = result .. string.sub(characters, randomIndex, randomIndex)
		end
	
		return "ID: " .. result
	end
	
	-- Устанавливаем текст
	textLabel.Text = generateRandomID()
end
coroutine.wrap(ZQNNIZB_fake_script)()
local function KJPX_fake_script() -- ClickGui.OpenGUI 
	local script = Instance.new('LocalScript', ClickGui)

	local clickGui = script.Parent
	local UserInputService = game:GetService("UserInputService")
	
	-- Начальное состояние (скрыто)
	clickGui.Visible = false
	
	-- Функция для обработки нажатия клавиши
	local function onInput(input, gameProcessed)
		if gameProcessed then return end -- Игнорируем, если игра обрабатывает ввод
	
		-- Проверяем нажатие Right Shift
		if input.KeyCode == Enum.KeyCode.RightShift then
			-- Переключаем видимость
			clickGui.Visible = not clickGui.Visible
		end
	end
	
	-- Подключаем обработчик ввода
	UserInputService.InputBegan:Connect(onInput)
end
coroutine.wrap(KJPX_fake_script)()

-- Main features script (Aimbot, ESP, Flight, Noclip, Blink, Tracers, FOV)
local function HEXAGON_MainFeatures()
    -- Services
    local Players = game:GetService("Players")
    local RunService = game:GetService("RunService")
    local UserInputService = game:GetService("UserInputService")
    local TweenService = game:GetService("TweenService")

    -- Shortcuts
    local localPlayer = Players.LocalPlayer
    local camera = workspace.CurrentCamera
    local screenGui = HexagonGui

    -- UI references created above
    local aimButton = AimButton
    local aimFovButton = AimFovButton
    local raycastButton = RaycastButton
    local aimModeButton = AimModeButton
    local espButton = ESPButton
    local flightButton = FlightButton
    local noclipButton = NoclipButton
    local blinkButton = BlinkButton
    local tracersButton = TracersButton
    local flightSpeedTextBox = FlightSpeedTextBox
    local speedTextBox = SpeedTextBox
    local fovTextBox = FOVTextBox

    -- Helpers
    local function parseNumber(text, defaultValue)
        local numberText = tostring(text or "")
        local value = tonumber(string.match(numberText, "[-%d%.]+"))
        if value == nil then return defaultValue end
        return value
    end

    local function getMousePosition()
        local pos = UserInputService:GetMouseLocation()
        -- UIS includes top bar offset automatically in ScreenGuis in CoreGui; our ScreenGui is in PlayerGui, use as-is
        return Vector2.new(pos.X, pos.Y)
    end

    local function getAimOrigin()
        if not camera then return Vector2.new(0, 0) end
        if fovEnabled then
            local vp = camera.ViewportSize
            return Vector2.new(vp.X / 2, vp.Y / 2)
        end
        return getMousePosition()
    end

    -- ============================
    -- FOV Circle
    -- ============================
    local fovEnabled = false
    local fovRadius = parseNumber(fovTextBox.Text, 100)

    local fovCircle = Instance.new("Frame")
    fovCircle.Name = "FOVCircle"
    fovCircle.BackgroundTransparency = 1
    fovCircle.Size = UDim2.fromOffset(fovRadius * 2, fovRadius * 2)
    fovCircle.AnchorPoint = Vector2.new(0.5, 0.5)
    fovCircle.Position = UDim2.fromScale(0.5, 0.5)
    fovCircle.Visible = false
    fovCircle.Parent = screenGui

    local fovCorner = Instance.new("UICorner")
    fovCorner.CornerRadius = UDim.new(1, 0)
    fovCorner.Parent = fovCircle

    local fovStroke = Instance.new("UIStroke")
    fovStroke.Thickness = 1
    fovStroke.Color = Color3.fromRGB(255, 255, 255)
    fovStroke.Transparency = 0
    fovStroke.Parent = fovCircle

    local function updateFovRadius(newRadius)
        fovRadius = math.clamp(tonumber(newRadius) or 100, 10, 1000)
        fovCircle.Size = UDim2.fromOffset(fovRadius * 2, fovRadius * 2)
    end

    fovTextBox.FocusLost:Connect(function()
        local newVal = parseNumber(fovTextBox.Text, fovRadius)
        updateFovRadius(newVal)
        fovTextBox.Text = "FOV: " .. tostring(fovRadius)
    end)

    local function toggleFOV()
        fovEnabled = not fovEnabled
        fovCircle.Visible = fovEnabled
        aimFovButton.Text = fovEnabled and "Aimbot FOV [ВКЛ]" or "Aimbot FOV [ВЫКЛ]"
    end

    aimFovButton.MouseButton1Click:Connect(toggleFOV)

    RunService.RenderStepped:Connect(function()
        if fovEnabled then
            fovCircle.Position = UDim2.fromScale(0.5, 0.5)
        end
    end)

    -- ============================
    -- Speed (WalkSpeed) with constant tracking
    -- ============================
    local desiredWalkSpeed = parseNumber(speedTextBox.Text, 16)
    speedTextBox.Text = "Speed: " .. tostring(desiredWalkSpeed)
    local speedConnection

    local function applyWalkSpeedToCharacter(character)
        if not character then return end
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.WalkSpeed = desiredWalkSpeed
        end
    end

    local function setSpeed(speed)
        desiredWalkSpeed = speed
        applyWalkSpeedToCharacter(localPlayer.Character)
        if speedConnection then speedConnection:Disconnect() end
        speedConnection = RunService.Heartbeat:Connect(function()
            local character = localPlayer.Character
            if not character then return end
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid and humanoid.WalkSpeed ~= desiredWalkSpeed then
                humanoid.WalkSpeed = desiredWalkSpeed
            end
        end)
    end

    speedTextBox.FocusLost:Connect(function()
        local newVal = parseNumber(speedTextBox.Text, desiredWalkSpeed)
        setSpeed(newVal)
        speedTextBox.Text = "Speed: " .. tostring(desiredWalkSpeed)
    end)

    localPlayer.CharacterAdded:Connect(function(char)
        task.wait(1)
        applyWalkSpeedToCharacter(char)
    end)

    -- ============================
    -- Flight
    -- ============================
    local flyEnabled = false
    local flySpeed = parseNumber(flightSpeedTextBox.Text, 50)
    flightSpeedTextBox.Text = "Flight Speed: " .. tostring(flySpeed)
    local flyConnection

    local function toggleFly()
        flyEnabled = not flyEnabled
        flightButton.Text = flyEnabled and "Flight [ВКЛ]" or "Flight [ВЫКЛ]"

        local character = localPlayer.Character
        if not character then return end
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        local rootPart = character:FindFirstChild("HumanoidRootPart")
        if not humanoid or not rootPart then return end

        if flyEnabled then
            local bv = Instance.new("BodyVelocity")
            bv.Name = "Hex_FlyVelocity"
            bv.Parent = rootPart
            bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            bv.Velocity = Vector3.new(0, 0, 0)

            local bg = Instance.new("BodyGyro")
            bg.Name = "Hex_FlyGyro"
            bg.Parent = rootPart
            bg.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
            bg.P = 9e4
            bg.D = 100

            if flyConnection then flyConnection:Disconnect() end
            flyConnection = RunService.Heartbeat:Connect(function()
                local cam = workspace.CurrentCamera
                bg.CFrame = cam.CFrame
                local velocity = Vector3.new()
                local s = flySpeed
                if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                    velocity += cam.CFrame.LookVector * s
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                    velocity -= cam.CFrame.LookVector * s
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                    velocity -= cam.CFrame.RightVector * s
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                    velocity += cam.CFrame.RightVector * s
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                    velocity += Vector3.new(0, s, 0)
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                    velocity -= Vector3.new(0, s, 0)
                end
                bv.Velocity = velocity
            end)
            humanoid:ChangeState(Enum.HumanoidStateType.Physics)
        else
            if flyConnection then flyConnection:Disconnect() flyConnection = nil end
            for _, child in ipairs((localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") and localPlayer.Character.HumanoidRootPart:GetChildren()) or {}) do
                if child:IsA("BodyVelocity") or child:IsA("BodyGyro") then
                    child:Destroy()
                end
            end
            local humanoid2 = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid")
            if humanoid2 then humanoid2:ChangeState(Enum.HumanoidStateType.Running) end
        end
    end

    flightSpeedTextBox.FocusLost:Connect(function()
        local newVal = parseNumber(flightSpeedTextBox.Text, flySpeed)
        flySpeed = math.clamp(newVal, 5, 500)
        flightSpeedTextBox.Text = "Flight Speed: " .. tostring(flySpeed)
    end)

    flightButton.MouseButton1Click:Connect(toggleFly)

    -- Hotkey: X toggles Flight
    UserInputService.InputBegan:Connect(function(input, gpe)
        if gpe then return end
        if input.KeyCode == Enum.KeyCode.X then
            toggleFly()
        end
    end)

    -- ============================
    -- Noclip
    -- ============================
    local noclipEnabled = false
    local originalCollideStates = {}

    local function applyNoclipToCharacter(character)
        if not character then return end
        for _, part in ipairs(character:GetChildren()) do
            if part:IsA("BasePart") then
                if originalCollideStates[part] == nil then
                    originalCollideStates[part] = part.CanCollide
                end
                part.CanCollide = false
            end
        end
    end

    local function restoreCollideStates()
        for part, state in pairs(originalCollideStates) do
            if part and part.Parent then
                part.CanCollide = state
            end
        end
        originalCollideStates = {}
    end

    local function toggleNoclip()
        noclipEnabled = not noclipEnabled
        noclipButton.Text = noclipEnabled and "Noclip [ВКЛ]" or "Noclip [ВЫКЛ]"
        if not noclipEnabled then
            restoreCollideStates()
        else
            if localPlayer.Character then applyNoclipToCharacter(localPlayer.Character) end
        end
    end

    noclipButton.MouseButton1Click:Connect(toggleNoclip)

    RunService.Stepped:Connect(function()
        if noclipEnabled and localPlayer.Character then
            applyNoclipToCharacter(localPlayer.Character)
        end
    end)

    -- ============================
    -- ESP
    -- ============================
    local function getTeamColor(plr)
        if plr and plr.Team and plr.Team.TeamColor then
            return plr.Team.TeamColor.Color
        end
        return Color3.fromRGB(255, 0, 0)
    end

    local function getDistance(otherPlayer)
        local lc = localPlayer.Character
        local tc = otherPlayer and otherPlayer.Character
        if lc and tc and lc:FindFirstChild("HumanoidRootPart") and tc:FindFirstChild("HumanoidRootPart") then
            return math.floor((lc.HumanoidRootPart.Position - tc.HumanoidRootPart.Position).Magnitude)
        end
        return 0
    end

    local function getHealth(otherPlayer)
        local c = otherPlayer and otherPlayer.Character
        if c then
            local h = c:FindFirstChildOfClass("Humanoid")
            if h then return math.floor(h.Health) end
        end
        return 0
    end

    local espEnabled = false
    local espUpdateConnection
    local espFolders = {}

    local function createESP(targetPlayer)
        if not targetPlayer or not targetPlayer.Character then return end
        if espFolders[targetPlayer] then
            espFolders[targetPlayer]:Destroy()
            espFolders[targetPlayer] = nil
        end

        local folder = Instance.new("Folder")
        folder.Name = "ESP_" .. targetPlayer.Name
        folder.Parent = screenGui
        espFolders[targetPlayer] = folder

        local highlight = Instance.new("Highlight")
        highlight.Name = "Highlight"
        highlight.FillColor = getTeamColor(targetPlayer)
        highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
        highlight.FillTransparency = 0.5
        highlight.OutlineTransparency = 0
        highlight.Parent = folder

        local billboard = Instance.new("BillboardGui")
        billboard.Name = "ESPInfo"
        billboard.Size = UDim2.new(0, 200, 0, 100)
        billboard.StudsOffset = Vector3.new(0, 3, 0)
        billboard.AlwaysOnTop = true
        billboard.Parent = folder

        local nameLabel = Instance.new("TextLabel")
        nameLabel.Name = "Name"
        nameLabel.Size = UDim2.new(1, 0, 0.3, 0)
        nameLabel.BackgroundTransparency = 1
        nameLabel.Text = targetPlayer.Name
        nameLabel.TextColor3 = getTeamColor(targetPlayer)
        nameLabel.TextSize = 14
        nameLabel.Font = Enum.Font.GothamBold
        nameLabel.Parent = billboard

        local healthLabel = Instance.new("TextLabel")
        healthLabel.Name = "Health"
        healthLabel.Size = UDim2.new(1, 0, 0.3, 0)
        healthLabel.Position = UDim2.new(0, 0, 0.3, 0)
        healthLabel.BackgroundTransparency = 1
        healthLabel.Text = "HP: " .. getHealth(targetPlayer)
        healthLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
        healthLabel.TextSize = 14
        healthLabel.Font = Enum.Font.Gotham
        healthLabel.Parent = billboard

        local distanceLabel = Instance.new("TextLabel")
        distanceLabel.Name = "Distance"
        distanceLabel.Size = UDim2.new(1, 0, 0.3, 0)
        distanceLabel.Position = UDim2.new(0, 0, 0.6, 0)
        distanceLabel.BackgroundTransparency = 1
        distanceLabel.Text = tostring(getDistance(targetPlayer)) .. "m"
        distanceLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        distanceLabel.TextSize = 14
        distanceLabel.Font = Enum.Font.Gotham
        distanceLabel.Parent = billboard

        local teamLabel = Instance.new("TextLabel")
        teamLabel.Name = "Team"
        teamLabel.Size = UDim2.new(1, 0, 0.3, 0)
        teamLabel.Position = UDim2.new(0, 0, 0.9, 0)
        teamLabel.BackgroundTransparency = 1
        teamLabel.Text = (targetPlayer.Team and targetPlayer.Team.Name) or "No Team"
        teamLabel.TextColor3 = getTeamColor(targetPlayer)
        teamLabel.TextSize = 14
        teamLabel.Font = Enum.Font.Gotham
        teamLabel.Parent = billboard

        highlight.Adornee = targetPlayer.Character
        billboard.Adornee = targetPlayer.Character:FindFirstChild("Head") or targetPlayer.Character:FindFirstChild("HumanoidRootPart")
    end

    local function updateESP()
        for plr, folder in pairs(espFolders) do
            if plr.Character and folder:FindFirstChild("ESPInfo") then
                local espInfo = folder.ESPInfo
                local healthLabel = espInfo:FindFirstChild("Health")
                local distanceLabel = espInfo:FindFirstChild("Distance")
                local teamLabel = espInfo:FindFirstChild("Team")
                local highlight = folder:FindFirstChild("Highlight")
                if healthLabel then healthLabel.Text = "HP: " .. getHealth(plr) end
                if distanceLabel then distanceLabel.Text = tostring(getDistance(plr)) .. "m" end
                if teamLabel then
                    teamLabel.Text = (plr.Team and plr.Team.Name) or "No Team"
                    teamLabel.TextColor3 = getTeamColor(plr)
                end
                if highlight then highlight.FillColor = getTeamColor(plr) end
                if espInfo.Adornee and not espInfo.Adornee.Parent then
                    espInfo.Adornee = plr.Character:FindFirstChild("Head") or plr.Character:FindFirstChild("HumanoidRootPart")
                end
            elseif not plr.Character then
                folder:Destroy()
                espFolders[plr] = nil
            end
        end
    end

    local function toggleESP()
        espEnabled = not espEnabled
        espButton.Text = espEnabled and "ESP [ВКЛ]" or "ESP [ВЫКЛ]"
        if espEnabled then
            for _, other in ipairs(Players:GetPlayers()) do
                if other ~= localPlayer and other.Character then
                    createESP(other)
                    other.CharacterAdded:Connect(function()
                        task.wait(0.5)
                        if espEnabled then createESP(other) end
                    end)
                end
            end
            if espUpdateConnection then espUpdateConnection:Disconnect() end
            espUpdateConnection = RunService.Heartbeat:Connect(function()
                updateESP()
            end)
        else
            if espUpdateConnection then espUpdateConnection:Disconnect() espUpdateConnection = nil end
            for _, folder in pairs(espFolders) do
                folder:Destroy()
            end
            espFolders = {}
        end
    end

    espButton.MouseButton1Click:Connect(toggleESP)

    Players.PlayerAdded:Connect(function(newPlr)
        if not espEnabled then return end
        newPlr.CharacterAdded:Connect(function()
            task.wait(0.5)
            if espEnabled then createESP(newPlr) end
        end)
    end)

    Players.PlayerRemoving:Connect(function(remPlr)
        if espFolders[remPlr] then
            espFolders[remPlr]:Destroy()
            espFolders[remPlr] = nil
        end
    end)

    -- Clean up ESP when GUI destroys
    screenGui.Destroying:Connect(function()
        if espUpdateConnection then espUpdateConnection:Disconnect() end
        for _, folder in pairs(espFolders) do
            folder:Destroy()
        end
    end)

    -- ============================
    -- Raycast visibility + best target part + Aimbot
    -- ============================
    local aimEnabled = false
    local aimMode = "hold" -- "hold" or "always"
    local aimOnlyVisible = true
    local aimPrediction = 0.1
    local aimTargetOption = "Multi" -- "Head", "Body", "Legs", "Multi"

    local function refreshAimModeButton()
        if aimModeButton then
            aimModeButton.Text = "Aim Mode: " .. (aimMode == "always" and "Always" or "Hold")
        end
    end

    local function refreshRaycastButton()
        if raycastButton then
            raycastButton.Text = aimOnlyVisible and "Raycast [ВКЛ]" or "Raycast [ВЫКЛ]"
        end
    end

    refreshAimModeButton()
    refreshRaycastButton()

    local function isVisibleFromCamera(worldPosition, ignoreList)
        if not camera then return false end
        local origin = camera.CFrame.Position
        local direction = (worldPosition - origin)
        local params = RaycastParams.new()
        params.FilterType = Enum.RaycastFilterType.Exclude
        params.FilterDescendantsInstances = ignoreList or {}
        local result = workspace:Raycast(origin, direction, params)
        if not result then return true end
        return (result.Position - worldPosition).Magnitude < 1.0
    end

    local function getBestTargetPart(character)
        if not character then return nil end
        local head = character:FindFirstChild("Head")
        local root = character:FindFirstChild("HumanoidRootPart")
        local upperTorso = character:FindFirstChild("UpperTorso")
        local lowerTorso = character:FindFirstChild("LowerTorso")
        local leftLowerLeg = character:FindFirstChild("LeftLowerLeg") or character:FindFirstChild("LeftFoot")
        local rightLowerLeg = character:FindFirstChild("RightLowerLeg") or character:FindFirstChild("RightFoot")

        if aimTargetOption == "Head" then
            return head or root or upperTorso or lowerTorso
        elseif aimTargetOption == "Body" then
            return upperTorso or root or lowerTorso or head
        elseif aimTargetOption == "Legs" then
            return leftLowerLeg or rightLowerLeg or lowerTorso or root
        elseif aimTargetOption == "Multi" then
            local candidates = { head, upperTorso, root, lowerTorso, leftLowerLeg, rightLowerLeg }
            if not camera then return head or root end
            local originPos = getAimOrigin()
            local bestScore = math.huge
            local bestPart
            for _, part in ipairs(candidates) do
                if part and part:IsA("BasePart") then
                    local screenPoint, onScreen = camera:WorldToViewportPoint(part.Position)
                    if onScreen then
                        local distToOrigin = (originPos - Vector2.new(screenPoint.X, screenPoint.Y)).Magnitude
                        if (not fovEnabled or distToOrigin <= fovRadius) then
                            local visible = isVisibleFromCamera(part.Position, { localPlayer.Character })
                            if (not aimOnlyVisible or visible) and distToOrigin < bestScore then
                                bestScore = distToOrigin
                                bestPart = part
                            end
                        end
                    end
                end
            end
            return bestPart or head or root
        end
        return head or root
    end

    local function getClosestPlayer()
        local closestPlayer
        local shortestDistance = math.huge
        local originPos = getAimOrigin()
        for _, other in ipairs(Players:GetPlayers()) do
            if other ~= localPlayer and other.Character then
                local humanoid = other.Character:FindFirstChildOfClass("Humanoid")
                if humanoid and humanoid.Health > 0 then
                    local targetPart = getBestTargetPart(other.Character)
                    if targetPart then
                        local screenVec, onScreen = camera:WorldToViewportPoint(targetPart.Position)
                        if onScreen then
                            local distance = (originPos - Vector2.new(screenVec.X, screenVec.Y)).Magnitude
                            if (not fovEnabled or distance <= fovRadius) then
                                local visibleOk = true
                                if aimOnlyVisible then
                                    visibleOk = isVisibleFromCamera(targetPart.Position, { localPlayer.Character })
                                end
                                if visibleOk and distance < shortestDistance then
                                    shortestDistance = distance
                                    closestPlayer = other
                                end
                            end
                        end
                    end
                end
            end
        end
        return closestPlayer
    end

    local aimActive = false
    local aimLoopConnection

    -- Mouse events for hold mode
    do
        local mouse = localPlayer:GetMouse()
        mouse.Button1Down:Connect(function()
            if aimEnabled and aimMode == "hold" then
                aimActive = true
            end
        end)
        mouse.Button1Up:Connect(function()
            if aimMode == "hold" then
                aimActive = false
            end
        end)
    end

    local function startAimLoop()
        if aimLoopConnection then aimLoopConnection:Disconnect() end
        aimLoopConnection = RunService.RenderStepped:Connect(function()
            if not aimEnabled then return end
            local needAim = (aimMode == "always") or (aimMode == "hold" and aimActive)
            if not needAim then return end
            local targetPlayer = getClosestPlayer()
            if not targetPlayer or not targetPlayer.Character then return end
            local targetPart = getBestTargetPart(targetPlayer.Character)
            if not targetPart then return end
            local hrp = targetPlayer.Character:FindFirstChild("HumanoidRootPart")
            local predicted = targetPart.Position + ((hrp and hrp.Velocity or Vector3.new()) * aimPrediction)
            camera.CFrame = CFrame.new(camera.CFrame.Position, predicted)
        end)
    end

    local function stopAimLoop()
        if aimLoopConnection then aimLoopConnection:Disconnect() aimLoopConnection = nil end
    end

    local function toggleAim()
        aimEnabled = not aimEnabled
        aimButton.Text = aimEnabled and "Aimbot [ВКЛ]" or "Aimbot [ВЫКЛ]"
        if aimEnabled then startAimLoop() else stopAimLoop() aimActive = false end
    end

    aimButton.MouseButton1Click:Connect(toggleAim)

    if raycastButton then
        raycastButton.MouseButton1Click:Connect(function()
            aimOnlyVisible = not aimOnlyVisible
            refreshRaycastButton()
        end)
    end

    if aimModeButton then
        aimModeButton.MouseButton1Click:Connect(function()
            aimMode = (aimMode == "hold") and "always" or "hold"
            if aimMode == "hold" then
                aimActive = false
            end
            refreshAimModeButton()
        end)
    end

    -- ============================
    -- Blink (freeze server position with ghost pulse)
    -- ============================
    local blinkEnabled = false
    local blinkConnection
    local blinkGhostModel
    local blinkAnchorCFrame
    local blinkCamCFrame -- камера для перемещения во время Blink
    local blinkMaxDistance = 10 -- в студиях
    local blinkMoveSpeed = 20   -- скорость камеры во время Blink (ст/с)
    local prevCameraType

    local function makeGhostFromCharacter(character)
        if not character then return nil end
        local ghost = Instance.new("Model")
        ghost.Name = "Hex_Ghost"
        for _, child in ipairs(character:GetChildren()) do
            if child:IsA("BasePart") then
                local clone = child:Clone()
                clone.Anchored = true
                clone.CanCollide = false
                clone.Transparency = 0.5
                clone.Material = Enum.Material.ForceField
                clone.Color = Color3.fromRGB(180, 180, 255)
                clone.Parent = ghost
            end
        end
        ghost.Parent = workspace
        return ghost
    end

    local function pulseGhost(ghostModel)
        if not ghostModel then return end
        -- Tween all parts' transparency to create pulse
        for _, part in ipairs(ghostModel:GetChildren()) do
            if part:IsA("BasePart") then
                local t1 = TweenService:Create(part, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { Transparency = 0.75 })
                local t2 = TweenService:Create(part, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { Transparency = 0.5 })
                t1:Play()
                t1.Completed:Connect(function()
                    if ghostModel and ghostModel.Parent then
                        t2:Play()
                    end
                end)
            end
        end
    end

    local function positionGhostAt(ghostModel, cframe)
        if not ghostModel then return end
        for _, part in ipairs(ghostModel:GetChildren()) do
            if part:IsA("BasePart") then
                local offset = CFrame.new()
                if localPlayer.Character and localPlayer.Character:FindFirstChild(part.Name) then
                    local realPart = localPlayer.Character[part.Name]
                    offset = realPart.CFrame:ToObjectSpace(localPlayer.Character.HumanoidRootPart.CFrame)
                end
                -- align relative to HRP
                part.CFrame = cframe * offset
            end
        end
    end

    local function toggleBlink()
        blinkEnabled = not blinkEnabled
        blinkButton.Text = blinkEnabled and "Blink [ВКЛ]" or "Blink [ВЫКЛ]"
        local character = localPlayer.Character
        local rootPart = character and character:FindFirstChild("HumanoidRootPart")
        if not character or not rootPart then return end

        if blinkEnabled then
            blinkAnchorCFrame = rootPart.CFrame
            if blinkGhostModel then blinkGhostModel:Destroy() blinkGhostModel = nil end
            blinkGhostModel = makeGhostFromCharacter(character)
            positionGhostAt(blinkGhostModel, blinkAnchorCFrame)
            pulseGhost(blinkGhostModel)
            -- подготовка камеры
            prevCameraType = camera.CameraType
            blinkCamCFrame = blinkAnchorCFrame
            camera.CameraType = Enum.CameraType.Scriptable
            camera.CFrame = blinkCamCFrame
            if blinkConnection then blinkConnection:Disconnect() end
            blinkConnection = RunService.Heartbeat:Connect(function(dt)
                -- удерживаем позицию персонажа на якоре
                local char = localPlayer.Character
                local hrp = char and char:FindFirstChild("HumanoidRootPart")
                if hrp and blinkAnchorCFrame then
                    hrp.CFrame = blinkAnchorCFrame
                    hrp.AssemblyLinearVelocity = Vector3.new()
                    hrp.AssemblyAngularVelocity = Vector3.new()
                end

                -- движение «камеры» в пределах 10 студов
                if blinkCamCFrame then
                    local move = Vector3.new()
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        move += blinkCamCFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        move -= blinkCamCFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        move -= blinkCamCFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        move += blinkCamCFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                        move += Vector3.new(0, 1, 0)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        move -= Vector3.new(0, 1, 0)
                    end

                    if move.Magnitude > 0 then
                        move = move.Unit * (blinkMoveSpeed * (dt or 0))
                        local desiredPos = blinkCamCFrame.Position + move
                        -- ограничение радиуса от якоря
                        local anchorPos = blinkAnchorCFrame.Position
                        local offset = desiredPos - anchorPos
                        if offset.Magnitude > blinkMaxDistance then
                            offset = offset.Unit * blinkMaxDistance
                        end
                        local newPos = anchorPos + offset
                        blinkCamCFrame = CFrame.new(newPos, newPos + blinkCamCFrame.LookVector)
                    end
                    camera.CFrame = blinkCamCFrame
                end

                -- поддерживаем «призрак» на якоре
                if blinkGhostModel then
                    positionGhostAt(blinkGhostModel, blinkAnchorCFrame)
                end
            end)
        else
            if blinkConnection then blinkConnection:Disconnect() blinkConnection = nil end
            if blinkGhostModel then blinkGhostModel:Destroy() blinkGhostModel = nil end
            -- телепортируем персонажа на текущую позицию «камеры»
            if blinkCamCFrame and localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") then
                local hrp = localPlayer.Character.HumanoidRootPart
                -- выравниваем по горизонту (берём только yaw из камеры)
                local look = blinkCamCFrame.LookVector
                local yaw = math.atan2(-look.X, -look.Z)
                hrp.CFrame = CFrame.new(blinkCamCFrame.Position) * CFrame.Angles(0, yaw, 0)
            end
            -- возвращаем тип камеры
            camera.CameraType = prevCameraType or Enum.CameraType.Custom
            blinkCamCFrame = nil
            blinkAnchorCFrame = nil
        end
    end

    blinkButton.MouseButton1Click:Connect(toggleBlink)

    -- Hotkey: Z toggles Blink
    UserInputService.InputBegan:Connect(function(input, gpe)
        if gpe then return end
        if input.KeyCode == Enum.KeyCode.Z then
            toggleBlink()
        end
    end)

    -- ============================
    -- Tracers module (inline implementation compatible with separate module)
    -- ============================
    local Tracers = {}
    Tracers.__index = Tracers

    function Tracers.new(parentGui)
        local self = setmetatable({}, Tracers)
        self.parentGui = parentGui
        self.enabled = false
        self.linesByPlayer = {}
        self.updateConn = nil
        local container = Instance.new("Frame")
        container.Name = "Hex_Tracers"
        container.BackgroundTransparency = 1
        container.BorderSizePixel = 0
        container.Size = UDim2.fromScale(1, 1)
        container.Position = UDim2.fromScale(0, 0)
        container.ZIndex = 60
        container.Parent = parentGui
        self.container = container
        return self
    end

    function Tracers:_getOrCreateLineFor(playerObj)
        local line = self.linesByPlayer[playerObj]
        if line and line.Parent then return line end
        -- line is a Frame used as a 2D line on screen
        local frame = Instance.new("Frame")
        frame.Name = "Tracer_" .. playerObj.Name
        frame.BackgroundColor3 = getTeamColor(playerObj)
        frame.BorderSizePixel = 0
        frame.AnchorPoint = Vector2.new(0, 0.5)
        frame.Size = UDim2.fromOffset(0, 2)
        frame.Position = UDim2.fromOffset(0, 0)
        frame.BackgroundTransparency = 0
        frame.ZIndex = 61
        frame.Parent = self.container
        self.linesByPlayer[playerObj] = frame
        return frame
    end

    function Tracers:_updateOnce()
        if not camera then return end
        local viewport = camera.ViewportSize
        local startPos = Vector2.new(viewport.X / 2, viewport.Y / 2)
        for _, plr in ipairs(Players:GetPlayers()) do
            if plr ~= localPlayer and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
                local hrp = plr.Character.HumanoidRootPart
                local screenPoint, onScreen = camera:WorldToViewportPoint(hrp.Position)
                local line = self:_getOrCreateLineFor(plr)
                if onScreen then
                    local endPos = Vector2.new(screenPoint.X, screenPoint.Y)
                    local delta = endPos - startPos
                    local length = delta.Magnitude
                    local angle = math.deg(math.atan2(delta.Y, delta.X))
                    line.Visible = true
                    line.Rotation = angle
                    line.Position = UDim2.fromOffset(startPos.X, startPos.Y)
                    line.Size = UDim2.fromOffset(length, 2)
                    line.BackgroundColor3 = getTeamColor(plr)
                else
                    line.Visible = false
                end
            end
        end
        -- cleanup for players that left
        for trackedPlr, line in pairs(self.linesByPlayer) do
            if not trackedPlr.Parent or not Players:FindFirstChild(trackedPlr.Name) then
                if line then line:Destroy() end
                self.linesByPlayer[trackedPlr] = nil
            end
        end
    end

    function Tracers:enable()
        if self.enabled then return end
        self.enabled = true
        self.container.Visible = true
        if self.updateConn then self.updateConn:Disconnect() end
        self.updateConn = RunService.RenderStepped:Connect(function()
            self:_updateOnce()
        end)
    end

    function Tracers:disable()
        if not self.enabled then return end
        self.enabled = false
        if self.updateConn then self.updateConn:Disconnect() self.updateConn = nil end
        self.container.Visible = false
        for _, line in pairs(self.linesByPlayer) do
            if line then line.Visible = false end
        end
    end

    function Tracers:destroy()
        self:disable()
        for _, line in pairs(self.linesByPlayer) do
            if line then line:Destroy() end
        end
        self.linesByPlayer = {}
        if self.container then self.container:Destroy() end
    end

    local tracersObj = Tracers.new(screenGui)
    local tracersEnabled = false
    local function toggleTracers()
        tracersEnabled = not tracersEnabled
        tracersButton.Text = tracersEnabled and "Tracers [ВКЛ]" or "Tracers [ВЫКЛ]"
        if tracersEnabled then tracersObj:enable() else tracersObj:disable() end
    end
    tracersButton.MouseButton1Click:Connect(toggleTracers)
end

coroutine.wrap(HEXAGON_MainFeatures)()
