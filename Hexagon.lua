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
Keys_2.Text = "Blink - - - - - - - - - [V]"
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
