--[[
          -- /|_|\    _____________
         -- /  ^_^\ <|Super Speed!|
         -- \_____/  |____________|
    GamingKiller™️ The Exploit for Killing Games

        *reccomended supported games only
             cuz only they work :p*


QUICK QUIDE:
    1. use the buttons under the window to open a script menu 
    2. to minimize/reopen the window kress K on your keyboard
    3. If you want more supported games ask for them in the comments (NO BIG GAMES WITH ANTI-CHEAT!)
]]

local CalmLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/IcantAffordSynapse/calmlib/refs/heads/main/src.lua"))()

-- Get game name + ID
local gameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local gameId = game.PlaceId

print("Game Name:", gameName)
print("Game ID:", gameId)

if gameId == 111363135577981 then
    local window = CalmLib:win("GamingKiller (Game: " .. gameName .. ")")

    section1 = window:tab("Complete", "rbxassetid://109121102062195")
    section1:label("Auto-Complete:")

    section1:button("Complete full game!", function()
        local TpTo = game.Workspace.Map.FinishLobby.Checkpoints["61"].Hitbox
        local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
        char:WaitForChild("HumanoidRootPart").CFrame = TpTo.CFrame
    end)

elseif gameId == 16518256559 then
    local window = CalmLib:win("GamingKiller (Game: " .. gameName .. ")")

    local section1 = window:tab("Complete", "rbxassetid://109121102062195")
    section1:label("Auto-Complete:")

    section1:button("Complete full game!", function()
        local TpTo = game.Workspace.Checkpoints["150"]
        local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
        char:WaitForChild("HumanoidRootPart").CFrame = TpTo.CFrame
    end)

elseif gameId == 13189735542 then
    local window = CalmLib:win("GamingKiller (Game: " .. gameName .. ")")

    local section1 = window:tab("Complete", "rbxassetid://109121102062195")
    section1:label("Auto-Complete:")

    section1:button("Complete full game! (Slow)", function()
        local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
        local hrp = char:WaitForChild("HumanoidRootPart")

        -- TP Step by Step! 1 → 106
        local checkpointsFolder = game.Workspace:WaitForChild("Checkpoints")
        local checkpoints = {}

        for i = 1, 106 do
            local cp = checkpointsFolder:FindFirstChild(tostring(i))
            if cp then table.insert(checkpoints, cp) end
        end

        -- Teleport door alle checkpoints
        task.spawn(function()
            for _, cp in ipairs(checkpoints) do
                hrp.CFrame = cp.CFrame
                task.wait(1)
            end
        end)
    end)
elseif gameId == 13326256431 then
    local window = CalmLib:win("GamingKiller (Game: " .. gameName .. ")")

    local section1 = window:tab("Complete", "rbxassetid://109121102062195")
    section1:label("Auto-Complete:")

    section1:button("Complete full game!", function()
        local TpTo = game.Workspace.Checkpoints["48"]
        local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
        char:WaitForChild("HumanoidRootPart").CFrame = TpTo.CFrame
    end)
elseif gameId == 88264996806108 then
    local window = CalmLib:win("GamingKiller (Game: " .. gameName .. ")")

    local section1 = window:tab("Complete", "rbxassetid://109121102062195")
    section1:label("Auto-Complete:")

    section1:button("Complete full game!", function()
        local TpTo = game.Workspace.Spawns.Locations["4"]
        local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
        char:WaitForChild("HumanoidRootPart").CFrame = TpTo.CFrame
        task.wait(1)
        local TpTo = game.Workspace.Spawns.Locations["9"]
        local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
        char:WaitForChild("HumanoidRootPart").CFrame = TpTo.CFrame
        task.wait(1)
        local TpTo = game.Workspace.Spawns.Locations["13"]
        local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
        char:WaitForChild("HumanoidRootPart").CFrame = TpTo.CFrame
        task.wait(1)
        local TpTo = game.Workspace.Spawns.Locations["15"]
        local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
        char:WaitForChild("HumanoidRootPart").CFrame = TpTo.CFrame
        task.wait(1)
        local TpTo = game.Workspace.Spawns.Locations["17"]
        local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
        char:WaitForChild("HumanoidRootPart").CFrame = TpTo.CFrame
        task.wait(5)
        if game.Workspace.Spawns.Locations["19"] then
            local TpTo = game.Workspace.Spawns.Locations["19"]
            local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
            char:WaitForChild("HumanoidRootPart").CFrame = TpTo.CFrame
        end
    end)
elseif gameId == 16225943017 then
    local window = CalmLib:win("GamingKiller (Game: " .. gameName .. ")")

    local section1 = window:tab("Complete", "rbxassetid://109121102062195")

    section1:button("Complete full game!", function()
        local TpTo = game.Workspace.Checkpoints["112"]
        local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
        char:WaitForChild("HumanoidRootPart").CFrame = TpTo.CFrame
    end)
elseif gameId == 79268393072444 then
    ---------------------------------------------------------
    -- 🔍 Vind jouw tycoon automatisch en sla op in PTC
    ---------------------------------------------------------
    local player = game.Players.LocalPlayer
    local PTC = nil

    repeat task.wait() until game.Workspace

    for _, folder in ipairs(game.Workspace:GetChildren()) do
        if folder.Name:match("^Tycoon%d+$") then
            local owner = folder:WaitForChild("Owner", 5)
            if owner and owner:IsA("ObjectValue") and owner.Value == player then
                PTC = folder
                break
            end
        end
    end

    if not PTC then
        warn("❌ Geen tycoon gevonden voor speler:", player.Name)
        return
    end

    print("✅ Jouw tycoon is gevonden:", PTC.Name)

    ---------------------------------------------------------
    -- 🪟 CalmLib UI
    ---------------------------------------------------------
    local window = CalmLib:win("GamingKiller (Game: " .. gameName .. ")")
    local section1 = window:tab("Auto-Farm", "rbxassetid://109121102062195")
    section1:label("Auto Buy System:")

---------------------------------------------------------
-- 🟡 AUTO‑BUY LEMON STAND (Enabled + Purchased + Retry + TP)
---------------------------------------------------------
section1:toggle("Lemon Stand", false, function(enabled)
    print("Auto‑Buy Lemon Stand:", enabled)

    -- torso finder (werkt voor R6 & R15)
    local function getTorso(char)
        return char:FindFirstChild("HumanoidRootPart")
            or char:FindFirstChild("UpperTorso")
            or char:FindFirstChild("Torso")
    end

    if enabled then
        task.spawn(function()
            while enabled do
                local char = player.Character or player.CharacterAdded:Wait()
                local torso = getTorso(char)

                local purchases = PTC:FindFirstChild("Purchases")
                if purchases then
                    local lemonStand = purchases:FindFirstChild("Lemon Stand")
                    if lemonStand then
                        local buttons = lemonStand:FindFirstChild("Buttons")
                        if buttons then

                            -- alle subfolders
                            local subfolders = {"Decor", "Multiplier", "Other", "Structure"}

                            for _, subName in ipairs(subfolders) do
                                local subFolder = buttons:FindFirstChild(subName)
                                if subFolder then

                                    for _, item in ipairs(subFolder:GetDescendants()) do
                                        if item:IsA("RemoteFunction") and item.Name == "Purchase" then

                                            local btn = item.Parent
                                            local enabledAttr = btn:GetAttribute("Enabled")
                                            local purchasedAttr = btn:GetAttribute("Purchased")

                                            -- alleen kopen als Enabled = true en Purchased = false
                                            if enabledAttr == true and purchasedAttr == false then
                                                print("🟢 Probeer aankoop:", btn.Name)

                                                local success = false

                                                for attempt = 1, 3 do
                                                    local ok, err = pcall(function()
                                                        item:InvokeServer(false)
                                                    end)

                                                    if ok then
                                                        success = true
                                                        print("✅ Gelukt:", btn.Name)
                                                        break
                                                    else
                                                        warn("⚠️ Error attempt " .. attempt .. " bij " .. btn.Name .. ": " .. tostring(err))

                                                        -- na 2 errors → teleport button naar speler
                                                        if attempt == 2 then
                                                            if torso then
                                                                print("📦 Teleport button naar speler:", btn.Name)
                                                                btn:PivotTo(torso.CFrame)
                                                            end
                                                        end

                                                        task.wait(0.4)
                                                    end
                                                end

                                                if not success then
                                                    print("⚪ Skip:", btn.Name)
                                                end
                                            end
                                        end
                                    end
                                end
                            end

                            -- koop de losse Lemon Stand zelf
                            local mainStand = buttons:FindFirstChild("Lemon Stand")
                            if mainStand then
                                local purchaseRemote = mainStand:FindFirstChild("Purchase")
                                if purchaseRemote then
                                    local enabledAttr = mainStand:GetAttribute("Enabled")
                                    local purchasedAttr = mainStand:GetAttribute("Purchased")

                                    if enabledAttr == true and purchasedAttr == false then
                                        print("🟢 Koop: Lemon Stand")
                                        purchaseRemote:InvokeServer(false)
                                    end
                                end
                            end

                        end
                    end
                end

                task.wait(0.4)
            end
        end)
    end
end)
---------------------------------------------------------
-- 🟠 AUTO‑BUY LEMON DASH (Enabled + Purchased + Retry + TP)
---------------------------------------------------------
section1:toggle("Lemon Dash", false, function(enabled)
    print("Auto‑Buy Lemon Dash:", enabled)

    local function getTorso(char)
        return char:FindFirstChild("HumanoidRootPart")
            or char:FindFirstChild("UpperTorso")
            or char:FindFirstChild("Torso")
    end

    if enabled then
        task.spawn(function()
            while enabled do
                local char = player.Character or player.CharacterAdded:Wait()
                local torso = getTorso(char)

                local purchases = PTC:FindFirstChild("Purchases")
                if purchases then
                    local lemonDash = purchases:FindFirstChild("LemonDash")
                    if lemonDash then
                        local buttons = lemonDash:FindFirstChild("Buttons")
                        if buttons then
                            local subfolders = {"Decor", "Multiplier", "Other", "Structure"}

                            for _, subName in ipairs(subfolders) do
                                local subFolder = buttons:FindFirstChild(subName)
                                if subFolder then
                                    for _, item in ipairs(subFolder:GetDescendants()) do
                                        if item:IsA("RemoteFunction") and item.Name == "Purchase" then
                                            local btn = item.Parent
                                            local enabledAttr = btn:GetAttribute("Enabled")
                                            local purchasedAttr = btn:GetAttribute("Purchased")

                                            if enabledAttr == true and purchasedAttr == false then
                                                print("🟢 Probeer aankoop:", btn.Name)
                                                local success = false

                                                for attempt = 1, 3 do
                                                    local ok, err = pcall(function()
                                                        item:InvokeServer(false)
                                                    end)

                                                    if ok then
                                                        success = true
                                                        print("✅ Gelukt:", btn.Name)
                                                        break
                                                    else
                                                        warn("⚠️ Error attempt " .. attempt .. " bij " .. btn.Name .. ": " .. tostring(err))
                                                        if attempt == 2 and torso then
                                                            print("📦 Teleport button naar speler:", btn.Name)
                                                            btn:PivotTo(torso.CFrame)
                                                        end
                                                        task.wait(0.4)
                                                    end
                                                end

                                                if not success then
                                                    print("⚪ Skip:", btn.Name)
                                                end
                                            end
                                        end
                                    end
                                end
                            end

                            -- Koop de losse LemonDash zelf
                            local mainDash = buttons:FindFirstChild("LemonDash")
                            if mainDash then
                                local purchaseRemote = mainDash:FindFirstChild("Purchase")
                                if purchaseRemote then
                                    local enabledAttr = mainDash:GetAttribute("Enabled")
                                    local purchasedAttr = mainDash:GetAttribute("Purchased")
                                    if enabledAttr == true and purchasedAttr == false then
                                        print("🟢 Koop: LemonDash")
                                        purchaseRemote:InvokeServer(false)
                                    end
                                end
                            end
                        end
                    end
                end
                task.wait(0.4)
            end
        end)
    end
end)

---------------------------------------------------------
-- 🟠 AUTO‑BUY LEMON DEPOT (Enabled + Purchased + Retry + TP)
---------------------------------------------------------
section1:toggle("Lemon Depot", false, function(enabled)
    print("Auto‑Buy Lemon Depot:", enabled)

    local function getTorso(char)
        return char:FindFirstChild("HumanoidRootPart")
            or char:FindFirstChild("UpperTorso")
            or char:FindFirstChild("Torso")
    end

    if enabled then
        task.spawn(function()
            while enabled do
                local char = player.Character or player.CharacterAdded:Wait()
                local torso = getTorso(char)

                local purchases = PTC:FindFirstChild("Purchases")
                if purchases then
                    local lemonDepot = purchases:FindFirstChild("Lemon Depot")
                    if lemonDepot then
                        local buttons = lemonDepot:FindFirstChild("Buttons")
                        if buttons then

                            -- alle subfolders (Depot heeft overal iets)
                            local subfolders = {"Decor", "Multiplier", "Other", "Structure"}

                            for _, subName in ipairs(subfolders) do
                                local subFolder = buttons:FindFirstChild(subName)
                                if subFolder then

                                    for _, item in ipairs(subFolder:GetDescendants()) do
                                        if item:IsA("RemoteFunction") and item.Name == "Purchase" then

                                            local btn = item.Parent
                                            local enabledAttr = btn:GetAttribute("Enabled")
                                            local purchasedAttr = btn:GetAttribute("Purchased")

                                            if enabledAttr == true and purchasedAttr == false then
                                                print("🟢 Probeer aankoop:", btn.Name)

                                                local success = false

                                                for attempt = 1, 3 do
                                                    local ok, err = pcall(function()
                                                        item:InvokeServer(false)
                                                    end)

                                                    if ok then
                                                        success = true
                                                        print("✅ Gelukt:", btn.Name)
                                                        break
                                                    else
                                                        warn("⚠️ Error attempt " .. attempt .. " bij " .. btn.Name .. ": " .. tostring(err))

                                                        if attempt == 2 and torso then
                                                            print("📦 Teleport button naar speler:", btn.Name)
                                                            btn:PivotTo(torso.CFrame)
                                                        end

                                                        task.wait(0.4)
                                                    end
                                                end

                                                if not success then
                                                    print("⚪ Skip:", btn.Name)
                                                end
                                            end
                                        end
                                    end
                                end
                            end

                            -- Koop de losse Lemon Depot zelf
                            local mainDepot = buttons:FindFirstChild("Lemon Depot")
                            if mainDepot then
                                local purchaseRemote = mainDepot:FindFirstChild("Purchase")
                                if purchaseRemote then
                                    local enabledAttr = mainDepot:GetAttribute("Enabled")
                                    local purchasedAttr = mainDepot:GetAttribute("Purchased")

                                    if enabledAttr == true and purchasedAttr == false then
                                        print("🟢 Koop: Lemon Depot")
                                        purchaseRemote:InvokeServer(false)
                                    end
                                end
                            end

                        end
                    end
                end

                task.wait(0.4)
            end
        end)
    end
end)

---------------------------------------------------------
-- 🟠 AUTO‑BUY HILLS (Enabled + Purchased + Retry + TP)
---------------------------------------------------------
section1:toggle("Hills", false, function(enabled)
    print("Auto‑Buy Hills:", enabled)

    local function getTorso(char)
        return char:FindFirstChild("HumanoidRootPart")
            or char:FindFirstChild("UpperTorso")
            or char:FindFirstChild("Torso")
    end

    if enabled then
        task.spawn(function()
            while enabled do
                local char = player.Character or player.CharacterAdded:Wait()
                local torso = getTorso(char)

                local purchases = PTC:FindFirstChild("Purchases")
                if purchases then
                    local hills = purchases:FindFirstChild("Hills")
                    if hills then
                        local buttons = hills:FindFirstChild("Buttons")
                        if buttons then

                            -- Hills heeft GEEN subfolders → alles zit direct in Buttons
                            for _, item in ipairs(buttons:GetDescendants()) do
                                if item:IsA("RemoteFunction") and item.Name == "Purchase" then

                                    local btn = item.Parent
                                    local enabledAttr = btn:GetAttribute("Enabled")
                                    local purchasedAttr = btn:GetAttribute("Purchased")

                                    if enabledAttr == true and purchasedAttr == false then
                                        print("🟢 Probeer aankoop:", btn.Name)

                                        local success = false

                                        for attempt = 1, 3 do
                                            local ok, err = pcall(function()
                                                item:InvokeServer(false)
                                            end)

                                            if ok then
                                                success = true
                                                print("✅ Gelukt:", btn.Name)
                                                break
                                            else
                                                warn("⚠️ Error attempt " .. attempt .. " bij " .. btn.Name .. ": " .. tostring(err))

                                                if attempt == 2 and torso then
                                                    print("📦 Teleport button naar speler:", btn.Name)
                                                    btn:PivotTo(torso.CFrame)
                                                end

                                                task.wait(0.4)
                                            end
                                        end

                                        if not success then
                                            print("⚪ Skip:", btn.Name)
                                        end
                                    end
                                end
                            end

                            -- Koop de losse Hills zelf
                            local mainHills = buttons:FindFirstChild("Hills")
                            if mainHills then
                                local purchaseRemote = mainHills:FindFirstChild("Purchase")
                                if purchaseRemote then
                                    local enabledAttr = mainHills:GetAttribute("Enabled")
                                    local purchasedAttr = mainHills:GetAttribute("Purchased")

                                    if enabledAttr == true and purchasedAttr == false then
                                        print("🟢 Koop: Hills")
                                        purchaseRemote:InvokeServer(false)
                                    end
                                end
                            end

                        end
                    end
                end

                task.wait(0.4)
            end
        end)
    end
end)

---------------------------------------------------------
-- 🟠 AUTO‑BUY LEMON TRADING (Enabled + Purchased + Retry + TP)
---------------------------------------------------------
section1:toggle("Lemon Trading", false, function(enabled)
    print("Auto‑Buy Lemon Trading:", enabled)

    local function getTorso(char)
        return char:FindFirstChild("HumanoidRootPart")
            or char:FindFirstChild("UpperTorso")
            or char:FindFirstChild("Torso")
    end

    if enabled then
        task.spawn(function()
            while enabled do
                local char = player.Character or player.CharacterAdded:Wait()
                local torso = getTorso(char)

                local purchases = PTC:FindFirstChild("Purchases")
                if purchases then
                    local lemonTrading = purchases:FindFirstChild("Lemon Trading")
                    if lemonTrading then
                        local buttons = lemonTrading:FindFirstChild("Buttons")
                        if buttons then

                            -- Lemon Trading heeft overal items
                            local subfolders = {"Decor", "Multiplier", "Other", "Structure"}

                            for _, subName in ipairs(subfolders) do
                                local subFolder = buttons:FindFirstChild(subName)
                                if subFolder then

                                    for _, item in ipairs(subFolder:GetDescendants()) do
                                        if item:IsA("RemoteFunction") and item.Name == "Purchase" then

                                            local btn = item.Parent
                                            local enabledAttr = btn:GetAttribute("Enabled")
                                            local purchasedAttr = btn:GetAttribute("Purchased")

                                            if enabledAttr == true and purchasedAttr == false then
                                                print("🟢 Probeer aankoop:", btn.Name)

                                                local success = false

                                                for attempt = 1, 3 do
                                                    local ok, err = pcall(function()
                                                        item:InvokeServer(false)
                                                    end)

                                                    if ok then
                                                        success = true
                                                        print("✅ Gelukt:", btn.Name)
                                                        break
                                                    else
                                                        warn("⚠️ Error attempt " .. attempt .. " bij " .. btn.Name .. ": " .. tostring(err))

                                                        if attempt == 2 and torso then
                                                            print("📦 Teleport button naar speler:", btn.Name)
                                                            btn:PivotTo(torso.CFrame)
                                                        end

                                                        task.wait(0.4)
                                                    end
                                                end

                                                if not success then
                                                    print("⚪ Skip:", btn.Name)
                                                end
                                            end
                                        end
                                    end
                                end
                            end

                            -- Koop de losse Lemon Trading zelf
                            local mainTrading = buttons:FindFirstChild("Lemon Trading")
                            if mainTrading then
                                local purchaseRemote = mainTrading:FindFirstChild("Purchase")
                                if purchaseRemote then
                                    local enabledAttr = mainTrading:GetAttribute("Enabled")
                                    local purchasedAttr = mainTrading:GetAttribute("Purchased")

                                    if enabledAttr == true and purchasedAttr == false then
                                        print("🟢 Koop: Lemon Trading")
                                        purchaseRemote:InvokeServer(false)
                                    end
                                end
                            end

                        end
                    end
                end

                task.wait(0.4)
            end
        end)
    end
end)

section1:label("Auto-Upgrade")

---------------------------------------------------------
-- ⚙️ AUTO‑UPGRADE SPAMMER (Lemon Stand) — RemoteFunction
---------------------------------------------------------
section1:toggle("Upgrade Lemon Stand", false, function(enabled)
    print("Upgrade Lemon Stand spam:", enabled)

    if enabled then
        task.spawn(function()
            while enabled do
                local event = PTC
                    and PTC.Purchases
                    and PTC.Purchases["Lemon Stand"]
                    and PTC.Purchases["Lemon Stand"]["Lemon Stand"]
                    and PTC.Purchases["Lemon Stand"]["Lemon Stand"]["Lemon Stand"]
                    and PTC.Purchases["Lemon Stand"]["Lemon Stand"]["Lemon Stand"].Upgrade

                if event and event:IsA("RemoteFunction") then
                    pcall(function()
                        event:InvokeServer(1)
                    end)
                end

                task.wait(0.1)
            end
        end)
    end
end)

---------------------------------------------------------
-- ⚙️ AUTO‑UPGRADE SPAMMER (LemonDash) — RemoteFunction
---------------------------------------------------------
section1:toggle("Upgrade LemonDash", false, function(enabled)
    print("Upgrade LemonDash spam:", enabled)

    if enabled then
        task.spawn(function()
            while enabled do
                local Event = PTC.Purchases.LemonDash.LemonDash.LemonDash.Upgrade
                Event:InvokeServer(
                    1
                )

                task.wait(0.1)
            end
        end)
    end
end)
section1:toggle("Upgrade LemonDash", false, function(enabled)
    print("Upgrade LemonDash spam:", enabled)

    if enabled then
        task.spawn(function()
            while enabled do
                local Event = PTCPurchases["Lemon Depot"]["Lemon Depot"]["Lemon Depot"].Upgrade
                Event:InvokeServer(
                    1
                )

                task.wait(0.1)
            end
        end)
    end
end)

section1:label("Phone Offer")

section1:toggle("Auto-Accept Phone Offers", false, function(enabled)
    print("Upgrade LemonDash spam:", enabled)

    if enabled then
        task.spawn(function()
            while enabled do
                local Event = workspace.Tycoon2.Remotes.PhoneOffer
                Event:FireServer(
                    "Accept"
                )

                task.wait(0.1)
            end
        end)
    end
end)
elseif gameId == 17509256499 then
    local window = CalmLib:win("GamingKiller (Game: " .. gameName .. ")")

    local section1 = window:tab("Complete", "rbxassetid://109121102062195")
    section1:label("Auto-Complete:")

    section1:button("Complete full game! (Slow)", function()
        local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
        local hrp = char:WaitForChild("HumanoidRootPart")

        -- Checkpoints folder
        local checkpointsFolder = game.Workspace:WaitForChild("Checkpoints")
        local checkpoints = {}

        -- Verzamel 1 → 100 checkpoints (Models of Parts)
        for i = 1, 100 do
            local cp = checkpointsFolder:FindFirstChild(tostring(i))
            if cp then
                table.insert(checkpoints, cp)
            end
        end

        -- Teleport door alle checkpoints
        task.spawn(function()
            for _, cp in ipairs(checkpoints) do

                -- Als checkpoint een Model is → gebruik PrimaryPart
                if cp:IsA("Model") then
                    local pp = cp.PrimaryPart

                    -- Als Model geen PrimaryPart heeft → kies automatisch een part
                    if not pp then
                        pp = cp:FindFirstChildWhichIsA("BasePart")
                    end

                    if pp then
                        hrp.CFrame = pp.CFrame + Vector3.new(0, 2, 0)
                    else
                        warn("Checkpoint " .. cp.Name .. " heeft geen teleportbare parts!")
                    end

                -- Als checkpoint een Part is → direct teleport
                elseif cp:IsA("BasePart") then
                    hrp.CFrame = cp.CFrame + Vector3.new(0, 2, 0)
                end

                task.wait(0.1)
            end
        end)
    end)
else
    local window = CalmLib:win("GamingKiller (Unsupported game!)")

    local section1 = window:tab("Supported games", "rbxassetid://109121102062195")

    section1:label("Supported games:")

    section1:button("ASMR Tower", function()
        local TeleportService = game:GetService("TeleportService")
        local targetPlaceId = 111363135577981 -- vervang met jouw gameID

        TeleportService:Teleport(targetPlaceId)
    end)
    -- 16518256559
    section1:button("Mega Obby Fun", function()
        local TeleportService = game:GetService("TeleportService")
        local targetPlaceId = 16518256559 -- vervang met jouw gameID

        TeleportService:Teleport(targetPlaceId)
    end)
    -- 13189735542
    section1:button("Troll Obby", function()
        local TeleportService = game:GetService("TeleportService")
        local targetPlaceId = 13189735542 -- vervang met jouw gameID

        TeleportService:Teleport(targetPlaceId)
    end)
    -- Obby But You Can't Jump
    -- 13326256431
    section1:button("Obby But You Can't Jump", function()
        local TeleportService = game:GetService("TeleportService")
        local targetPlaceId = 13326256431 -- vervang met jouw gameID

        TeleportService:Teleport(targetPlaceId)
    end)
    -- Mrbeast's Deadly Obby
    -- 88264996806108
    section1:button("Mrbeast's Deadly Obby", function()
        local TeleportService = game:GetService("TeleportService")
        local targetPlaceId = 88264996806108 -- vervang met jouw gameID

        TeleportService:Teleport(targetPlaceId)
    end)
    -- Easy Obby Fun
    -- 16225943017
    section1:button("Easy Obby Fun", function()
        local TeleportService = game:GetService("TeleportService")
        local targetPlaceId = 16225943017 -- vervang met jouw gameID

        TeleportService:Teleport(targetPlaceId)
    end)
    section1:button("Sell Lemons 🍋", function()
        local TeleportService = game:GetService("TeleportService")
        local targetPlaceId = 79268393072444 -- vervang met jouw gameID

        TeleportService:Teleport(targetPlaceId)
    end)
    -- 17509256499
    section1:button("Boba Tea Obby!", function()
        local TeleportService = game:GetService("TeleportService")
        local targetPlaceId = 17509256499 -- vervang met jouw gameID

        TeleportService:Teleport(targetPlaceId)
    end)
    error("This game is not supported by GamingKiller! (Maybe request it in the comments) Game name: " .. gameName)
end

-- 8 games RN (soon 9!)
