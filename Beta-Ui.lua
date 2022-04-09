local Utility = loadstring(game:HttpGet('https://raw.githubusercontent.com/Holdigen/Random-Scripts/main/Utility'))()

local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")
local Mouse = game:GetService("Players").LocalPlayer:GetMouse()

local Library = {}

function Library:Window(gamename, uimaincolor)

    do
        if CoreGui:FindFirstChild("VedroxUi") then
            CoreGui:FindFirstChild("VedroxUi"):Destroy()
        end
    end

    local uimaincolor = uimaincolor or Color3.fromRGB(19, 139, 194)

    local VedroxUi = Instance.new("ScreenGui")
    local MainFrame = Instance.new("Frame")
    local MainFrameCorner = Instance.new("UICorner")
    local LeftFrame = Instance.new("Frame")
    local LeftFrameCorner = Instance.new("UICorner")
    local GameName = Instance.new("TextLabel")
    local GameNameScale = Instance.new("UITextSizeConstraint")
    local HubName = Instance.new("TextLabel")
    local LeftDiv = Instance.new("Frame")
    local TabHolder = Instance.new("ScrollingFrame")
    local TabHolderList = Instance.new("UIListLayout")
    local DragInput = Instance.new("Frame")
    local Pages = Instance.new("Folder")

    VedroxUi.Name = "VedroxUi"
    VedroxUi.Parent = CoreGui
    
    MainFrame.Name = "MainFrame"
    MainFrame.Parent = VedroxUi
    MainFrame.BackgroundColor3 = Color3.fromRGB(37, 41, 49)
    MainFrame.Position = UDim2.new(0.712622813, 0, 0.599582846, 0)
    MainFrame.Size = UDim2.new(0, 540, 0, 400)
    MainFrame.ClipsDescendants = true
    
    MainFrameCorner.CornerRadius = UDim.new(0, 3)
    MainFrameCorner.Name = "MainFrameCorner"
    MainFrameCorner.Parent = MainFrame
    
    LeftFrame.Name = "LeftFrame"
    LeftFrame.Parent = MainFrame
    LeftFrame.BackgroundColor3 = Color3.fromRGB(33, 36, 44)
    LeftFrame.Size = UDim2.new(0, 150, 0, 400)
    
    LeftFrameCorner.CornerRadius = UDim.new(0, 3)
    LeftFrameCorner.Name = "LeftFrameCorner"
    LeftFrameCorner.Parent = LeftFrame
    
    GameName.Name = "GameName"
    GameName.Parent = LeftFrame
    GameName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    GameName.BackgroundTransparency = 1.000
    GameName.Position = UDim2.new(0.0737036169, 0, 0.127499998, 0)
    GameName.Size = UDim2.new(0, 127, 0, 31)
    GameName.Font = Enum.Font.GothamSemibold
    GameName.Text = gamename or "Game"
    GameName.TextColor3 = Color3.fromRGB(255, 255, 255)
    GameName.TextScaled = true
    GameName.TextSize = 14.000
    GameName.TextTransparency = 0.400
    GameName.TextWrapped = true
    
    GameNameScale.Name = "GameNameScale"
    GameNameScale.Parent = GameName
    GameNameScale.MaxTextSize = 14
    
    HubName.Name = "HubName"
    HubName.Parent = LeftFrame
    HubName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    HubName.BackgroundTransparency = 1.000
    HubName.Position = UDim2.new(0.0670370385, 0, 0.0274999999, 0)
    HubName.Size = UDim2.new(0, 128, 0, 38)
    HubName.Font = Enum.Font.GothamBold
    HubName.Text = "Vedrox Hub"
    HubName.TextColor3 = Color3.fromRGB(255, 255, 255)
    HubName.TextSize = 16.000
    HubName.TextWrapped = true
    
    LeftDiv.Name = "LeftDiv"
    LeftDiv.Parent = LeftFrame
    LeftDiv.BackgroundColor3 = Color3.fromRGB(72, 73, 75)
    LeftDiv.BorderSizePixel = 0
    LeftDiv.Position = UDim2.new(0.0737036169, 0, 0.229999989, 0)
    LeftDiv.Size = UDim2.new(0, 127, 0, 1)
    
    TabHolder.Name = "TabHolder"
    TabHolder.Parent = LeftFrame
    TabHolder.Active = true
    TabHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabHolder.BackgroundTransparency = 1.000
    TabHolder.BorderSizePixel = 0
    TabHolder.Position = UDim2.new(0.0670369491, 0, 0.25999999, 0)
    TabHolder.Size = UDim2.new(0, 134, 0, 290)
    TabHolder.BottomImage = ""
    TabHolder.ScrollBarThickness = 2
    TabHolder.TopImage = ""
    
    TabHolderList.Name = "TabHolderList"
    TabHolderList.Parent = TabHolder
    TabHolderList.SortOrder = Enum.SortOrder.LayoutOrder
    TabHolderList.Padding = UDim.new(0, 3)
    
    DragInput.Name = "DragInput"
    DragInput.Parent = LeftFrame
    DragInput.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    DragInput.BackgroundTransparency = 1.000
    DragInput.Size = UDim2.new(0, 157, 0, 92)
    
    Pages.Name = "Pages"
    Pages.Parent = MainFrame

    local BackgroundColorElements = {}
	local TextColorElements = {}
	local ImageColorElements = {}

    for i, v in next, VedroxUi:GetDescendants() do
		if v:IsA("Frame") and v.BackgroundColor3 == uimaincolor then
			table.insert(BackgroundColorElements, v.Name)
		elseif v:IsA("TextLabel") or v:IsA("TextButton") and v.TextColor3 == uimaincolor then
			table.insert(TextColorElements, v.Name)
		elseif v:IsA("ImageLabel") and v.ImageColor3 == uimaincolor then
			table.insert(ImageColorElements, v.Name)
		end
	end
 
	RunService.Heartbeat:Connect(function()
		for i, v in next, BackgroundColorElements do
			if uimaincolor == nil then else
				for d, k in next, VedroxUi:GetDescendants() do
					if k.Name == v then
						k.BackgroundColor3 = uimaincolor
					end
				end
			end
		end
		for i, v in next, TextColorElements do
			if uimaincolor == "nil" then else
				for d, k in next, VedroxUi:GetDescendants() do
					if v.Name ~= "HubName" and v.Name ~= "GameName" then
                        if k.Name == v then
                            k.TextColor3 = uimaincolor
                        end
                    end
				end
			end
		end
		for i, v in next, ImageColorElements do
			if uimaincolor == "nil" then else
				for d, k in next, VedroxUi:GetDescendants() do
					if k.Name == v then
						k.ImageColor3 = uimaincolor
					end
				end
			end
		end
 
	end)

    local dragToggle = nil
	local dragSpeed = 0.12
	local dragStart = nil
	local startPos = nil
 
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		Utility:Tween(MainFrame, dragSpeed, {Position = position})
	end
 
	DragInput.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = MainFrame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
 
	UserInputService.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)

    function Library:Toggle()
        if MainFrame.Size == UDim2.new(0, 540, 0, 400) then
            Utility:Tween(MainFrame, 0.12, {Size = UDim2.new(0, 0, 0, 0)})
        else
            Utility:Tween(MainFrame, 0.12, {Size = UDim2.new(0, 540, 0, 400)})
        end
    end

    function Library:Theme(newcolor)
        uimaincolor = newcolor
    end

    local Window = {}

    function Window:Page(pagename)

        local TabButton = Instance.new("Frame")
        local TabButtonCorner = Instance.new("UICorner")
        local TabButtonName = Instance.new("TextLabel")
        local TabButtonTrigger = Instance.new("TextButton")
        local Page = Instance.new("ScrollingFrame")
        local PageList = Instance.new("UIListLayout")

        TabButton.Name = "TabButton"
        TabButton.Parent = TabHolder
        TabButton.BackgroundTransparency = 1 --// 0
        TabButton.BackgroundColor3 = Color3.fromRGB(37, 41, 49)
        TabButton.Size = UDim2.new(0, 128, 0, 35)
        
        TabButtonCorner.CornerRadius = UDim.new(0, 4)
        TabButtonCorner.Name = "TabButtonCorner"
        TabButtonCorner.Parent = TabButton
        
        TabButtonName.Name = "TabButtonName"
        TabButtonName.Parent = TabButton
        TabButtonName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabButtonName.BackgroundTransparency = 1.000
        TabButtonName.Position = UDim2.new(0, 0, -0.0235700328, 0)
        TabButtonName.Size = UDim2.new(0, 128, 0, 35)
        TabButtonName.Font = Enum.Font.GothamBold
        TabButtonName.Text = pagename or "Page"
        TabButtonName.TextColor3 = Color3.fromRGB(255, 255, 255)
        TabButtonName.TextSize = 14.000
        TabButtonName.TextTransparency = 0.550 --// 0.2
        
        TabButtonTrigger.Name = "TabButtonTrigger"
        TabButtonTrigger.Parent = TabButton
        TabButtonTrigger.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TabButtonTrigger.BackgroundTransparency = 1.000
        TabButtonTrigger.Size = UDim2.new(0, 127, 0, 35)
        TabButtonTrigger.Font = Enum.Font.SourceSans
        TabButtonTrigger.Text = ""
        TabButtonTrigger.TextColor3 = Color3.fromRGB(0, 0, 0)
        TabButtonTrigger.TextSize = 14.000

        Page.Name = "Page"
        Page.Parent = Pages
        Page.Active = true
        Page.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Page.BackgroundTransparency = 1.000
        Page.BorderSizePixel = 0
        Page.Position = UDim2.new(0.290740728, 0, 0.0125000002, 0)
        Page.Size = UDim2.new(0, 376, 0, 390)
        Page.BottomImage = ""
        Page.CanvasPosition = Vector2.new(0, 260)
        Page.ScrollBarThickness = 2
        Page.TopImage = ""
        Page.Visible = false --// true

        PageList.Name = "PageList"
        PageList.Parent = Page
        PageList.HorizontalAlignment = Enum.HorizontalAlignment.Left
        PageList.SortOrder = Enum.SortOrder.LayoutOrder
        PageList.Padding = UDim.new(0, 3)

        local pagetweenspeed = 0.14

        TabButtonTrigger.MouseButton1Click:Connect(function()
            for i, v in pairs(TabHolder:GetChildren()) do
                if v:IsA("Frame") then
                    Utility:Tween(v, pagetweenspeed, {BackgroundTransparency = 1})
                    Utility:Tween(v.TabButtonName, pagetweenspeed, {TextTransparency = 0.550})
                end
            end
            for i, v in pairs(Pages:GetChildren()) do
                v.Visible = false
            end
            Utility:Tween(TabButton, pagetweenspeed, {BackgroundTransparency = 0})
            Utility:Tween(TabButtonName, pagetweenspeed, {TextTransparency = 0.2})
            Page.Visible = true
        end)

        Pages:FindFirstChild("Page").Visible = true
        Utility:Tween(TabHolder:FindFirstChild("TabButton"), pagetweenspeed, {BackgroundTransparency = 0})
        Utility:Tween(TabHolder:FindFirstChild("TabButton").TabButtonName, pagetweenspeed, {TextTransparency = 0.2})

        TabHolder.CanvasSize = UDim2.new(0, 0, 0, TabHolderList.AbsoluteContentSize.Y)

        local PageItems = {}

        function PageItems:Section(sectionname)

            local Section = Instance.new("Frame")
            local SectionName = Instance.new("TextLabel")
            local SectionCorner = Instance.new("UICorner")
            local SectionItemList = Instance.new("UIListLayout")

            Section.Name = "Section"
            Section.Parent = Page
            Section.BackgroundColor3 = Color3.fromRGB(33, 36, 44)
            Section.Size = UDim2.new(0, 370, 0, 45)
            
            SectionName.Name = "SectionName"
            SectionName.Parent = Section
            SectionName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SectionName.BackgroundTransparency = 1.000
            SectionName.Position = UDim2.new(0.0378378369, 0, -0.0199996941, 0)
            SectionName.Size = UDim2.new(0, 356, 0, 40)
            SectionName.Font = Enum.Font.GothamSemibold
            SectionName.Text = sectionname or "Section"
            SectionName.TextColor3 = Color3.fromRGB(255, 255, 255)
            SectionName.TextSize = 14.000
            
            SectionCorner.CornerRadius = UDim.new(0, 4)
            SectionCorner.Name = "SectionCorner"
            SectionCorner.Parent = Section
            
            SectionItemList.Name = "SectionItemList"
            SectionItemList.Parent = Section
            SectionItemList.HorizontalAlignment = Enum.HorizontalAlignment.Center
            SectionItemList.SortOrder = Enum.SortOrder.LayoutOrder
            SectionItemList.Padding = UDim.new(0, 2)

            Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)

            local Container = {}

            function Container:Button(buttonname, callback)

                local callback = callback or function() end

                local Button = Instance.new("TextButton")
                local ButtonCorner = Instance.new("UICorner")
                local ButtonStroke = Instance.new("UIStroke")

                Button.Name = "Button"
                Button.Parent = Section
                Button.BackgroundColor3 = Color3.fromRGB(24, 27, 33)
                Button.BorderSizePixel = 0
                Button.Position = UDim2.new(0.0280000009, 0, 0.419714272, 0)
                Button.Size = UDim2.new(0, 356, 0, 40)
                Button.AutoButtonColor = false
                Button.Font = Enum.Font.GothamSemibold
                Button.TextColor3 = Color3.fromRGB(255, 255, 255)
                Button.TextSize = 14
                Button.TextTransparency = 0.200
                Button.Text = buttonname or "Button"
                
                ButtonCorner.CornerRadius = UDim.new(0, 4)
                ButtonCorner.Parent = Button
                
                ButtonStroke.Name = "ButtonStroke"
                ButtonStroke.Parent = Button
                ButtonStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                ButtonStroke.Color = Color3.fromRGB(46, 46, 47)
                ButtonStroke.Thickness = 1

                Button.MouseEnter:Connect(function()
                    Utility:Tween(Button, 0.05, {TextSize = 12})
                    Utility:Tween(ButtonStroke, 0.1, {Color = uimaincolor})
                end)
                Button.MouseLeave:Connect(function()
                    Utility:Tween(Button, 0.05, {TextSize = 14})
                    Utility:Tween(ButtonStroke, 0.1, {Color = Color3.fromRGB(46, 46, 47)})
                end)
                Button.MouseButton1Click:Connect(function()
                    Utility:Tween(Button, 0.08, {TextSize = 8}, true)
                    Utility:Tween(Button, 0.10, {TextSize = 16}, true)
                    Utility:Tween(Button, 0.12, {TextSize = 14}, true)
                end)
                Button.MouseButton1Click:Connect(function()
                    callback()
                end)

                Section.Size = Section.Size + UDim2.new(0, 0, 0, Button.Size.Y.Offset + SectionItemList.Padding.Offset)
                Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)

            end

            function Container:Toggle(togglename, preset, callback)

                local callback = callback or function() end

                local Toggle = Instance.new("Frame")
                local ToggleCorner = Instance.new("UICorner")
                local ToggleName = Instance.new("TextLabel")
                local ToggleTrigger = Instance.new("TextButton")
                local ToggleOut = Instance.new("Frame")
                local ToggleOutCorner = Instance.new("UICorner")
                local ToggleOn = Instance.new("ImageLabel")
                local ToggleOff = Instance.new("ImageLabel")

                Toggle.Name = "Toggle"
                Toggle.Parent = Section
                Toggle.BackgroundColor3 = Color3.fromRGB(29, 32, 40)
                Toggle.BorderSizePixel = 0
                Toggle.Position = UDim2.new(0.0189189184, 0, 0.336134464, 0)
                Toggle.Size = UDim2.new(0, 356, 0, 40)
                
                ToggleCorner.CornerRadius = UDim.new(0, 5)
                ToggleCorner.Name = "ToggleCorner"
                ToggleCorner.Parent = Toggle
                
                ToggleName.Name = "ToggleName"
                ToggleName.Parent = Toggle
                ToggleName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ToggleName.BackgroundTransparency = 1.000
                ToggleName.Position = UDim2.new(0.0280898884, 0, 0.00500030536, 0)
                ToggleName.Size = UDim2.new(0, 270, 0, 40)
                ToggleName.Font = Enum.Font.GothamSemibold
                ToggleName.Text = togglename or "Toggle"
                ToggleName.TextColor3 = Color3.fromRGB(255, 255, 255)
                ToggleName.TextSize = 14.000
                ToggleName.TextTransparency = 0.200
                ToggleName.TextXAlignment = Enum.TextXAlignment.Left
                
                ToggleTrigger.Name = "ToggleTrigger"
                ToggleTrigger.Parent = Toggle
                ToggleTrigger.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ToggleTrigger.BackgroundTransparency = 1.000
                ToggleTrigger.Size = UDim2.new(0, 356, 0, 40)
                ToggleTrigger.Font = Enum.Font.SourceSans
                ToggleTrigger.Text = ""
                ToggleTrigger.TextColor3 = Color3.fromRGB(0, 0, 0)
                ToggleTrigger.TextSize = 14.000
                
                ToggleOut.Name = "ToggleOut"
                ToggleOut.Parent = Toggle
                ToggleOut.BackgroundColor3 = Color3.fromRGB(212, 212, 212)
                ToggleOut.BackgroundTransparency = 0.200
                ToggleOut.Position = UDim2.new(0.915730357, 0, 0.25, 0)
                ToggleOut.Size = UDim2.new(0, 20, 0, 20)
                
                ToggleOutCorner.CornerRadius = UDim.new(0, 3)
                ToggleOutCorner.Name = "ToggleOutCorner"
                ToggleOutCorner.Parent = ToggleOut
                
                ToggleOn.Name = "ToggleOn"
                ToggleOn.Parent = Toggle
                ToggleOn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ToggleOn.BackgroundTransparency = 1.000
                ToggleOn.Position = UDim2.new(0.91700003, 0, 0.275000006, 0)
                ToggleOn.Size = UDim2.new(0, 18, 0, 18)
                ToggleOn.Image = "rbxassetid://3926305904"
                ToggleOn.ImageRectOffset = Vector2.new(644, 204)
                ToggleOn.ImageRectSize = Vector2.new(36, 36)
                ToggleOn.ImageTransparency = 1.000
                
                ToggleOff.Name = "ToggleOff"
                ToggleOff.Parent = Toggle
                ToggleOff.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ToggleOff.BackgroundTransparency = 1.000
                ToggleOff.Position = UDim2.new(0.91700003, 0, 0.275000006, 0)
                ToggleOff.Size = UDim2.new(0, 18, 0, 18)
                ToggleOff.Image = "rbxassetid://3926305904"
                ToggleOff.ImageRectOffset = Vector2.new(924, 724)
                ToggleOff.ImageRectSize = Vector2.new(36, 36)

                local toggled = false
                if preset and preset == true then
                    toggled = true
                end

                callback(toggled)

                local toggletweenspeed = 0.25

                if toggled == true then
                    Utility:Tween(ToggleOut, toggletweenspeed, {BackgroundColor3 = uimaincolor})
                    Utility:Tween(ToggleOff, toggletweenspeed, {ImageTransparency = 1})
                    Utility:Tween(ToggleOn, toggletweenspeed, {ImageTransparency = 0})
                end
                ToggleTrigger.MouseButton1Click:Connect(function()
                    if toggled == false then
                        Utility:Tween(ToggleOut, toggletweenspeed, {BackgroundColor3 = uimaincolor})
                        Utility:Tween(ToggleOff, toggletweenspeed, {ImageTransparency = 1})
                        Utility:Tween(ToggleOn, toggletweenspeed, {ImageTransparency = 0})
                    elseif toggled == true then
                        Utility:Tween(ToggleOut, toggletweenspeed, {BackgroundColor3 = Color3.fromRGB(255, 255, 255)})
                        Utility:Tween(ToggleOff, toggletweenspeed, {ImageTransparency = 0})
                        Utility:Tween(ToggleOn, toggletweenspeed, {ImageTransparency = 1})
                    end
                    toggled = not toggled
                    callback(toggled)
                end)

                Section.Size = Section.Size + UDim2.new(0, 0, 0, Toggle.Size.Y.Offset + SectionItemList.Padding.Offset)
                Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)

                local Config = {}

                function Config:Text(newtext)
                    ToggleName.Text = newtext
                end
                function Config:Toggle(booltotog)
                    if booltotog == true then
                        Utility:Tween(ToggleOut, toggletweenspeed, {BackgroundColor3 = uimaincolor})
                        Utility:Tween(ToggleOff, toggletweenspeed, {ImageTransparency = 1})
                        Utility:Tween(ToggleOn, toggletweenspeed, {ImageTransparency = 0})
                    elseif booltotog == false then
                        Utility:Tween(ToggleOut, toggletweenspeed, {BackgroundColor3 = Color3.fromRGB(255, 255, 255)})
                        Utility:Tween(ToggleOff, toggletweenspeed, {ImageTransparency = 0})
                        Utility:Tween(ToggleOn, toggletweenspeed, {ImageTransparency = 1})
                    end
                    toggled = not toggled
                    callback(toggled)
                end

                return Config
            
            end

            function Container:Slider(slidername, minvalue, maxvalue, startvalue, callback)

                local minvalue = minvalue or 1
                local maxvalue = maxvalue or 100
                local startvalue = startvalue or 50
                local callback = callback or function() end

                local Slider = Instance.new("Frame")
                local SliderCorner = Instance.new("UICorner")
                local SliderName = Instance.new("TextLabel")
                local SliderOut = Instance.new("ImageLabel")
                local SliderIn = Instance.new("ImageLabel")
                local SliderCircle = Instance.new("ImageButton")
                local SliderTrigger = Instance.new("TextButton")

                Slider.Name = "Slider"
                Slider.Parent = Section
                Slider.BackgroundColor3 = Color3.fromRGB(29, 32, 40)
                Slider.BorderSizePixel = 0
                Slider.Position = UDim2.new(0.0189189184, 0, 0.336134464, 0)
                Slider.Size = UDim2.new(0, 356, 0, 40)
                
                SliderCorner.CornerRadius = UDim.new(0, 5)
                SliderCorner.Name = "SliderCorner"
                SliderCorner.Parent = Slider
                
                SliderName.Name = "SliderName"
                SliderName.Parent = Slider
                SliderName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                SliderName.BackgroundTransparency = 1.000
                SliderName.Position = UDim2.new(0.0280898884, 0, 0.00500030536, 0)
                SliderName.Size = UDim2.new(0, 176, 0, 40)
                SliderName.Font = Enum.Font.GothamSemibold
                SliderName.Text = (slidername or "Slider").." - "..tostring(startvalue or 50)
                SliderName.TextColor3 = Color3.fromRGB(255, 255, 255)
                SliderName.TextSize = 14.000
                SliderName.TextTransparency = 0.200
                SliderName.TextXAlignment = Enum.TextXAlignment.Left
                
                SliderOut.Name = "SliderOut"
                SliderOut.Parent = Slider
                SliderOut.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                SliderOut.BackgroundTransparency = 1.000
                SliderOut.Position = UDim2.new(0.523370774, 0, 0.370834351, 0)
                SliderOut.Size = UDim2.new(0, 150, 0, 10)
                SliderOut.Image = "rbxassetid://3570695787"
                SliderOut.ImageTransparency = 0.400
                SliderOut.ScaleType = Enum.ScaleType.Slice
                SliderOut.SliceCenter = Rect.new(100, 100, 100, 100)
                SliderOut.SliceScale = 0.100
                
                SliderIn.Name = "SliderIn"
                SliderIn.Parent = SliderOut
                SliderIn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                SliderIn.BackgroundTransparency = 1.000
                SliderIn.Size = UDim2.new(0, 75, 0, 10)
                SliderIn.Image = "rbxassetid://3570695787"
                SliderIn.ImageTransparency = 0.200
                SliderIn.ScaleType = Enum.ScaleType.Slice
                SliderIn.SliceCenter = Rect.new(100, 100, 100, 100)
                SliderIn.SliceScale = 0.300
                
                SliderCircle.Name = "SliderCircle"
                SliderCircle.Parent = SliderOut
                SliderCircle.BackgroundTransparency = 1.000
                SliderCircle.Position = UDim2.new(0.426666647, 0, -0.599999964, 0)
                SliderCircle.Size = UDim2.new(0, 22, 0, 22)
                SliderCircle.ZIndex = 3
                SliderCircle.Image = "rbxassetid://3926305904"
                SliderCircle.ImageRectOffset = Vector2.new(204, 484)
                SliderCircle.ImageRectSize = Vector2.new(36, 36)

                SliderTrigger.Name = "SliderTrigger"
                SliderTrigger.Parent = SliderOut
                SliderTrigger.BackgroundTransparency = 1
                SliderTrigger.Text = ""
                SliderTrigger.Size = UDim2.new(0, 150, 0, 10)

                local dragging = false
                local value = startvalue

                callback(value)

                do
                    SliderCircle.Position = UDim2.new((startvalue or 0) / maxvalue, -10, -0.6, 0)
                    SliderIn.Size = UDim2.new((startvalue or 0) / maxvalue, 0, 0, 10)
                end

                local function move(input)
                    local pos = UDim2.new(math.clamp((input.Position.X - SliderOut.AbsolutePosition.X) / SliderOut.AbsoluteSize.X, 0, 1), -10, -0.6,0)
                    local pos1 = UDim2.new(math.clamp((input.Position.X - SliderOut.AbsolutePosition.X) / SliderOut.AbsoluteSize.X, 0, 1), 0, 0, 10)
                    SliderIn:TweenSize(pos1, "Out", "Sine", 0.2, true)
                    SliderCircle:TweenPosition(pos, "Out", "Sine", 0.2, true)
                    value = math.floor(((pos.X.Scale * maxvalue) / maxvalue) * (maxvalue - minvalue) + minvalue)
                    SliderName.Text = (slidername or "Slider").." - "..tostring(value)
                    callback(value)
                end
                SliderCircle.InputBegan:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = true
                            Utility:Tween(SliderCircle, 0.2, {ImageColor3 = uimaincolor})
                            Utility:Tween(SliderIn, 0.2, {ImageColor3 = uimaincolor})
                        end
                    end
                )
                SliderCircle.InputEnded:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = false
                            Utility:Tween(SliderCircle, 0.2, {ImageColor3 = Color3.fromRGB(255, 255, 255)})
                            Utility:Tween(SliderIn, 0.2, {ImageColor3 = Color3.fromRGB(255, 255, 255)})
                        end
                    end
                )
                UserInputService.InputChanged:Connect(function(input)
                    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                        move(input)
                    end
                end)
                SliderTrigger.MouseButton1Click:Connect(function()
                    SliderIn.Size = UDim2.new(0, math.clamp(Mouse.X - SliderIn.AbsolutePosition.X, 0, 150), 0, 10)
                    SliderCircle.Position = UDim2.new(math.clamp((Mouse.X - SliderOut.AbsolutePosition.X) / SliderOut.AbsoluteSize.X, 0, 1), -10, -0.6, 0)
                    value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 150) * SliderIn.AbsoluteSize.X) + tonumber(minvalue))
                    callback(value)
                    moveconnection = Mouse.Move:Connect(function()
                        SliderName.Text = (slidername or "Slider").." - "..tostring(value)
                        value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 150) * SliderIn.AbsoluteSize.X) + tonumber(minvalue))
                        callback(value)
                        SliderIn.Size = UDim2.new(0, math.clamp(Mouse.X - SliderIn.AbsolutePosition.X, 0, 150), 0, 10)
                    end)
                    releaseconnection = UserInputService.InputEnded:Connect(function(mouse)
                        if mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                            value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 150) * SliderIn.AbsoluteSize.X) + tonumber(minvalue))
                            callback(value)
                            SliderName.Text = (slidername or "Slider").." - "..tostring(value)
                            SliderIn.Size = UDim2.new(0, math.clamp(Mouse.X - SliderIn.AbsolutePosition.X, 0, 150), 0, 10)
                            moveconnection:Disconnect()
                            releaseconnection:Disconnect()
                        end
                    end)
                end)

                Section.Size = Section.Size + UDim2.new(0, 0, 0, Slider.Size.Y.Offset + SectionItemList.Padding.Offset)
                Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)

                local Config = {}

                function Config:SlideTo(newslidepos)
                    value = newslidepos
                    callback(value)
                    SliderIn:TweenSize(UDim2.new((value or 0) / maxvalue, 0, 0, 10), "Out", "Sine", 0.2, true)
                    SliderCircle:TweenPosition(UDim2.new((value or 0) / maxvalue, -10, -0.6, 0), "Out", "Sine", 0.2, true)
                    SliderName.Text = (slidername or "Slider").." - "..tostring(value)
                end

                return Config

            end

            function  Container:Textbox(textboxname, presettext, callback)
                
                local callback = callback or function() end
                
                local Textbox = Instance.new("Frame")
                local TextBoxCorner = Instance.new("UICorner")
                local TextBoxName = Instance.new("TextLabel")
                local TextBoxInput = Instance.new("TextBox")
                local TextBoxInputCorner = Instance.new("UICorner")
                local TextBoxSelected = Instance.new("TextLabel")
                local TextBoxInputStroke = Instance.new("UIStroke")

                Textbox.Name = "Textbox"
                Textbox.Parent = Section
                Textbox.BackgroundColor3 = Color3.fromRGB(29, 32, 40)
                Textbox.BorderSizePixel = 0
                Textbox.Position = UDim2.new(0.0189189184, 0, 0.581314862, 0)
                Textbox.Size = UDim2.new(0, 356, 0, 70)
                
                TextBoxCorner.CornerRadius = UDim.new(0, 5)
                TextBoxCorner.Name = "TextBoxCorner"
                TextBoxCorner.Parent = Textbox
                
                TextBoxName.Name = "TextBoxName"
                TextBoxName.Parent = Textbox
                TextBoxName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextBoxName.BackgroundTransparency = 1.000
                TextBoxName.Position = UDim2.new(0.0280898884, 0, 0.00500052329, 0)
                TextBoxName.Size = UDim2.new(0, 168, 0, 30)
                TextBoxName.Font = Enum.Font.GothamSemibold
                TextBoxName.Text = textboxname or "Textbox"
                TextBoxName.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextBoxName.TextSize = 14.000
                TextBoxName.TextTransparency = 0.200
                TextBoxName.TextXAlignment = Enum.TextXAlignment.Left
                
                TextBoxInput.Name = "TextBoxInput"
                TextBoxInput.Parent = Textbox
                TextBoxInput.BackgroundColor3 = Color3.fromRGB(24, 27, 33)
                TextBoxInput.BorderSizePixel = 0
                TextBoxInput.Position = UDim2.new(0.0280898884, 0, 0.433571935, 0)
                TextBoxInput.Size = UDim2.new(0, 337, 0, 30)
                TextBoxInput.Font = Enum.Font.GothamBold
                TextBoxInput.PlaceholderText = presettext or "Enter text .."
                TextBoxInput.Text = ""
                TextBoxInput.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextBoxInput.TextSize = 12.000
                
                TextBoxInputCorner.CornerRadius = UDim.new(0, 4)
                TextBoxInputCorner.Name = "TextBoxInputCorner"
                TextBoxInputCorner.Parent = TextBoxInput
                
                TextBoxSelected.Name = "TextBoxSelected"
                TextBoxSelected.Parent = Textbox
                TextBoxSelected.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextBoxSelected.BackgroundTransparency = 1.000
                TextBoxSelected.Position = UDim2.new(0.522471905, 0, 0.00500052329, 0)
                TextBoxSelected.Size = UDim2.new(0, 160, 0, 30)
                TextBoxSelected.Font = Enum.Font.GothamSemibold
                TextBoxSelected.Text = ""
                TextBoxSelected.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextBoxSelected.TextSize = 14.000
                TextBoxSelected.TextTransparency = 0.400
                TextBoxSelected.TextXAlignment = Enum.TextXAlignment.Right

                TextBoxInputStroke.Name = "TextBoxInputStroke"
                TextBoxInputStroke.Parent = TextBoxInput
                TextBoxInputStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                TextBoxInputStroke.Color = Color3.fromRGB(46, 46, 47)
                TextBoxInputStroke.Thickness = 1

                TextBoxInput.Focused:Connect(function()
                    Utility:Tween(TextBoxInputStroke, 0.1, {Color = uimaincolor})
                    TextBoxSelected.Text = "..."
                end)
                TextBoxInput.FocusLost:Connect(function()
                    Utility:Tween(TextBoxInputStroke, 0.1, {Color = Color3.fromRGB(46, 46, 47)})
                    if TextBoxInput.Text ~= "" then
                        TextBoxSelected.Text = TextBoxInput.Text
                        callback(TextBoxInput.Text)
                        TextBoxInput.Text = ""
                    else
                        TextBoxSelected.Text = ""
                    end
                end)

                Section.Size = Section.Size + UDim2.new(0, 0, 0, Textbox.Size.Y.Offset + SectionItemList.Padding.Offset)
                Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)

                local Config = {}

                function Config:Selected(newtext)
                    TextBoxSelected.Text = newtext
                end

                return Config

            end

            function Container:Line()

                local Line = Instance.new("Frame")
                local LineIn = Instance.new("Frame")

                Line.Name = "Line"
                Line.Parent = Section
                Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Line.BackgroundTransparency = 1.000
                Line.Position = UDim2.new(0.0405405387, 0, 0.845815003, 0)
                Line.Size = UDim2.new(0, 350, 0, 8)
                
                LineIn.Name = "LineIn"
                LineIn.Parent = Line
                LineIn.BackgroundColor3 = Color3.fromRGB(72, 73, 75)
                LineIn.BackgroundTransparency = 0.400
                LineIn.BorderSizePixel = 0
                LineIn.Position = UDim2.new(0, 0, 0.345999986, 0)
                LineIn.Size = UDim2.new(0, 350, 0, 1)

                Section.Size = Section.Size + UDim2.new(0, 0, 0, Line.Size.Y.Offset + SectionItemList.Padding.Offset)
                Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)

                local Config = {}

                function Config:Color(newcolor)
                    LineIn.BackgroundColor3 = newcolor
                end
                
                return Config

            end

            function Container:Label(labelname, labelcolor)

                local labelcolor = labelcolor or Color3.fromRGB(255, 255, 255)

                local Label = Instance.new("Frame")
                local LabelCorner = Instance.new("UICorner")
                local LabelName = Instance.new("TextLabel")

                Label.Name = "Label"
                Label.Parent = Section
                Label.BackgroundColor3 = Color3.fromRGB(29, 32, 40)
                Label.BorderSizePixel = 0
                Label.Position = UDim2.new(0.0189189184, 0, 0.867841423, 0)
                Label.Size = UDim2.new(0, 356, 0, 34)
                
                LabelCorner.CornerRadius = UDim.new(0, 5)
                LabelCorner.Name = "LabelCorner"
                LabelCorner.Parent = Label
                
                LabelName.Name = "LabelName"
                LabelName.Parent = Label
                LabelName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                LabelName.BackgroundTransparency = 1.000
                LabelName.Position = UDim2.new(0, 0, -0.0244122669, 0)
                LabelName.Size = UDim2.new(0, 356, 0, 34)
                LabelName.Font = Enum.Font.Gotham
                LabelName.Text = labelname or "Label"
                LabelName.TextColor3 = labelcolor
                LabelName.TextSize = 14.000
                LabelName.TextTransparency = 0.300

                Section.Size = Section.Size + UDim2.new(0, 0, 0, Label.Size.Y.Offset + SectionItemList.Padding.Offset)
                Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)

                local Config = {}

                function Config:Text(newtext)
                    LabelName.Text = newtext
                end
                function Config:Color(newcolor)
                    LabelName.TextColor3 = newcolor
                end

                return Config

            end

            function Container:Keybind(keybindname, presetbind, callback)

                local Keybind = Instance.new("Frame")
                local KeybindCorner = Instance.new("UICorner")
                local KeybindName = Instance.new("TextLabel")
                local CurrentBind = Instance.new("TextLabel")
                local KeybindTrigger = Instance.new("TextButton")
                local KeybindTriggerCorner = Instance.new("UICorner")
                local KeybindTriggerStroke = Instance.new("UIStroke")

                Keybind.Name = "Keybind"
                Keybind.Parent = Section
                Keybind.BackgroundColor3 = Color3.fromRGB(29, 32, 40)
                Keybind.BorderSizePixel = 0
                Keybind.Position = UDim2.new(0.0189189184, 0, 0.581314862, 0)
                Keybind.Size = UDim2.new(0, 356, 0, 70)

                KeybindCorner.CornerRadius = UDim.new(0, 5)
                KeybindCorner.Name = "KeybindCorner"
                KeybindCorner.Parent = Keybind

                KeybindName.Name = "KeybindName"
                KeybindName.Parent = Keybind
                KeybindName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                KeybindName.BackgroundTransparency = 1.000
                KeybindName.Position = UDim2.new(0.0280898884, 0, 0.00500052329, 0)
                KeybindName.Size = UDim2.new(0, 168, 0, 30)
                KeybindName.Font = Enum.Font.GothamSemibold
                KeybindName.Text = "Keybind"
                KeybindName.TextColor3 = Color3.fromRGB(255, 255, 255)
                KeybindName.TextSize = 14.000
                KeybindName.TextTransparency = 0.200
                KeybindName.TextXAlignment = Enum.TextXAlignment.Left

                CurrentBind.Name = "CurrentBind"
                CurrentBind.Parent = Keybind
                CurrentBind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                CurrentBind.BackgroundTransparency = 1.000
                CurrentBind.Position = UDim2.new(0.522471905, 0, 0.00500052329, 0)
                CurrentBind.Size = UDim2.new(0, 160, 0, 30)
                CurrentBind.Font = Enum.Font.GothamSemibold
                CurrentBind.Text = "E"
                CurrentBind.TextColor3 = Color3.fromRGB(255, 255, 255)
                CurrentBind.TextSize = 14.000
                CurrentBind.TextTransparency = 0.400
                CurrentBind.TextXAlignment = Enum.TextXAlignment.Right

                KeybindTrigger.Name = "KeybindTrigger"
                KeybindTrigger.Parent = Keybind
                KeybindTrigger.BackgroundColor3 = Color3.fromRGB(24, 27, 33)
                KeybindTrigger.BorderSizePixel = 0
                KeybindTrigger.Position = UDim2.new(0.0280000009, 0, 0.419714272, 0)
                KeybindTrigger.Size = UDim2.new(0, 337, 0, 30)
                KeybindTrigger.AutoButtonColor = false
                KeybindTrigger.Font = Enum.Font.GothamBold
                KeybindTrigger.Text = "Change Keybind"
                KeybindTrigger.TextColor3 = Color3.fromRGB(255, 255, 255)
                KeybindTrigger.TextSize = 12.000
                KeybindTrigger.TextTransparency = 0.200

                KeybindTriggerCorner.CornerRadius = UDim.new(0, 4)
                KeybindTriggerCorner.Name = "KeybindTriggerCorner"
                KeybindTriggerCorner.Parent = KeybindTrigger

                KeybindTriggerStroke.Name = "KeybindTriggerStroke"
                KeybindTriggerStroke.Parent = KeybindTrigger
                KeybindTriggerStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                KeybindTriggerStroke.Color = Color3.fromRGB(46, 46, 47)
                KeybindTriggerStroke.Thickness = 1

                do 
                    CurrentBind.Text = tostring(presetbind.Name)
                end

                local ToggledKeybind = false

                KeybindTrigger.MouseEnter:Connect(function()
                    Utility:Tween(KeybindTriggerStroke, 0.1, {Color = uimaincolor})
                end)
                KeybindTrigger.MouseLeave:Connect(function()
                    Utility:Tween(KeybindTriggerStroke, 0.1, {Color = Color3.fromRGB(46, 46, 47)})
                end)
                KeybindTrigger.MouseButton1Click:connect(function()
                    CurrentBind.Text = "..."
                    local inputwait = UserInputService.InputBegan:wait()
                    if inputwait.KeyCode.Name ~= "Unknown" then
                        CurrentBind.Text = inputwait.KeyCode.Name
                        presetbind = inputwait.KeyCode
                        ToggledKeybind = true
                    end
                end)
    
                UserInputService.InputBegan:connect(function(current, pressed)
                    if not pressed then
                        if current.KeyCode.Name == presetbind.Name then
                            if ToggledKeybind == true then 
                                ToggledKeybind = false 
                            else
                                if game:GetService("CoreGui"):FindFirstChild("VedroxUi") then
                                    callback(Enum.KeyCode[CurrentBind.Text])
                                end
                            end
                        end
                    end
                end)

                Section.Size = Section.Size + UDim2.new(0, 0, 0, Keybind.Size.Y.Offset + SectionItemList.Padding.Offset)
                Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)

            end

            function Container:Dropdown(dropdownname, list, callback)

                local list = list or {}
                local callback = callback or function() end
                local framesize = 0
                local itemcount = 0

                local Dropdown = Instance.new("Frame")
                local DropdownCorner = Instance.new("UICorner")
                local DropdownInfoHolder = Instance.new("Frame")
                local DropdownText = Instance.new("TextLabel")
                local ArrowDown = Instance.new("ImageLabel")
                local ArrowUp = Instance.new("ImageLabel")
                local DropdownOutList = Instance.new("UIListLayout")
                local DropdownItemHolder = Instance.new("ScrollingFrame")
                local DropdownItemHolderList = Instance.new("UIListLayout")
                local DropdownTrigger = Instance.new("TextButton")
                local DropdownItemHolderPadding = Instance.new("UIPadding")

                Dropdown.Name = "Dropdown"
                Dropdown.Parent = Section
                Dropdown.BackgroundColor3 = Color3.fromRGB(29, 32, 40)
                Dropdown.BorderSizePixel = 0
                Dropdown.Position = UDim2.new(0.0189189184, 0, 0.603341281, 0)
                Dropdown.Size = UDim2.new(0, 356, 0, 38) --85
                Dropdown.ClipsDescendants = true
                
                DropdownCorner.CornerRadius = UDim.new(0, 5)
                DropdownCorner.Name = "DropdownCorner"
                DropdownCorner.Parent = Dropdown
                
                DropdownInfoHolder.Name = "DropdownInfoHolder"
                DropdownInfoHolder.Parent = Dropdown
                DropdownInfoHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropdownInfoHolder.BackgroundTransparency = 1.000
                DropdownInfoHolder.Size = UDim2.new(0, 353, 0, 38)
                
                DropdownText.Name = "DropdownText"
                DropdownText.Parent = DropdownInfoHolder
                DropdownText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropdownText.BackgroundTransparency = 1.000
                DropdownText.Position = UDim2.new(0.0280898307, 0, 0.00500081386, 0)
                DropdownText.Size = UDim2.new(0, 273, 0, 38)
                DropdownText.Font = Enum.Font.GothamSemibold
                DropdownText.Text = dropdownname or "Dropdown"
                DropdownText.TextColor3 = Color3.fromRGB(255, 255, 255)
                DropdownText.TextSize = 14.000
                DropdownText.TextTransparency = 0.200
                DropdownText.TextXAlignment = Enum.TextXAlignment.Left
                
                ArrowDown.Name = "ArrowDown"
                ArrowDown.Parent = DropdownInfoHolder
                ArrowDown.BackgroundTransparency = 1.000
                ArrowDown.Position = UDim2.new(0.904518247, 0, 0.160150379, 0)
                ArrowDown.Size = UDim2.new(0, 25, 0, 25)
                ArrowDown.ZIndex = 2
                ArrowDown.Image = "rbxassetid://3926305904"
                ArrowDown.ImageRectOffset = Vector2.new(44, 404)
                ArrowDown.ImageRectSize = Vector2.new(36, 36)
                ArrowDown.ImageTransparency = 1.000
                
                ArrowUp.Name = "ArrowUp"
                ArrowUp.Parent = DropdownInfoHolder
                ArrowUp.BackgroundTransparency = 1.000
                ArrowUp.Position = UDim2.new(0.904518247, 0, 0.160150379, 0)
                ArrowUp.Size = UDim2.new(0, 25, 0, 25)
                ArrowUp.ZIndex = 2
                ArrowUp.Image = "rbxassetid://3926305904"
                ArrowUp.ImageRectOffset = Vector2.new(564, 284)
                ArrowUp.ImageRectSize = Vector2.new(36, 36)
                
                DropdownOutList.Name = "DropdownOutList"
                DropdownOutList.Parent = Dropdown
                DropdownOutList.HorizontalAlignment = Enum.HorizontalAlignment.Center
                DropdownOutList.SortOrder = Enum.SortOrder.LayoutOrder
                
                DropdownItemHolder.Name = "DropdownItemHolder"
                DropdownItemHolder.Parent = Dropdown
                DropdownItemHolder.Active = true
                DropdownItemHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                DropdownItemHolder.BackgroundTransparency = 1.000
                DropdownItemHolder.BorderSizePixel = 0
                DropdownItemHolder.Position = UDim2.new(0.0224719103, 0, 0.54285717, 0)
                DropdownItemHolder.Size = UDim2.new(0, 340, 0, 2)
                DropdownItemHolder.BottomImage = ""
                DropdownItemHolder.ScrollBarThickness = 2
                DropdownItemHolder.TopImage = ""
                
                DropdownItemHolderPadding.Name = "DropdownItemHolderPadding"
                DropdownItemHolderPadding.Parent = DropdownItemHolder
                DropdownItemHolderPadding.PaddingBottom = UDim.new(0, 1)
                DropdownItemHolderPadding.PaddingTop = UDim.new(0, 1)

                DropdownItemHolderList.Name = "DropdownItemHolderList"
                DropdownItemHolderList.Parent = DropdownItemHolder
                DropdownItemHolderList.SortOrder = Enum.SortOrder.LayoutOrder
                DropdownItemHolderList.HorizontalAlignment = Enum.HorizontalAlignment.Center
                DropdownItemHolderList.Padding = UDim.new(0, 2)

                DropdownTrigger.Name = "DropdownTrigger"
                DropdownTrigger.Parent = DropdownInfoHolder
                DropdownTrigger.BackgroundTransparency = 1
                DropdownTrigger.Text = ""
                DropdownTrigger.Size = UDim2.new(0, 356, 0, 38) -- 7

                local toggled = false
                local dropdowntweenspeed = 0.2

                DropdownTrigger.MouseButton1Click:Connect(function()
                    if toggled == true then
                        toggled = nil
                        Utility:Tween(Dropdown, dropdowntweenspeed, {Size = UDim2.new(0, 356, 0, 38)})
                        Utility:Tween(ArrowDown, dropdowntweenspeed, {ImageTransparency = 1})
                        Utility:Tween(ArrowUp, dropdowntweenspeed, {ImageTransparency = 0})
                        Utility:Tween(Section, dropdowntweenspeed, {Size = Section.Size - UDim2.new(0, 0, 0, (framesize + 7))})
                        toggled = false
                        for i = 1, dropdowntweenspeed * 1000000 do
                            Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)
                            wait(0.000001)
                        end
                    elseif toggled == false then
                        toggled = nil
                        Utility:Tween(Dropdown, dropdowntweenspeed, {Size = UDim2.new(0, 356, 0, (38 + framesize + 7))})
                        Utility:Tween(ArrowDown, dropdowntweenspeed, {ImageTransparency = 0})
                        Utility:Tween(ArrowUp, dropdowntweenspeed, {ImageTransparency = 1})
                        Utility:Tween(Section, dropdowntweenspeed, {Size = Section.Size + UDim2.new(0, 0, 0, (framesize + 7))})
                        toggled = true
                        for i = 1, dropdowntweenspeed * 1000000 do
                            Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)
                            wait(0.000001)
                        end
                    end
                end)

                for i, v in next, list do

                    itemcount = itemcount + 1
                    if itemcount <= 4 then
                        framesize = framesize + 40 + 2
                    end

                    DropdownItemHolder.CanvasSize = UDim2.new(0, 0, 0, DropdownItemHolderList.AbsoluteContentSize.Y)
                    DropdownItemHolder.Size = UDim2.new(0, 340, 0, framesize + 2)

                    local Item = Instance.new("TextButton")
                    local ItemCorner = Instance.new("UICorner")
                    local ItemStroke = Instance.new("UIStroke")

                    Item.Name = "Item"
                    Item.Parent = DropdownItemHolder
                    Item.BackgroundColor3 = Color3.fromRGB(24, 27, 33)
                    Item.BorderSizePixel = 0
                    Item.Position = UDim2.new(0.0280000009, 0, 0.419714272, 0)
                    Item.Size = UDim2.new(0, 334, 0, 40)
                    Item.AutoButtonColor = false
                    Item.Font = Enum.Font.GothamSemibold
                    Item.TextColor3 = Color3.fromRGB(255, 255, 255)
                    Item.TextSize = 14.000
                    Item.TextTransparency = 0.200
                    Item.Text = v or "Item"
                    
                    ItemCorner.CornerRadius = UDim.new(0, 4)
                    ItemCorner.Name = "ItemCorner"
                    ItemCorner.Parent = Item

                    ItemStroke.Name = "ItemStroke"
                    ItemStroke.Parent = Item
                    ItemStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                    ItemStroke.Color = Color3.fromRGB(46, 46, 47)
                    ItemStroke.Thickness = 1

                    Item.MouseEnter:Connect(function()
                        Utility:Tween(ItemStroke, 0.1, {Color = uimaincolor})
                    end)
                    Item.MouseLeave:Connect(function()
                        Utility:Tween(ItemStroke, 0.1, {Color = Color3.fromRGB(46, 46, 47)})
                    end)
                    Item.MouseButton1Click:Connect(function()
                        toggled = nil
                        Utility:Tween(Dropdown, dropdowntweenspeed, {Size = UDim2.new(0, 356, 0, 38)})
                        Utility:Tween(ArrowDown, dropdowntweenspeed, {ImageTransparency = 1})
                        Utility:Tween(ArrowUp, dropdowntweenspeed, {ImageTransparency = 0})
                        Utility:Tween(Section, dropdowntweenspeed, {Size = Section.Size - UDim2.new(0, 0, 0, (framesize + 7))})
                        toggled = false
                        DropdownText.Text = dropdownname.." - "..v
                        for i = 1, dropdowntweenspeed * 1000000 do
                            Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)
                            wait(0.000001)
                        end
                    end)
                    Item.MouseButton1Click:Connect(function()
                        callback(v)
                    end)
                    
                end

                Section.Size = Section.Size + UDim2.new(0, 0, 0, Dropdown.Size.Y.Offset + SectionItemList.Padding.Offset)
                Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)

            end

            function Container:Colorpicker(colorpickername, presetcolor, callback)

                local presetcolor = presetcolor or uimaincolor or Color.fromRGB(255, 255, 255)
                local callback = callback or function() end

                local Colorpicker = Instance.new("Frame")
                local ColorpickerCorner = Instance.new("UICorner")
                local ColorpickerInfoHolder = Instance.new("Frame")
                local ColorpickerName = Instance.new("TextLabel")
                local ColorpickerTrigger = Instance.new("TextButton")
                local ArrowDown = Instance.new("ImageLabel")
                local ArrowUp = Instance.new("ImageLabel")
                local CurrentColor = Instance.new("Frame")
                local CurrentColorCorner = Instance.new("UICorner")
                local ColorHolder = Instance.new("Frame")
                local GInput = Instance.new("TextBox")
                local BInput = Instance.new("TextBox")
                local RInput = Instance.new("TextBox")
                local PresetColors = Instance.new("Frame")
                local PresetColorGridLayout = Instance.new("UIGridLayout")
                local CustomColor = Instance.new("TextButton")
                local CustomColorCorner = Instance.new("UICorner")
                local CustomColor_2 = Instance.new("TextButton")
                local CustomColorCorner_2 = Instance.new("UICorner")
                local CustomColor_3 = Instance.new("TextButton")
                local CustomColorCorner_3 = Instance.new("UICorner")
                local CustomColor_4 = Instance.new("TextButton")
                local CustomColorCorner_4 = Instance.new("UICorner")
                local CustomColor_5 = Instance.new("TextButton")
                local CustomColorCorner_5 = Instance.new("UICorner")
                local CustomColor_6 = Instance.new("TextButton")
                local CustomColorCorner_6 = Instance.new("UICorner")
                local CustomColor_7 = Instance.new("TextButton")
                local CustomColorCorner_7 = Instance.new("UICorner")
                local CustomColor_8 = Instance.new("TextButton")
                local CustomColorCorner_8 = Instance.new("UICorner")
                local CustomColor_9 = Instance.new("TextButton")
                local CustomColorCorner_9 = Instance.new("UICorner")
                local CustomColor_10 = Instance.new("TextButton")
                local CustomColorCorner_10 = Instance.new("UICorner")
                local CustomColor_11 = Instance.new("TextButton")
                local CustomColorCorner_11 = Instance.new("UICorner")
                local CustomColor_12 = Instance.new("TextButton")
                local CustomColorCorner_12 = Instance.new("UICorner")
                local CustomColor_13 = Instance.new("TextButton")
                local CustomColorCorner_13 = Instance.new("UICorner")
                local CustomColor_14 = Instance.new("TextButton")
                local CustomColorCorner_14 = Instance.new("UICorner")
                local CustomColor_15 = Instance.new("TextButton")
                local CustomColorCorner_15 = Instance.new("UICorner")
                local CustomColor_16 = Instance.new("TextButton")
                local CustomColorCorner_16 = Instance.new("UICorner")
                local CustomColor_17 = Instance.new("TextButton")
                local CustomColorCorner_17 = Instance.new("UICorner")
                local CustomColor_18 = Instance.new("TextButton")
                local CustomColorCorner_18 = Instance.new("UICorner")
                local CustomColor_19 = Instance.new("TextButton")
                local CustomColorCorner_19 = Instance.new("UICorner")
                local CustomColor_20 = Instance.new("TextButton")
                local CustomColorCorner_20 = Instance.new("UICorner")
                local CustomColor_21 = Instance.new("TextButton")
                local CustomColorCorner_21 = Instance.new("UICorner")
                local CustomColor_22 = Instance.new("TextButton")
                local CustomColorCorner_22 = Instance.new("UICorner")
                local CustomColor_23 = Instance.new("TextButton")
                local CustomColorCorner_23 = Instance.new("UICorner")
                local CustomColor_24 = Instance.new("TextButton")
                local CustomColorCorner_24 = Instance.new("UICorner")
                local CustomColor_25 = Instance.new("TextButton")
                local CustomColorCorner_25 = Instance.new("UICorner")
                local CustomColor_26 = Instance.new("TextButton")
                local CustomColorCorner_26 = Instance.new("UICorner")
                local CustomColor_27 = Instance.new("TextButton")
                local CustomColorCorner_27 = Instance.new("UICorner")
                local CustomColor_28 = Instance.new("TextButton")
                local CustomColorCorner_28 = Instance.new("UICorner")
                local CustomColor_29 = Instance.new("TextButton")
                local CustomColorCorner_29 = Instance.new("UICorner")
                local CustomColor_30 = Instance.new("TextButton")
                local CustomColorCorner_30 = Instance.new("UICorner")
                local CustomColor_31 = Instance.new("TextButton")
                local CustomColorCorner_31 = Instance.new("UICorner")
                local CustomColor_32 = Instance.new("TextButton")
                local CustomColorCorner_32 = Instance.new("UICorner")
                local CustomColor_33 = Instance.new("TextButton")
                local CustomColorCorner_33 = Instance.new("UICorner")
                local ColorpickerOutList = Instance.new("UIListLayout")

                Colorpicker.Name = "Colorpicker"
                Colorpicker.Parent = Section
                Colorpicker.BackgroundColor3 = Color3.fromRGB(29, 32, 40)
                Colorpicker.BorderSizePixel = 0
                Colorpicker.Position = UDim2.new(0.0189189184, 0, 0.603341341, 0)
                Colorpicker.Size = UDim2.new(0, 356, 0, 38)
                Colorpicker.ClipsDescendants = true
                
                ColorpickerCorner.CornerRadius = UDim.new(0, 5)
                ColorpickerCorner.Name = "ColorpickerCorner"
                ColorpickerCorner.Parent = Colorpicker
                
                ColorpickerInfoHolder.Name = "AColorpickerInfoHolder"
                ColorpickerInfoHolder.Parent = Colorpicker
                ColorpickerInfoHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ColorpickerInfoHolder.BackgroundTransparency = 1.000
                ColorpickerInfoHolder.Size = UDim2.new(0, 353, 0, 38)
                
                ColorpickerName.Name = "ColorpickerName"
                ColorpickerName.Parent = ColorpickerInfoHolder
                ColorpickerName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ColorpickerName.BackgroundTransparency = 1.000
                ColorpickerName.Position = UDim2.new(0.0280898307, 0, 0.00500006415, 0)
                ColorpickerName.Size = UDim2.new(0, 224, 0, 38)
                ColorpickerName.Font = Enum.Font.GothamSemibold
                ColorpickerName.Text = colorpickername or "Color picker"
                ColorpickerName.TextColor3 = Color3.fromRGB(255, 255, 255)
                ColorpickerName.TextSize = 14.000
                ColorpickerName.TextTransparency = 0.200
                ColorpickerName.TextXAlignment = Enum.TextXAlignment.Left
                
                ArrowDown.Name = "ArrowDown"
                ArrowDown.Parent = ColorpickerInfoHolder
                ArrowDown.BackgroundTransparency = 1.000
                ArrowDown.Position = UDim2.new(0.904518247, 0, 0.160150379, 0)
                ArrowDown.Size = UDim2.new(0, 25, 0, 25)
                ArrowDown.ZIndex = 2
                ArrowDown.Image = "rbxassetid://3926305904"
                ArrowDown.ImageRectOffset = Vector2.new(44, 404)
                ArrowDown.ImageRectSize = Vector2.new(36, 36)
                ArrowDown.ImageTransparency = 1.000
                
                ArrowUp.Name = "ArrowUp"
                ArrowUp.Parent = ColorpickerInfoHolder
                ArrowUp.BackgroundTransparency = 1.000
                ArrowUp.Position = UDim2.new(0.904518247, 0, 0.160150379, 0)
                ArrowUp.Size = UDim2.new(0, 25, 0, 25)
                ArrowUp.ZIndex = 2
                ArrowUp.Image = "rbxassetid://3926305904"
                ArrowUp.ImageRectOffset = Vector2.new(564, 284)
                ArrowUp.ImageRectSize = Vector2.new(36, 36)

                ColorpickerTrigger.Name = "ColorpickerTrigger"
                ColorpickerTrigger.Parent = ColorpickerInfoHolder
                ColorpickerTrigger.BackgroundTransparency = 1
                ColorpickerTrigger.Text = ""
                ColorpickerTrigger.Size = UDim2.new(0, 356, 0, 38) -- 7
                
                CurrentColor.Name = "CurrentColor"
                CurrentColor.Parent = ColorpickerInfoHolder
                CurrentColor.BackgroundColor3 = presetcolor
                CurrentColor.Position = UDim2.new(0.818696916, 0, 0.236842021, 0)
                CurrentColor.Size = UDim2.new(0, 20, 0, 20)
                
                CurrentColorCorner.CornerRadius = UDim.new(0, 4)
                CurrentColorCorner.Name = "CurrentColorCorner"
                CurrentColorCorner.Parent = CurrentColor
                
                ColorHolder.Name = "ColorHolder"
                ColorHolder.Parent = Colorpicker
                ColorHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ColorHolder.BackgroundTransparency = 1.000
                ColorHolder.Position = UDim2.new(0.0224719103, 0, 0.330434769, 0)
                ColorHolder.Size = UDim2.new(0, 340, 0, 70)
                
                GInput.Name = "GInput"
                GInput.Parent = ColorHolder
                GInput.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                GInput.BackgroundTransparency = 1.000
                GInput.BorderSizePixel = 0
                GInput.Position = UDim2.new(0.0078486912, 0, 0.295488715, 0)
                GInput.Size = UDim2.new(0, 25, 0, 22)
                GInput.Font = Enum.Font.GothamBold
                GInput.PlaceholderText = "G"
                GInput.Text = tostring(math.floor(presetcolor.G * 255))
                GInput.TextColor3 = Color3.fromRGB(255, 255, 255)
                GInput.TextSize = 14.000
                GInput.TextXAlignment = Enum.TextXAlignment.Left
                
                BInput.Name = "BInput"
                BInput.Parent = ColorHolder
                BInput.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                BInput.BackgroundTransparency = 1.000
                BInput.BorderSizePixel = 0
                BInput.Position = UDim2.new(0.0094917994, 0, 0.612029612, 0)
                BInput.Size = UDim2.new(0, 25, 0, 22)
                BInput.Font = Enum.Font.GothamBold
                BInput.PlaceholderText = "B"
                BInput.Text = tostring(math.floor(presetcolor.B * 255))
                BInput.TextColor3 = Color3.fromRGB(255, 255, 255)
                BInput.TextSize = 14.000
                BInput.TextXAlignment = Enum.TextXAlignment.Left
                
                RInput.Name = "RInput"
                RInput.Parent = ColorHolder
                RInput.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                RInput.BackgroundTransparency = 1.000
                RInput.BorderSizePixel = 0
                RInput.Position = UDim2.new(0.0078486912, 0, -2.32830644e-08, 0)
                RInput.Size = UDim2.new(0, 25, 0, 20)
                RInput.Font = Enum.Font.GothamBold
                RInput.PlaceholderText = "R"
                RInput.Text = tostring(math.floor(presetcolor.R * 255))
                RInput.TextColor3 = Color3.fromRGB(255, 255, 255)
                RInput.TextSize = 14.000
                RInput.TextXAlignment = Enum.TextXAlignment.Left
                
                PresetColors.Name = "PresetColors"
                PresetColors.Parent = ColorHolder
                PresetColors.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                PresetColors.BackgroundTransparency = 1.000
                PresetColors.Position = UDim2.new(0.191176474, 0, 0, 0)
                PresetColors.Size = UDim2.new(0, 271, 0, 65)
                
                PresetColorGridLayout.Name = "PresetColorGridLayout"
                PresetColorGridLayout.Parent = PresetColors
                PresetColorGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
                PresetColorGridLayout.CellSize = UDim2.new(0, 20, 0, 20)
                
                CustomColor.Name = "CustomColor"
                CustomColor.Parent = PresetColors
                CustomColor.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
                CustomColor.Size = UDim2.new(0, 100, 0, 100)
                
                CustomColorCorner.CornerRadius = UDim.new(0, 3)
                CustomColorCorner.Name = "CustomColorCorner"
                CustomColorCorner.Parent = CustomColor
                
                CustomColor_2.Name = "CustomColor"
                CustomColor_2.Parent = PresetColors
                CustomColor_2.BackgroundColor3 = Color3.fromRGB(255, 0, 251)
                CustomColor_2.Size = UDim2.new(0, 100, 0, 100)
                
                CustomColorCorner_2.CornerRadius = UDim.new(0, 3)
                CustomColorCorner_2.Name = "CustomColorCorner"
                CustomColorCorner_2.Parent = CustomColor_2
                
                CustomColor_3.Name = "CustomColor"
                CustomColor_3.Parent = PresetColors
                CustomColor_3.BackgroundColor3 = Color3.fromRGB(119, 0, 255)
                CustomColor_3.Size = UDim2.new(0, 100, 0, 100)
                
                CustomColorCorner_3.CornerRadius = UDim.new(0, 3)
                CustomColorCorner_3.Name = "CustomColorCorner"
                CustomColorCorner_3.Parent = CustomColor_3
                
                CustomColor_4.Name = "CustomColor"
                CustomColor_4.Parent = PresetColors
                CustomColor_4.BackgroundColor3 = Color3.fromRGB(21, 0, 255)
                CustomColor_4.Size = UDim2.new(0, 100, 0, 100)
                
                CustomColorCorner_4.CornerRadius = UDim.new(0, 3)
                CustomColorCorner_4.Name = "CustomColorCorner"
                CustomColorCorner_4.Parent = CustomColor_4
                
                CustomColor_5.Name = "CustomColor"
                CustomColor_5.Parent = PresetColors
                CustomColor_5.BackgroundColor3 = Color3.fromRGB(0, 174, 255)
                CustomColor_5.Size = UDim2.new(0, 100, 0, 100)
                
                CustomColorCorner_5.CornerRadius = UDim.new(0, 3)
                CustomColorCorner_5.Name = "CustomColorCorner"
                CustomColorCorner_5.Parent = CustomColor_5
                
                CustomColor_6.Name = "CustomColor"
                CustomColor_6.Parent = PresetColors
                CustomColor_6.BackgroundColor3 = Color3.fromRGB(0, 255, 234)
                CustomColor_6.Size = UDim2.new(0, 100, 0, 100)
                
                CustomColorCorner_6.CornerRadius = UDim.new(0, 3)
                CustomColorCorner_6.Name = "CustomColorCorner"
                CustomColorCorner_6.Parent = CustomColor_6
                
                CustomColor_7.Name = "CustomColor"
                CustomColor_7.Parent = PresetColors
                CustomColor_7.BackgroundColor3 = Color3.fromRGB(0, 255, 21)
                CustomColor_7.Size = UDim2.new(0, 100, 0, 100)
                
                CustomColorCorner_7.CornerRadius = UDim.new(0, 3)
                CustomColorCorner_7.Name = "CustomColorCorner"
                CustomColorCorner_7.Parent = CustomColor_7
                
                CustomColor_8.Name = "CustomColor"
                CustomColor_8.Parent = PresetColors
                CustomColor_8.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
                CustomColor_8.Size = UDim2.new(0, 100, 0, 100)
                
                CustomColorCorner_8.CornerRadius = UDim.new(0, 3)
                CustomColorCorner_8.Name = "CustomColorCorner"
                CustomColorCorner_8.Parent = CustomColor_8
                
                CustomColor_9.Name = "CustomColor"
                CustomColor_9.Parent = PresetColors
                CustomColor_9.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
                CustomColor_9.Size = UDim2.new(0, 100, 0, 100)
                
                CustomColorCorner_9.CornerRadius = UDim.new(0, 3)
                CustomColorCorner_9.Name = "CustomColorCorner"
                CustomColorCorner_9.Parent = CustomColor_9
                
                CustomColor_10.Name = "CustomColor"
                CustomColor_10.Parent = PresetColors
                CustomColor_10.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
                CustomColor_10.Size = UDim2.new(0, 100, 0, 100)
                
                CustomColorCorner_10.CornerRadius = UDim.new(0, 3)
                CustomColorCorner_10.Name = "CustomColorCorner"
                CustomColorCorner_10.Parent = CustomColor_10
                
                CustomColor_11.Name = "CustomColor"
                CustomColor_11.Parent = PresetColors
                CustomColor_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                CustomColor_11.Size = UDim2.new(0, 100, 0, 100)
                
                CustomColorCorner_11.CornerRadius = UDim.new(0, 3)
                CustomColorCorner_11.Name = "CustomColorCorner"
                CustomColorCorner_11.Parent = CustomColor_11
                
                CustomColor_12.Name = "CustomColor"
                CustomColor_12.Parent = PresetColors
                CustomColor_12.BackgroundColor3 = Color3.fromRGB(181, 0, 3)
                CustomColor_12.Size = UDim2.new(0, 100, 0, 100)
                
                CustomColorCorner_12.CornerRadius = UDim.new(0, 3)
                CustomColorCorner_12.Name = "CustomColorCorner"
                CustomColorCorner_12.Parent = CustomColor_12
                
                CustomColor_13.Name = "CustomColor"
                CustomColor_13.Parent = PresetColors
                CustomColor_13.BackgroundColor3 = Color3.fromRGB(193, 0, 193)
                CustomColor_13.Size = UDim2.new(0, 100, 0, 100)
                
                CustomColorCorner_13.CornerRadius = UDim.new(0, 3)
                CustomColorCorner_13.Name = "CustomColorCorner"
                CustomColorCorner_13.Parent = CustomColor_13
                
                CustomColor_14.Name = "CustomColor"
                CustomColor_14.Parent = PresetColors
                CustomColor_14.BackgroundColor3 = Color3.fromRGB(81, 0, 173)
                CustomColor_14.Size = UDim2.new(0, 100, 0, 100)
                
                CustomColorCorner_14.CornerRadius = UDim.new(0, 3)
                CustomColorCorner_14.Name = "CustomColorCorner"
                CustomColorCorner_14.Parent = CustomColor_14
                
                CustomColor_15.Name = "CustomColor"
                CustomColor_15.Parent = PresetColors
                CustomColor_15.BackgroundColor3 = Color3.fromRGB(11, 0, 172)
                CustomColor_15.Size = UDim2.new(0, 100, 0, 100)
                
                CustomColorCorner_15.CornerRadius = UDim.new(0, 3)
                CustomColorCorner_15.Name = "CustomColorCorner"
                CustomColorCorner_15.Parent = CustomColor_15
                
                CustomColor_16.Name = "CustomColor"
                CustomColor_16.Parent = PresetColors
                CustomColor_16.BackgroundColor3 = Color3.fromRGB(0, 113, 166)
                CustomColor_16.Size = UDim2.new(0, 100, 0, 100)
                
                CustomColorCorner_16.CornerRadius = UDim.new(0, 3)
                CustomColorCorner_16.Name = "CustomColorCorner"
                CustomColorCorner_16.Parent = CustomColor_16
                
                CustomColor_17.Name = "CustomColor"
                CustomColor_17.Parent = PresetColors
                CustomColor_17.BackgroundColor3 = Color3.fromRGB(0, 170, 156)
                CustomColor_17.Size = UDim2.new(0, 100, 0, 100)
                
                CustomColorCorner_17.CornerRadius = UDim.new(0, 3)
                CustomColorCorner_17.Name = "CustomColorCorner"
                CustomColorCorner_17.Parent = CustomColor_17
                
                CustomColor_18.Name = "CustomColor"
                CustomColor_18.Parent = PresetColors
                CustomColor_18.BackgroundColor3 = Color3.fromRGB(0, 170, 11)
                CustomColor_18.Size = UDim2.new(0, 100, 0, 100)
                
                CustomColorCorner_18.CornerRadius = UDim.new(0, 3)
                CustomColorCorner_18.Name = "CustomColorCorner"
                CustomColorCorner_18.Parent = CustomColor_18
                
                CustomColor_19.Name = "CustomColor"
                CustomColor_19.Parent = PresetColors
                CustomColor_19.BackgroundColor3 = Color3.fromRGB(163, 163, 0)
                CustomColor_19.Size = UDim2.new(0, 100, 0, 100)
                
                CustomColorCorner_19.CornerRadius = UDim.new(0, 3)
                CustomColorCorner_19.Name = "CustomColorCorner"
                CustomColorCorner_19.Parent = CustomColor_19
                
                CustomColor_20.Name = "CustomColor"
                CustomColor_20.Parent = PresetColors
                CustomColor_20.BackgroundColor3 = Color3.fromRGB(191, 127, 0)
                CustomColor_20.Size = UDim2.new(0, 100, 0, 100)
                
                CustomColorCorner_20.CornerRadius = UDim.new(0, 3)
                CustomColorCorner_20.Name = "CustomColorCorner"
                CustomColorCorner_20.Parent = CustomColor_20
                
                CustomColor_21.Name = "CustomColor"
                CustomColor_21.Parent = PresetColors
                CustomColor_21.BackgroundColor3 = Color3.fromRGB(190, 60, 0)
                CustomColor_21.Size = UDim2.new(0, 100, 0, 100)
                
                CustomColorCorner_21.CornerRadius = UDim.new(0, 3)
                CustomColorCorner_21.Name = "CustomColorCorner"
                CustomColorCorner_21.Parent = CustomColor_21
                
                CustomColor_22.Name = "CustomColor"
                CustomColor_22.Parent = PresetColors
                CustomColor_22.BackgroundColor3 = Color3.fromRGB(153, 153, 153)
                CustomColor_22.Size = UDim2.new(0, 100, 0, 100)
                
                CustomColorCorner_22.CornerRadius = UDim.new(0, 3)
                CustomColorCorner_22.Name = "CustomColorCorner"
                CustomColorCorner_22.Parent = CustomColor_22
                
                CustomColor_23.Name = "CustomColor"
                CustomColor_23.Parent = PresetColors
                CustomColor_23.BackgroundColor3 = Color3.fromRGB(109, 0, 1)
                CustomColor_23.Size = UDim2.new(0, 100, 0, 100)
                
                CustomColorCorner_23.CornerRadius = UDim.new(0, 3)
                CustomColorCorner_23.Name = "CustomColorCorner"
                CustomColorCorner_23.Parent = CustomColor_23
                
                CustomColor_24.Name = "CustomColor"
                CustomColor_24.Parent = PresetColors
                CustomColor_24.BackgroundColor3 = Color3.fromRGB(111, 0, 111)
                CustomColor_24.Size = UDim2.new(0, 100, 0, 100)
                
                CustomColorCorner_24.CornerRadius = UDim.new(0, 3)
                CustomColorCorner_24.Name = "CustomColorCorner"
                CustomColorCorner_24.Parent = CustomColor_24
                
                CustomColor_25.Name = "CustomColor"
                CustomColor_25.Parent = PresetColors
                CustomColor_25.BackgroundColor3 = Color3.fromRGB(50, 0, 107)
                CustomColor_25.Size = UDim2.new(0, 100, 0, 100)
                
                CustomColorCorner_25.CornerRadius = UDim.new(0, 3)
                CustomColorCorner_25.Name = "CustomColorCorner"
                CustomColorCorner_25.Parent = CustomColor_25
                
                CustomColor_26.Name = "CustomColor"
                CustomColor_26.Parent = PresetColors
                CustomColor_26.BackgroundColor3 = Color3.fromRGB(5, 0, 108)
                CustomColor_26.Size = UDim2.new(0, 100, 0, 100)
                
                CustomColorCorner_26.CornerRadius = UDim.new(0, 3)
                CustomColorCorner_26.Name = "CustomColorCorner"
                CustomColorCorner_26.Parent = CustomColor_26
                
                CustomColor_27.Name = "CustomColor"
                CustomColor_27.Parent = PresetColors
                CustomColor_27.BackgroundColor3 = Color3.fromRGB(0, 63, 93)
                CustomColor_27.Size = UDim2.new(0, 100, 0, 100)
                
                CustomColorCorner_27.CornerRadius = UDim.new(0, 3)
                CustomColorCorner_27.Name = "CustomColorCorner"
                CustomColorCorner_27.Parent = CustomColor_27
                
                CustomColor_28.Name = "CustomColor"
                CustomColor_28.Parent = PresetColors
                CustomColor_28.BackgroundColor3 = Color3.fromRGB(0, 116, 106)
                CustomColor_28.Size = UDim2.new(0, 100, 0, 100)
                
                CustomColorCorner_28.CornerRadius = UDim.new(0, 3)
                CustomColorCorner_28.Name = "CustomColorCorner"
                CustomColorCorner_28.Parent = CustomColor_28
                
                CustomColor_29.Name = "CustomColor"
                CustomColor_29.Parent = PresetColors
                CustomColor_29.BackgroundColor3 = Color3.fromRGB(0, 113, 7)
                CustomColor_29.Size = UDim2.new(0, 100, 0, 100)
                
                CustomColorCorner_29.CornerRadius = UDim.new(0, 3)
                CustomColorCorner_29.Name = "CustomColorCorner"
                CustomColorCorner_29.Parent = CustomColor_29
                
                CustomColor_30.Name = "CustomColor"
                CustomColor_30.Parent = PresetColors
                CustomColor_30.BackgroundColor3 = Color3.fromRGB(100, 100, 0)
                CustomColor_30.Size = UDim2.new(0, 100, 0, 100)
                
                CustomColorCorner_30.CornerRadius = UDim.new(0, 3)
                CustomColorCorner_30.Name = "CustomColorCorner"
                CustomColorCorner_30.Parent = CustomColor_30
                
                CustomColor_31.Name = "CustomColor"
                CustomColor_31.Parent = PresetColors
                CustomColor_31.BackgroundColor3 = Color3.fromRGB(127, 84, 0)
                CustomColor_31.Size = UDim2.new(0, 100, 0, 100)
                
                CustomColorCorner_31.CornerRadius = UDim.new(0, 3)
                CustomColorCorner_31.Name = "CustomColorCorner"
                CustomColorCorner_31.Parent = CustomColor_31
                
                CustomColor_32.Name = "CustomColor"
                CustomColor_32.Parent = PresetColors
                CustomColor_32.BackgroundColor3 = Color3.fromRGB(140, 46, 0)
                CustomColor_32.Size = UDim2.new(0, 100, 0, 100)
                
                CustomColorCorner_32.CornerRadius = UDim.new(0, 3)
                CustomColorCorner_32.Name = "CustomColorCorner"
                CustomColorCorner_32.Parent = CustomColor_32
                
                CustomColor_33.Name = "CustomColor"
                CustomColor_33.Parent = PresetColors
                CustomColor_33.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                CustomColor_33.Size = UDim2.new(0, 100, 0, 100)
                
                CustomColorCorner_33.CornerRadius = UDim.new(0, 3)
                CustomColorCorner_33.Name = "CustomColorCorner"
                CustomColorCorner_33.Parent = CustomColor_33
                
                ColorpickerOutList.Name = "ColorpickerOutList"
                ColorpickerOutList.Parent = Colorpicker
                ColorpickerOutList.HorizontalAlignment = Enum.HorizontalAlignment.Center
                ColorpickerOutList.SortOrder = Enum.SortOrder.LayoutOrder

                RInput.FocusLost:Connect(function()
                    CurrentColor.BackgroundColor3 = Color3.fromRGB(tonumber(RInput.Text), tonumber(GInput.Text), tonumber(BInput.Text))
                    callback(CurrentColor.BackgroundColor3)
                end)
                GInput.FocusLost:Connect(function()
                    CurrentColor.BackgroundColor3 = Color3.fromRGB(tonumber(RInput.Text), tonumber(GInput.Text), tonumber(BInput.Text))
                    callback(CurrentColor.BackgroundColor3)
                end)
                BInput.FocusLost:Connect(function()
                    CurrentColor.BackgroundColor3 = Color3.fromRGB(tonumber(RInput.Text), tonumber(GInput.Text), tonumber(BInput.Text))
                    callback(CurrentColor.BackgroundColor3)
                end)

                local toggled = false
                local colorpickertweenspeed = 0.2

                ColorpickerTrigger.MouseButton1Click:Connect(function()
                    if toggled == true then
                        toggled = nil
                        Utility:Tween(Colorpicker, colorpickertweenspeed, {Size = UDim2.new(0, 356, 0, 38)})
                        Utility:Tween(ArrowDown, colorpickertweenspeed, {ImageTransparency = 1})
                        Utility:Tween(ArrowUp, colorpickertweenspeed, {ImageTransparency = 0})
                        Utility:Tween(Section, colorpickertweenspeed, {Size = Section.Size - UDim2.new(0, 0, 0, 77)})
                        toggled = false
                        for i = 1, colorpickertweenspeed * 1000000 do
                            Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)
                            wait(0.000001)
                        end
                    elseif toggled == false then
                        toggled = nil
                        Utility:Tween(Colorpicker, colorpickertweenspeed, {Size = UDim2.new(0, 356, 0, (38 + 77))})
                        Utility:Tween(ArrowDown, colorpickertweenspeed, {ImageTransparency = 0})
                        Utility:Tween(ArrowUp, colorpickertweenspeed, {ImageTransparency = 1})
                        Utility:Tween(Section, colorpickertweenspeed, {Size = Section.Size + UDim2.new(0, 0, 0, 77)})
                        toggled = true
                        for i = 1, colorpickertweenspeed * 1000000 do
                            Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)
                            wait(0.000001)
                        end
                    end
                end)

                for i, v in pairs(PresetColors:GetChildren()) do
                    if v:IsA("TextButton") then
                        v.Text = ""
                        v.AutoButtonColor = false
                        v.MouseButton1Click:Connect(function()
                            CurrentColor.BackgroundColor3 = v.BackgroundColor3
                            RInput.Text = tostring(math.floor(v.BackgroundColor3.R * 255))
                            GInput.Text = tostring(math.floor(v.BackgroundColor3.G * 255))
                            BInput.Text = tostring(math.floor(v.BackgroundColor3.B * 255))
                            callback(CurrentColor.BackgroundColor3)
                        end)
                    end
                end

                Section.Size = Section.Size + UDim2.new(0, 0, 0, Colorpicker.Size.Y.Offset + SectionItemList.Padding.Offset)
                Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)

                local Config = {}

                function Config:Color(newcolor)
                    CurrentColor.BackgroundColor3 = newcolor
                    RInput.Text = tostring(math.floor(newcolor.R * 255))
                    GInput.Text = tostring(math.floor(newcolor.G * 255))
                    BInput.Text = tostring(math.floor(newcolor.B * 255))
                    callback(CurrentColor.BackgroundColor3)
                end

                return Config

            end

            return Container

        end

        return PageItems

    end

    return Window

end

print("Hold#4564 was here :-)")



local Window = Library:Window("LOL")
local Page = Window:Page("Main Page")
local testPage = Window:Page("Test Page")

local Section = Page:Section("Cool Features")

Section:Button("Test", function()
    print("Test")
end)
local Toggle = Section:Toggle("Nigger", false, function(t)
    print(t)
end)
Section:Button("Toggle Off", function()
    Toggle:Toggle(false)
end)
Section:Button("Toggle On", function()
    Toggle:Toggle(true)
end)
local Slider = Section:Slider("Print", 5, 1000, 340, function(s)
    print(s)
end)
Section:Button("Slide", function()
    Slider:SlideTo(math.random(5, 1000))
end)
Section:Textbox("Nigger balls", "ball amount", function(t)
    print(t)
end)
Section:Line()
Section:Label("LOL", Color3.fromRGB(222, 222, 222))
Section:Keybind("Nigger", Enum.KeyCode.F, function(k)
    print("Nigger", k.Name)
    Library:Toggle()
end)
Section:Dropdown("LUL", {"Piss wasser"}, function(value)
    print(value)
end)
Section:Colorpicker("Color the niaar", Color3.fromRGB(255, 2, 2), function(color)
    print(color)
end)
