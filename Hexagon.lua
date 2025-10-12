-- Убедитесь что это LocalScript
assert(game:GetService("RunService"):IsClient(), "Этот скрипт должен быть LocalScript")

local player = game.Players.LocalPlayer
if not player then
    warn("Игрок не найден")
    return
end

-- Создаем ScreenGui с проверкой
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "Hexagon Free"
screenGui.ResetOnSpawn = false

-- Проверяем, существует ли уже такое меню
local existingGui = player.PlayerGui:FindFirstChild("Hexagon Free")
if existingGui then
    existingGui:Destroy()
end

-- Безопасная установка родителя
local success, err = pcall(function()
    screenGui.Parent = player:WaitForChild("PlayerGui")
end)

if not success then
    warn("Ошибка при создании GUI:", err)
    return
end

-- Глобальные переменные
local flySpeed = 50
local walkSpeed = 16
local norecoilEnabled = false
local espEnabled = false
local aimEnabled = false
local aimOnlyVisible = false
local flyEnabled = false
local fovEnabled = false
local noclipEnabled = false
local fovRadius = 100
local aimConnection = nil
local aimTarget = "Head" -- Цель для аима
local aimPrediction = 0 -- Предикт для аима

-- Создаем FOV круг
local fovCircle = Drawing.new("Circle")
fovCircle.Thickness = 1
fovCircle.NumSides = 100
fovCircle.Radius = fovRadius
fovCircle.Filled = false
fovCircle.Transparency = 1
fovCircle.Color = Color3.new(1, 1, 1)
fovCircle.Visible = false

-- Создаем фрейм для меню
local menuFrame = Instance.new("Frame")
menuFrame.Size = UDim2.new(0.135, 0, 0.4, 100) -- Увеличен размер для удобства
menuFrame.Position = UDim2.new(0.375, 0, 0.15, 0) -- Центрирование
menuFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
menuFrame.BorderSizePixel = 0
menuFrame.BackgroundTransparency = 0.999999999
menuFrame.Parent = screenGui

-- Закругляем углы фрейма
local frameCorner = Instance.new("UICorner")
frameCorner.CornerRadius = UDim.new(0.05, 0)
frameCorner.Parent = menuFrame

-- Создаем заголовок меню
local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0.1, 0)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
titleLabel.Text = "Hexagon Free"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.TextSize = 14
titleLabel.BorderSizePixel = 0
titleLabel.Parent = menuFrame

-- Добавляем перетаскивание
local UserInputService = game:GetService("UserInputService")
local dragging
local dragInput
local dragStart
local startPos

menuFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = menuFrame.Position
    end
end)

menuFrame.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement and dragging then
        local delta = input.Position - dragStart
        menuFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

-- Функция для создания кнопок
local function createButton(text, position, callback)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0.8, 0, 0.08, 0)
    button.Position = position
    button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    button.Text = text
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.TextSize = 14
    button.BorderSizePixel = 0
    button.Name = text
    button.Parent = menuFrame
    
    local buttonCorner = Instance.new("UICorner")
    buttonCorner.CornerRadius = UDim.new(0.2, 0)
    buttonCorner.Parent = button
    
    button.MouseButton1Click:Connect(callback)
    return button
end

-- Функция для создания полей ввода
local function createSpeedInput(text, position, defaultValue, callback)
    local container = Instance.new("Frame")
    container.Size = UDim2.new(0.9, 0, 0.08, 0)
    container.Position = position
    container.BackgroundTransparency = 1
    container.Parent = menuFrame

    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(0.5, 0, 1, 0)
    label.Position = UDim2.new(0, 0, 0, 0)
    label.BackgroundTransparency = 1
    label.Text = text
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.TextSize = 14
    label.Parent = container

    local textBox = Instance.new("TextBox")
    textBox.Size = UDim2.new(0.4, 0, 1, 0)
    textBox.Position = UDim2.new(0.55, 0, 0, 0)
    textBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    textBox.Text = tostring(defaultValue)
    textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    textBox.TextSize = 14
    textBox.Parent = container

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0.1, 0)
    corner.Parent = textBox

    textBox.FocusLost:Connect(function()
        local newValue = tonumber(textBox.Text)
        if newValue then
            callback(newValue)
        else
            textBox.Text = tostring(defaultValue)
        end
    end)

    return textBox
end

local function createCheckbox(text, position, callback)
    local checkboxFrame = Instance.new("Frame")
    checkboxFrame.Size = UDim2.new(0.8, 0, 0.08, 0)
    checkboxFrame.Position = position
    checkboxFrame.BackgroundTransparency = 1
    checkboxFrame.Parent = menuFrame

    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(0.7, 0, 1, 0)
    label.Position = UDim2.new(0, 0, 0, 0)
    label.BackgroundTransparency = 1
    label.Text = text
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.TextSize = 14
    label.Parent = checkboxFrame

    local checkbox = Instance.new("TextButton")
    checkbox.Size = UDim2.new(0.3, 0, 1, 0)
    checkbox.Position = UDim2.new(0.7, 0, 0, 0)
    checkbox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    checkbox.Text = "OFF"
    checkbox.TextColor3 = Color3.fromRGB(255, 255, 255)
    checkbox.TextSize = 14
    checkbox.BorderSizePixel = 0
    checkbox.Parent = checkboxFrame

    local checkboxCorner = Instance.new("UICorner")
    checkboxCorner.CornerRadius = UDim.new(0.2, 0)
    checkboxCorner.Parent = checkbox

    checkbox.MouseButton1Click:Connect(function()
        aimOnlyVisible = not aimOnlyVisible
        checkbox.Text = aimOnlyVisible and "ON" or "OFF"
        callback(aimOnlyVisible)
    end)

    return checkbox
end

-- Функция для установки скорости
local function setSpeed(speed)
    walkSpeed = speed
    local character = player.Character
    if character then
        local humanoid = character:FindFirstChild("Humanoid")
        if humanoid then
            humanoid.WalkSpeed = speed
        end
    end
end

local function toggleNorecoil()
    norecoilEnabled = not norecoilEnabled
    local button = menuFrame:FindFirstChild("Norecoil")
    if button then
        button.Text = norecoilEnabled and "Norecoil [ВЫКЛ]" or "Norecoil [ВКЛ]"
    end
end

-- Обработка отдачи при стрельбе
local function onShoot(gun)
    if norecoilEnabled then
        if gun and gun:IsA("Tool") then
            -- Отключаем отдачу
            gun.Recoil = 0 -- Замените это на правильный параметр, если требуется
        end
    end
end

-- Подключение события стрельбы для всех инструментов
local function connectGunEvents()
    local character = player.Character
    if character then
        for _, tool in pairs(character:GetChildren()) do
            if tool:IsA("Tool") then
                tool.Activated:Connect(function()
                    onShoot(tool)
                end)
            end
        end
    end
end

-- Подключаем события при загрузке персонажа
player.CharacterAdded:Connect(function(character)
    connectGunEvents()
end)

-- Подключаем события для текущего персонажа, если он уже загружен
connectGunEvents()


-- Функция для включения/выключения noclip
local function toggleNoclip()
    noclipEnabled = not noclipEnabled
    local button = menuFrame:FindFirstChild("Noclip")
    if button then
        button.Text = noclipEnabled and "Noclip [ВКЛ]" or "Noclip [ВЫКЛ]"
    end
end

-- Обработка noclip в каждом кадре
game:GetService("RunService").Stepped:Connect(function()
    local character = player.Character
    if character then
        for _, part in ipairs(character:GetChildren()) do
            if part:IsA("BasePart") then
                part.CanCollide = not noclipEnabled -- Отключаем/включаем столкновения
            end
        end
    else
        -- Если персонаж не найден, возможно, он был удален или не загружен
        noclipEnabled = false -- Убедимся, что noclip отключен
    end
end)

-- Функция для ESP
local function toggleESP()
    espEnabled = not espEnabled
    local button = menuFrame:FindFirstChild("ESP")
    if button then
        button.Text = espEnabled and "ESP [ВКЛ]" or "ESP [ВЫКЛ]"
    end
    
    if espEnabled then
        for _, otherPlayer in pairs(game.Players:GetPlayers()) do
            if otherPlayer ~= player and otherPlayer.Character then
                local highlight = Instance.new("Highlight")
                highlight.FillColor = Color3.fromRGB(255, 0, 0)
                highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                highlight.Parent = otherPlayer.Character
            end
        end
    else
        for _, otherPlayer in pairs(game.Players:GetPlayers()) do
            if otherPlayer.Character then
                local highlight = otherPlayer.Character:FindFirstChild("Highlight")
                if highlight then
                    highlight:Destroy()
                end
            end
        end
    end
end

-- Улучшенная функция полета
local UserInputService = game:GetService("UserInputService")
local flyConnection = nil

local function toggleFly()
    flyEnabled = not flyEnabled
    local button = menuFrame:FindFirstChild("Полет")
    if button then
        button.Text = flyEnabled and "Полет [ВКЛ]" or "Полет [ВЫКЛ]"
    end
    
    local character = player.Character
    if not character then return end
    
    local humanoid = character:FindFirstChild("Humanoid")
    local rootPart = character:FindFirstChild("HumanoidRootPart")
    if not humanoid or not rootPart then return end
    
    if flyEnabled then
        local bv = Instance.new("BodyVelocity")
        bv.Name = "FlyVelocity"
        bv.Parent = rootPart
        bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        bv.Velocity = Vector3.new(0, 0, 0)
        
        local bg = Instance.new("BodyGyro")
        bg.Name = "FlyGyro"
        bg.Parent = rootPart
        bg.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
        bg.P = 9e4
        bg.D = 100
        
        if flyConnection then
            flyConnection:Disconnect()
        end
        
        flyConnection = game:GetService("RunService").Heartbeat:Connect(function()
            local camera = workspace.CurrentCamera
            bg.CFrame = camera.CFrame
            
            local vel = Vector3.new(0, 0, 0)
            local currentSpeed = flySpeed
            
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                vel = vel + (camera.CFrame.LookVector * currentSpeed)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                vel = vel - (camera.CFrame.LookVector * currentSpeed)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                vel = vel - (camera.CFrame.RightVector * currentSpeed)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                vel = vel + (camera.CFrame.RightVector * currentSpeed)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                vel = vel + Vector3.new(0, currentSpeed, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                vel = vel - Vector3.new(0, currentSpeed, 0)
            end
            
            bv.Velocity = vel
        end)

        humanoid:ChangeState(Enum.HumanoidStateType.Physics)
    else
        if flyConnection then
            flyConnection:Disconnect()
            flyConnection = nil
        end
        
        for _, part in pairs(rootPart:GetChildren()) do
            if part:IsA("BodyVelocity") or part:IsA("BodyGyro") then
                part:Destroy()
            end
        end
        
        humanoid:ChangeState(Enum.HumanoidStateType.Running)
    end
end

-- Функция для FOV
local function toggleFOV()
    fovEnabled = not fovEnabled
    fovCircle.Visible = fovEnabled
    
    local button = menuFrame:FindFirstChild("FOV")
    if button then
        button.Text = fovEnabled and "FOV [ВКЛ]" or "FOV [ВЫКЛ]"
    end
end

-- Функция получения ближайшего игрока
local function getClosestPlayer()
    local closestPlayer = nil
    local shortestDistance = math.huge
    local mouse = player:GetMouse()
    local camera = game.Workspace.CurrentCamera
    
    fovCircle.Position = Vector2.new(mouse.X, mouse.Y)
    
    for _, otherPlayer in pairs(game.Players:GetPlayers()) do
        if otherPlayer ~= player and 
           otherPlayer.Character and 
           otherPlayer.Character:FindFirstChild("Humanoid") and 
           otherPlayer.Character.Humanoid.Health > 0 and
           otherPlayer.Character:FindFirstChild("Head") then
            
            local vector, onScreen = camera:WorldToScreenPoint(otherPlayer.Character.Head.Position)
            if onScreen then
                local distance = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(vector.X, vector.Y)).Magnitude
                
                if (not fovEnabled or distance <= fovRadius) and distance < shortestDistance then
                    closestPlayer = otherPlayer
                    shortestDistance = distance
                end
            end
        end
    end
    
    return closestPlayer
end

-- Функция для аима
local function toggleAim()
    aimEnabled = not aimEnabled
    
    if aimEnabled then
        if aimConnection then
            aimConnection:Disconnect()
        end
        
        aimConnection = game:GetService("RunService").RenderStepped:Connect(function()
            local character = player.Character
            if not character or not character:FindFirstChild("Humanoid") then return end
            
            local target = getClosestPlayer()
            if not target or not target.Character then return end
            
            local targetPos = target.Character[aimTarget].Position + (target.Character.HumanoidRootPart.Velocity * aimPrediction) -- Предикт
            workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, targetPos)
        end)
    else
        if aimConnection then
            aimConnection:Disconnect()
            aimConnection = nil
        end
    end
    
    local button = menuFrame:FindFirstChild("Аим")
    if button then
        button.Text = aimEnabled and "Аим [ВКЛ]" or "Аим [ВЫКЛ]"
    end
end

-- Функция для переключения цели аима
local function toggleAimTarget()
    aimTarget = aimTarget == "Head" and "Body" or "Head"
    print("Цель аима изменена на: " .. aimTarget)
    
    local button = menuFrame:FindFirstChild("Цель аима: " .. aimTarget)
    if button then
        button.Text = "Цель аима: " .. aimTarget
    else
        createButton("Цель аима: " .. aimTarget, UDim2.new(0.1, 0, 0.65, 0), toggleAimTarget)
    end
end

-- Функция для регулировки предикта
local function setAimPrediction(value)
    aimPrediction = value
    local textBox = menuFrame:FindFirstChild("Предикт Аима")
    if textBox then
        textBox.Text = tostring(value)
    end
end

-- Создаем кнопки и поля ввода
createButton("Norecoil", UDim2.new(0.1, 0, 0.15, 0), toggleNorecoil)
createButton("ESP", UDim2.new(0.1, 0, 0.25, 0), toggleESP)
createButton("Полет", UDim2.new(0.1, 0, 0.35, 0), toggleFly)
createButton("FOV", UDim2.new(0.1, 0, 0.45, 0), toggleFOV)
createButton("Аим", UDim2.new(0.1, 0, 0.55, 0), toggleAim)
createButton("Noclip", UDim2.new(0.1, 0, 1.05, 0), toggleNoclip)

local fovRadiusInput = createSpeedInput("Радиус FOV:", UDim2.new(0.1, 0, 0.65, 0), fovRadius, function(newRadius)
    fovRadius = newRadius
    fovCircle.Radius = newRadius
end)

local flySpeedInput = createSpeedInput("Скорость полёта:", UDim2.new(0.1, 0, 0.75, 0), flySpeed, function(newSpeed)
    if tonumber(newSpeed) then
        flySpeed = tonumber(newSpeed)
        print("Новая скорость полета:", flySpeed) -- для отладки
    end
end)

local walkSpeedInput = createSpeedInput("Скорость ходьбы:", UDim2.new(0.1, 0, 0.85, 0), walkSpeed, function(newSpeed)
    walkSpeed = newSpeed
    setSpeed(newSpeed)
end)

local aimPredictionInput = createSpeedInput("Предикт Аима:", UDim2.new(0.1, 0, 0.95, 0), aimPrediction, setAimPrediction)

-- Обновление FOV круга
game:GetService("RunService").RenderStepped:Connect(function()
    if fovEnabled then
        local viewportSize = workspace.CurrentCamera.ViewportSize
        local centerX = viewportSize.X / 2
        local centerY = viewportSize.Y / 2
        fovCircle.Position = Vector2.new(centerX, centerY)
    end
end)

-- Показ/скрытие меню на клавишу
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if input.KeyCode == Enum.KeyCode.RightShift then
        menuFrame.Visible = not menuFrame.Visible
    elseif input.KeyCode == Enum.KeyCode.V then
        toggleFly() -- Привязываем полет к клавише V
    end
end)

-- Очистка при уничтожении GUI
screenGui.Destroying:Connect(function()
    if aimConnection then
        aimConnection:Disconnect()
    end
    if flyConnection then
        flyConnection:Disconnect()
    end
end)

-- Обработка изменения персонажа
player.CharacterAdded:Connect(function(character)
    if godModeEnabled then
        local humanoid = character:WaitForChild("Humanoid")
        humanoid.MaxHealth = math.huge
        humanoid.Health = math.huge
    end
end)

-- Установка начальных значений
setSpeed(walkSpeed)
fovCircle.Radius = fovRadius

-- Обработка события при добавлении новых игроков
game.Players.PlayerAdded:Connect(function(newPlayer)
    if espEnabled then
        newPlayer.CharacterAdded:Connect(function(character)
            local highlight = Instance.new("Highlight")
            highlight.FillColor = Color3.fromRGB(255, 0, 0)
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            highlight.Parent = character
        end)
    end
end)

-- Обработка удаления игроков
game.Players.PlayerRemoving:Connect(function(removedPlayer)
    if espEnabled and removedPlayer.Character then
        local highlight = removedPlayer.Character:FindFirstChild("Highlight")
        if highlight then
            highlight:Destroy()
        end
    end
end)

-- Обновление меню
local function updateMenu()
    local aimTargetButton = menuFrame:FindFirstChild("Цель аима: " .. aimTarget)
    if aimTargetButton then
        aimTargetButton.Text = "Цель аима: " .. aimTarget
    end
end

-- Запуск обновления меню
updateMenu()

-- Конец скрипта
print("Чит меню загружено успешно.")