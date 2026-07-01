--[[
          -- /|_|\    _____________
         -- /  ^_^\ <|Super Speed!|
         -- \_____/  |____________|
    GamingKiller™️ The Exploit for Killing Games

        *recommended supported games only
             cuz only they work :p*


QUICK GUIDE:
    1. use the buttons under the window to open a script menu 
    2. to minimize/reopen the window press K on your keyboard
    3. If you want more supported games ask for them in the comments (NO BIG GAMES WITH ANTI-CHEAT!)
]]

local CalmLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/IcantAffordSynapse/calmlib/refs/heads/main/src.lua"))()

-- Get game name + ID
local gameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local gameId = game.PlaceId

print("Game Name:", gameName)
print("Game ID:", gameId)

-- =========================================================
-- ASMR Tower
-- =========================================================
if gameId == 111363135577981 then
    local window = CalmLib:win("GamingKiller (Game: " .. gameName .. ")")

    local section1 = window:tab("Complete", "rbxassetid://109121102062195")
    section1:label("Auto-Complete:")

    section1:button("Complete full game!", function()
        local TpTo = game.Workspace.Map.FinishLobby.Checkpoints["61"].Hitbox
        local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
        char:WaitForChild("HumanoidRootPart").CFrame = TpTo.CFrame
    end)

    section1:label("Stage Teleport:")
    section1:slider("Teleport To Stage", 1, 61, 50, function(num)
        local cp = game.Workspace.Map.FinishLobby.Checkpoints:FindFirstChild(tostring(num))
        if cp and cp:FindFirstChild("Hitbox") then
            local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
            char:WaitForChild("HumanoidRootPart").CFrame = cp.Hitbox.CFrame
        else
            warn("Checkpoint " .. num .. " not found!")
        end
    end)

-- =========================================================
-- Mega Obby Fun
-- =========================================================
elseif gameId == 16518256559 then
    local window = CalmLib:win("GamingKiller (Game: " .. gameName .. ")")

    local section1 = window:tab("Complete", "rbxassetid://109121102062195")
    section1:label("Auto-Complete:")

    section1:button("Complete full game!", function()
        local TpTo = game.Workspace.Checkpoints["150"]
        local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
        char:WaitForChild("HumanoidRootPart").CFrame = TpTo.CFrame
    end)

    section1:label("Stage Teleport:")
    section1:slider("Teleport To Stage", 1, 150, 50, function(num)
        local cp = game.Workspace.Checkpoints:FindFirstChild(tostring(num))
        if cp then
            local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
            char:WaitForChild("HumanoidRootPart").CFrame = cp.CFrame
        else
            warn("Checkpoint " .. num .. " not found!")
        end
    end)

-- =========================================================
-- Troll Obby (slow one-by-one complete by default)
-- =========================================================
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

        -- Teleport through all checkpoints
        task.spawn(function()
            for _, cp in ipairs(checkpoints) do
                hrp.CFrame = cp.CFrame
                task.wait(1)
            end
        end)
    end)

    section1:label("Stage Teleport (skip straight to a stage):")
    section1:slider("Teleport To Stage", 1, 106, 50, function(num)
        local cp = game.Workspace.Checkpoints:FindFirstChild(tostring(num))
        if cp then
            local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
            char:WaitForChild("HumanoidRootPart").CFrame = cp.CFrame
        else
            warn("Checkpoint " .. num .. " not found!")
        end
    end)

-- =========================================================
-- Obby But You Can't Jump
-- =========================================================
elseif gameId == 13326256431 then
    local window = CalmLib:win("GamingKiller (Game: " .. gameName .. ")")

    local section1 = window:tab("Complete", "rbxassetid://109121102062195")
    section1:label("Auto-Complete:")

    section1:button("Complete full game!", function()
        local TpTo = game.Workspace.Checkpoints["48"]
        local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
        char:WaitForChild("HumanoidRootPart").CFrame = TpTo.CFrame
    end)

    section1:label("Stage Teleport:")
    section1:slider("Teleport To Stage", 1, 48, 24, function(num)
        local cp = game.Workspace.Checkpoints:FindFirstChild(tostring(num))
        if cp then
            local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
            char:WaitForChild("HumanoidRootPart").CFrame = cp.CFrame
        else
            warn("Checkpoint " .. num .. " not found!")
        end
    end)

-- =========================================================
-- Mrbeast's Deadly Obby (multi-step complete)
-- =========================================================
elseif gameId == 88264996806108 then
    local window = CalmLib:win("GamingKiller (Game: " .. gameName .. ")")

    local section1 = window:tab("Complete", "rbxassetid://109121102062195")
    section1:label("Auto-Complete:")

    section1:button("Complete full game!", function()
        local locations = game.Workspace.Spawns.Locations
        local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
        local hrp = char:WaitForChild("HumanoidRootPart")

        local steps = {"4", "9", "13", "15", "17"}
        for _, stageName in ipairs(steps) do
            local target = locations:FindFirstChild(stageName)
            if target then
                hrp.CFrame = target.CFrame
                task.wait(1)
            end
        end

        task.wait(5)

        local final = locations:FindFirstChild("19")
        if final then
            hrp.CFrame = final.CFrame
        end
    end)

    section1:label("Stage Teleport:")
    section1:slider("Teleport To Stage", 1, 19, 9, function(num)
        local target = game.Workspace.Spawns.Locations:FindFirstChild(tostring(num))
        if target then
            local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
            char:WaitForChild("HumanoidRootPart").CFrame = target.CFrame
        else
            warn("Spawn " .. num .. " not found!")
        end
    end)

-- =========================================================
-- Easy Obby Fun
-- =========================================================
elseif gameId == 16225943017 then
    local window = CalmLib:win("GamingKiller (Game: " .. gameName .. ")")

    local section1 = window:tab("Complete", "rbxassetid://109121102062195")
    section1:label("Auto-Complete:")

    section1:button("Complete full game!", function()
        local TpTo = game.Workspace.Checkpoints["112"]
        local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
        char:WaitForChild("HumanoidRootPart").CFrame = TpTo.CFrame
    end)

    section1:label("Stage Teleport:")
    section1:slider("Teleport To Stage", 1, 112, 50, function(num)
        local cp = game.Workspace.Checkpoints:FindFirstChild(tostring(num))
        if cp then
            local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
            char:WaitForChild("HumanoidRootPart").CFrame = cp.CFrame
        else
            warn("Checkpoint " .. num .. " not found!")
        end
    end)

-- =========================================================
-- Sell Lemons (Tycoon) — Auto-Buy + Upgrades + Auto-Click
-- =========================================================
elseif gameId == 79268393072444 then
    ---------------------------------------------------------
    -- 🔍 Find the player's tycoon automatically and store it in PTC
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
        warn("❌ No tycoon found for player:", player.Name)
        return
    end

    print("✅ Your tycoon has been found:", PTC.Name)

    ---------------------------------------------------------
    -- 🔧 Helper: teleport a Model (or Part) to a CFrame
    --    Buttons are Models → PivotTo needs a PrimaryPart
    ---------------------------------------------------------
    local function tpModelTo(obj, targetCFrame)
        if obj:IsA("Model") then
            if not obj.PrimaryPart then
                local part = obj:FindFirstChildWhichIsA("BasePart")
                if part then
                    obj.PrimaryPart = part
                else
                    warn("❌ No BasePart in model:", obj.Name)
                    return
                end
            end
        end
        pcall(function()
            obj:PivotTo(targetCFrame)
        end)
    end

    ---------------------------------------------------------
    -- 🪟 CalmLib UI
    ---------------------------------------------------------
    local window = CalmLib:win("GamingKiller (Game: " .. gameName .. ")")
    local section1 = window:tab("Auto-Farm", "rbxassetid://109121102062195")
    section1:label("Auto Buy System:")

---------------------------------------------------------
-- 🟡 AUTO‑BUY LEMON STAND
--   RemoteFunction:InvokeServer(false)
---------------------------------------------------------
section1:toggle("Lemon Stand", false, function(enabled)
    print("Auto‑Buy Lemon Stand:", enabled)

    -- torso finder (works for R6 & R15)
    local function getTorso(char)
        return char:FindFirstChild("HumanoidRootPart")
            or char:FindFirstChild("UpperTorso")
            or char:FindFirstChild("Torso")
    end

    if enabled == true then
        task.spawn(function()
            while enabled == true do
                local char = player.Character or player.CharacterAdded:Wait()
                local torso = getTorso(char)

                local purchases = PTC:FindFirstChild("Purchases")
                if purchases then
                    local lemonStand = purchases:FindFirstChild("Lemon Stand")
                    if lemonStand then
                        local buttons = lemonStand:FindFirstChild("Buttons")
                        if buttons and buttons:GetAttribute("Enabled") == true then

                            -- all subfolders
                            local subfolders = {"Decor", "Multiplier", "Other", "Structure"}

                            for _, subName in ipairs(subfolders) do
                                local subFolder = buttons:FindFirstChild(subName)
                                if subFolder then

                                    for _, item in ipairs(subFolder:GetDescendants()) do
                                        if item:IsA("RemoteFunction") and item.Name == "Purchase" then

                                            local btn = item.Parent
                                            local enabledAttr = btn:GetAttribute("Enabled")
                                            local purchasedAttr = btn:GetAttribute("Purchased")
                                            local shownAttr = btn:GetAttribute("Shown")

                                            -- only buy if Enabled = true and Purchased = false and Shown = true
                                            if enabledAttr == true and purchasedAttr == false and shownAttr == true then
                                                print("🟢 Try purchase:", btn.Name)

                                                local success = false

                                                for attempt = 1, 3 do
                                                    local ok, err = pcall(function()
                                                        item:InvokeServer(false)
                                                    end)

                                                    if ok then
                                                        success = true
                                                        print("✅ Success:", btn.Name)
                                                        break
                                                    else
                                                        warn("⚠️ Error attempt " .. attempt .. " on " .. btn.Name .. ": " .. tostring(err))

                                                        -- after 2 errors → teleport button to player
                                                        if attempt == 2 then
                                                            if torso then
                                                                print("📦 Teleport button to player:", btn.Name)
                                                                tpModelTo(btn, torso.CFrame)
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

                            -- buy the Lemon Stand itself
                            local mainStand = buttons:FindFirstChild("Lemon Stand")
                            if mainStand then
                                local purchaseRemote = mainStand:FindFirstChild("Purchase")
                                if purchaseRemote and purchaseRemote:IsA("RemoteFunction") then
                                    local enabledAttr = mainStand:GetAttribute("Enabled")
                                    local purchasedAttr = mainStand:GetAttribute("Purchased")
                                    local shownAttr = mainStand:GetAttribute("Shown")

                                    if enabledAttr == true and purchasedAttr == false and shownAttr == true then
                                        print("🟢 Buy: Lemon Stand")
                                        local success = false

                                        for attempt = 1, 3 do
                                            local ok, err = pcall(function()
                                                purchaseRemote:InvokeServer(false)
                                            end)

                                            if ok then
                                                success = true
                                                print("✅ Success: Lemon Stand")
                                                break
                                            else
                                                warn("⚠️ Error attempt " .. attempt .. " on Lemon Stand: " .. tostring(err))

                                                if attempt == 2 then
                                                    if torso then
                                                        print("📦 Teleport Lemon Stand to player")
                                                        tpModelTo(mainStand, torso.CFrame)
                                                    end
                                                end

                                                task.wait(0.4)
                                            end
                                        end
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
-- 🟠 AUTO‑BUY LEMON DASH
--   RemoteFunction:InvokeServer(false)
---------------------------------------------------------
section1:toggle("Lemon Dash", false, function(enabled)
    print("Auto‑Buy Lemon Dash:", enabled)

    local function getTorso(char)
        return char:FindFirstChild("HumanoidRootPart")
            or char:FindFirstChild("UpperTorso")
            or char:FindFirstChild("Torso")
    end

    if enabled == true then
        task.spawn(function()
            while enabled == true do
                local char = player.Character or player.CharacterAdded:Wait()
                local torso = getTorso(char)

                local purchases = PTC:FindFirstChild("Purchases")
                if purchases then
                    local lemonDash = purchases:FindFirstChild("LemonDash")
                    if lemonDash then
                        local buttons = lemonDash:FindFirstChild("Buttons")
                        if buttons and buttons:GetAttribute("Enabled") == true then
                            local subfolders = {"Decor", "Multiplier", "Other", "Structure"}

                            for _, subName in ipairs(subfolders) do
                                local subFolder = buttons:FindFirstChild(subName)
                                if subFolder then
                                    for _, item in ipairs(subFolder:GetDescendants()) do
                                        if item:IsA("RemoteFunction") and item.Name == "Purchase" then
                                            local btn = item.Parent
                                            local enabledAttr = btn:GetAttribute("Enabled")
                                            local purchasedAttr = btn:GetAttribute("Purchased")
                                            local shownAttr = btn:GetAttribute("Shown")

                                            if enabledAttr == true and purchasedAttr == false and shownAttr == true then
                                                print("🟢 Try purchase:", btn.Name)
                                                local success = false

                                                for attempt = 1, 3 do
                                                    local ok, err = pcall(function()
                                                        item:InvokeServer(false)
                                                    end)

                                                    if ok then
                                                        success = true
                                                        print("✅ Success:", btn.Name)
                                                        break
                                                    else
                                                        warn("⚠️ Error attempt " .. attempt .. " on " .. btn.Name .. ": " .. tostring(err))
                                                        if attempt == 2 and torso then
                                                            print("📦 Teleport button to player:", btn.Name)
                                                            tpModelTo(btn, torso.CFrame)
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

                            -- buy the LemonDash itself
                            local mainDash = buttons:FindFirstChild("LemonDash")
                            if mainDash then
                                local purchaseRemote = mainDash:FindFirstChild("Purchase")
                                if purchaseRemote and purchaseRemote:IsA("RemoteFunction") then
                                    local enabledAttr = mainDash:GetAttribute("Enabled")
                                    local purchasedAttr = mainDash:GetAttribute("Purchased")
                                    local shownAttr = mainDash:GetAttribute("Shown")
                                    if enabledAttr == true and purchasedAttr == false and shownAttr == true then
                                        print("🟢 Buy: LemonDash")
                                        local success = false

                                        for attempt = 1, 3 do
                                            local ok, err = pcall(function()
                                                purchaseRemote:InvokeServer(false)
                                            end)

                                            if ok then
                                                success = true
                                                print("✅ Success: LemonDash")
                                                break
                                            else
                                                warn("⚠️ Error attempt " .. attempt .. " on LemonDash: " .. tostring(err))
                                                if attempt == 2 and torso then
                                                    print("📦 Teleport LemonDash to player")
                                                    tpModelTo(mainDash, torso.CFrame)
                                                end
                                                task.wait(0.4)
                                            end
                                        end
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
-- 🟠 AUTO‑BUY LEMON DEPOT
--   RemoteFunction:InvokeServer(false)
---------------------------------------------------------
section1:toggle("Lemon Depot", false, function(enabled)
    print("Auto‑Buy Lemon Depot:", enabled)

    local function getTorso(char)
        return char:FindFirstChild("HumanoidRootPart")
            or char:FindFirstChild("UpperTorso")
            or char:FindFirstChild("Torso")
    end

    if enabled == true then
        task.spawn(function()
            while enabled == true do
                local char = player.Character or player.CharacterAdded:Wait()
                local torso = getTorso(char)

                local purchases = PTC:FindFirstChild("Purchases")
                if purchases then
                    local lemonDepot = purchases:FindFirstChild("Lemon Depot")
                    if lemonDepot then
                        local buttons = lemonDepot:FindFirstChild("Buttons")
                        if buttons and buttons:GetAttribute("Enabled") == true then

                            -- all subfolders (Depot has items in all of them)
                            local subfolders = {"Decor", "Multiplier", "Other", "Structure"}

                            for _, subName in ipairs(subfolders) do
                                local subFolder = buttons:FindFirstChild(subName)
                                if subFolder then

                                    for _, item in ipairs(subFolder:GetDescendants()) do
                                        if item:IsA("RemoteFunction") and item.Name == "Purchase" then

                                            local btn = item.Parent
                                            local enabledAttr = btn:GetAttribute("Enabled")
                                            local purchasedAttr = btn:GetAttribute("Purchased")
                                            local shownAttr = btn:GetAttribute("Shown")

                                            if enabledAttr == true and purchasedAttr == false and shownAttr == true then
                                                print("🟢 Try purchase:", btn.Name)

                                                local success = false

                                                for attempt = 1, 3 do
                                                    local ok, err = pcall(function()
                                                        item:InvokeServer(false)
                                                    end)

                                                    if ok then
                                                        success = true
                                                        print("✅ Success:", btn.Name)
                                                        break
                                                    else
                                                        warn("⚠️ Error attempt " .. attempt .. " on " .. btn.Name .. ": " .. tostring(err))

                                                        if attempt == 2 and torso then
                                                            print("📦 Teleport button to player:", btn.Name)
                                                            tpModelTo(btn, torso.CFrame)
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

                            -- buy the Lemon Depot itself
                            local mainDepot = buttons:FindFirstChild("Lemon Depot")
                            if mainDepot then
                                local purchaseRemote = mainDepot:FindFirstChild("Purchase")
                                if purchaseRemote and purchaseRemote:IsA("RemoteFunction") then
                                    local enabledAttr = mainDepot:GetAttribute("Enabled")
                                    local purchasedAttr = mainDepot:GetAttribute("Purchased")
                                    local shownAttr = mainDepot:GetAttribute("Shown")

                                    if enabledAttr == true and purchasedAttr == false and shownAttr == true then
                                        print("🟢 Buy: Lemon Depot")
                                        local success = false

                                        for attempt = 1, 3 do
                                            local ok, err = pcall(function()
                                                purchaseRemote:InvokeServer(false)
                                            end)

                                            if ok then
                                                success = true
                                                print("✅ Success: Lemon Depot")
                                                break
                                            else
                                                warn("⚠️ Error attempt " .. attempt .. " on Lemon Depot: " .. tostring(err))

                                                if attempt == 2 and torso then
                                                    print("📦 Teleport Lemon Depot to player")
                                                    tpModelTo(mainDepot, torso.CFrame)
                                                end

                                                task.wait(0.4)
                                            end
                                        end
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
-- 🟠 AUTO‑BUY HILLS
--   RemoteFunction:InvokeServer(false)
---------------------------------------------------------
section1:toggle("Hills", false, function(enabled)
    print("Auto‑Buy Hills:", enabled)

    local function getTorso(char)
        return char:FindFirstChild("HumanoidRootPart")
            or char:FindFirstChild("UpperTorso")
            or char:FindFirstChild("Torso")
    end

    if enabled == true then
        task.spawn(function()
            while enabled == true do
                local char = player.Character or player.CharacterAdded:Wait()
                local torso = getTorso(char)

                local purchases = PTC:FindFirstChild("Purchases")
                if purchases then
                    local hills = purchases:FindFirstChild("Hills")
                    if hills then
                        local buttons = hills:FindFirstChild("Buttons")
                        if buttons and buttons:GetAttribute("Enabled") == true then

                            -- Hills has NO subfolders → everything is directly in Buttons
                            for _, item in ipairs(buttons:GetDescendants()) do
                                if item:IsA("RemoteFunction") and item.Name == "Purchase" then

                                    local btn = item.Parent
                                    local enabledAttr = btn:GetAttribute("Enabled")
                                    local purchasedAttr = btn:GetAttribute("Purchased")
                                    local shownAttr = btn:GetAttribute("Shown")

                                    if enabledAttr == true and purchasedAttr == false and shownAttr == true then
                                        print("🟢 Try purchase:", btn.Name)

                                        local success = false

                                        for attempt = 1, 3 do
                                            local ok, err = pcall(function()
                                                item:InvokeServer(false)
                                            end)

                                            if ok then
                                                success = true
                                                print("✅ Success:", btn.Name)
                                                break
                                            else
                                                warn("⚠️ Error attempt " .. attempt .. " on " .. btn.Name .. ": " .. tostring(err))

                                                if attempt == 2 and torso then
                                                    print("📦 Teleport button to player:", btn.Name)
                                                    tpModelTo(btn, torso.CFrame)
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

                            -- buy Hills itself
                            local mainHills = buttons:FindFirstChild("Hills")
                            if mainHills then
                                local purchaseRemote = mainHills:FindFirstChild("Purchase")
                                if purchaseRemote and purchaseRemote:IsA("RemoteFunction") then
                                    local enabledAttr = mainHills:GetAttribute("Enabled")
                                    local purchasedAttr = mainHills:GetAttribute("Purchased")
                                    local shownAttr = mainHills:GetAttribute("Shown")

                                    if enabledAttr == true and purchasedAttr == false and shownAttr == true then
                                        print("🟢 Buy: Hills")
                                        local success = false

                                        for attempt = 1, 3 do
                                            local ok, err = pcall(function()
                                                purchaseRemote:InvokeServer(false)
                                            end)

                                            if ok then
                                                success = true
                                                print("✅ Success: Hills")
                                                break
                                            else
                                                warn("⚠️ Error attempt " .. attempt .. " on Hills: " .. tostring(err))

                                                if attempt == 2 and torso then
                                                    print("📦 Teleport Hills to player")
                                                    tpModelTo(mainHills, torso.CFrame)
                                                end

                                                task.wait(0.4)
                                            end
                                        end
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
-- 🟠 AUTO‑BUY LEMON TRADING
--   RemoteFunction:InvokeServer(false)
---------------------------------------------------------
section1:toggle("Lemon Trading", false, function(enabled)
    print("Auto‑Buy Lemon Trading:", enabled)

    local function getTorso(char)
        return char:FindFirstChild("HumanoidRootPart")
            or char:FindFirstChild("UpperTorso")
            or char:FindFirstChild("Torso")
    end

    if enabled == true then
        task.spawn(function()
            while enabled == true do
                local char = player.Character or player.CharacterAdded:Wait()
                local torso = getTorso(char)

                local purchases = PTC:FindFirstChild("Purchases")
                if purchases then
                    local lemonTrading = purchases:FindFirstChild("Lemon Trading")
                    if lemonTrading then
                        local buttons = lemonTrading:FindFirstChild("Buttons")
                        if buttons and buttons:GetAttribute("Enabled") == true then

                            -- Lemon Trading has items in all subfolders
                            local subfolders = {"Decor", "Multiplier", "Other", "Structure"}

                            for _, subName in ipairs(subfolders) do
                                local subFolder = buttons:FindFirstChild(subName)
                                if subFolder then

                                    for _, item in ipairs(subFolder:GetDescendants()) do
                                        if item:IsA("RemoteFunction") and item.Name == "Purchase" then

                                            local btn = item.Parent
                                            local enabledAttr = btn:GetAttribute("Enabled")
                                            local purchasedAttr = btn:GetAttribute("Purchased")
                                            local shownAttr = btn:GetAttribute("Shown")

                                            if enabledAttr == true and purchasedAttr == false and shownAttr == true then
                                                print("🟢 Try purchase:", btn.Name)

                                                local success = false

                                                for attempt = 1, 3 do
                                                    local ok, err = pcall(function()
                                                        item:InvokeServer(false)
                                                    end)

                                                    if ok then
                                                        success = true
                                                        print("✅ Success:", btn.Name)
                                                        break
                                                    else
                                                        warn("⚠️ Error attempt " .. attempt .. " on " .. btn.Name .. ": " .. tostring(err))

                                                        if attempt == 2 and torso then
                                                            print("📦 Teleport button to player:", btn.Name)
                                                            tpModelTo(btn, torso.CFrame)
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

                            -- buy Lemon Trading itself
                            local mainTrading = buttons:FindFirstChild("Lemon Trading")
                            if mainTrading then
                                local purchaseRemote = mainTrading:FindFirstChild("Purchase")
                                if purchaseRemote and purchaseRemote:IsA("RemoteFunction") then
                                    local enabledAttr = mainTrading:GetAttribute("Enabled")
                                    local purchasedAttr = mainTrading:GetAttribute("Purchased")
                                    local shownAttr = mainTrading:GetAttribute("Shown")

                                    if enabledAttr == true and purchasedAttr == false and shownAttr == true then
                                        print("🟢 Buy: Lemon Trading")
                                        local success = false

                                        for attempt = 1, 3 do
                                            local ok, err = pcall(function()
                                                purchaseRemote:InvokeServer(false)
                                            end)

                                            if ok then
                                                success = true
                                                print("✅ Success: Lemon Trading")
                                                break
                                            else
                                                warn("⚠️ Error attempt " .. attempt .. " on Lemon Trading: " .. tostring(err))

                                                if attempt == 2 and torso then
                                                    print("📦 Teleport Lemon Trading to player")
                                                    tpModelTo(mainTrading, torso.CFrame)
                                                end

                                                task.wait(0.4)
                                            end
                                        end
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

    if enabled == true then
        task.spawn(function()
            while enabled == true do
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

    if enabled == true then
        task.spawn(function()
            while enabled == true do
                local Event = PTC.Purchases.LemonDash.LemonDash.LemonDash.Upgrade
                if Event and Event:IsA("RemoteFunction") then
                    pcall(function()
                        Event:InvokeServer(1)
                    end)
                end

                task.wait(0.1)
            end
        end)
    end
end)

section1:toggle("Upgrade Lemon Depot", false, function(enabled)
    print("Upgrade Lemon Depot spam:", enabled)

    if enabled == true then
        task.spawn(function()
            while enabled == true do
                local Event = PTC.Purchases["Lemon Depot"]["Lemon Depot"]["Lemon Depot"].Upgrade
                if Event and Event:IsA("RemoteFunction") then
                    pcall(function()
                        Event:InvokeServer(1)
                    end)
                end

                task.wait(0.1)
            end
        end)
    end
end)

section1:label("Phone Offer")

section1:toggle("Auto-Accept Phone Offers", false, function(enabled)
    print("Auto-Accept Phone Offers:", enabled)

    if enabled == true then
        task.spawn(function()
            while enabled == true do
                local Event = workspace.Tycoon2.Remotes.PhoneOffer
                if Event then
                    pcall(function()
                        Event:FireServer("Accept")
                    end)
                end

                task.wait(0.1)
            end
        end)
    end
end)

section1:label("Auto-Click")

---------------------------------------------------------
-- 🖱️ AUTO‑CLICK INCOME STREAM (Lemon Stand)
---------------------------------------------------------
section1:toggle("Auto-Click Lemon Stand", false, function(enabled)
    print("Auto-Click Income Stream:", enabled)

    if enabled == true then
        task.spawn(function()
            while enabled == true do
                local Event = PTC.Remotes.WakeIncomeStream
                if Event and Event:IsA("RemoteFunction") then
                    pcall(function()
                        Event:InvokeServer("LemonStand")
                    end)
                end

                task.wait(0.1)
            end
        end)
    end
end)

-- =========================================================
-- Boba Tea Obby (slow one-by-one complete by default)
-- =========================================================
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

        -- Collect 1 → 100 checkpoints (Models or Parts)
        for i = 1, 100 do
            local cp = checkpointsFolder:FindFirstChild(tostring(i))
            if cp then
                table.insert(checkpoints, cp)
            end
        end

        -- Teleport through all checkpoints
        task.spawn(function()
            for _, cp in ipairs(checkpoints) do

                -- If checkpoint is a Model → use PrimaryPart
                if cp:IsA("Model") then
                    local pp = cp.PrimaryPart

                    -- If Model has no PrimaryPart → pick a part automatically
                    if not pp then
                        pp = cp:FindFirstChildWhichIsA("BasePart")
                    end

                    if pp then
                        hrp.CFrame = pp.CFrame + Vector3.new(0, 2, 0)
                    else
                        warn("Checkpoint " .. cp.Name .. " has no teleportable parts!")
                    end

                -- If checkpoint is a Part → direct teleport
                elseif cp:IsA("BasePart") then
                    hrp.CFrame = cp.CFrame + Vector3.new(0, 2, 0)
                end

                task.wait(0.1)
            end
        end)
    end)

    section1:label("Stage Teleport (skip straight to a stage):")
    section1:slider("Teleport To Stage", 1, 100, 50, function(num)
        local cp = game.Workspace.Checkpoints:FindFirstChild(tostring(num))
        if cp then
            local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
            local hrp = char:WaitForChild("HumanoidRootPart")
            if cp:IsA("Model") then
                local pp = cp.PrimaryPart or cp:FindFirstChildWhichIsA("BasePart")
                if pp then
                    hrp.CFrame = pp.CFrame + Vector3.new(0, 2, 0)
                end
            elseif cp:IsA("BasePart") then
                hrp.CFrame = cp.CFrame + Vector3.new(0, 2, 0)
            end
        else
            warn("Checkpoint " .. num .. " not found!")
        end
    end)

-- =========================================================
-- Unsupported game → list supported games
-- =========================================================
else
    local window = CalmLib:win("GamingKiller (Unsupported game!)")

    local section1 = window:tab("Supported games", "rbxassetid://109121102062195")

    section1:label("Supported games:")

    section1:button("ASMR Tower", function()
        local TeleportService = game:GetService("TeleportService")
        local targetPlaceId = 111363135577981 -- ASMR Tower
        TeleportService:Teleport(targetPlaceId)
    end)

    section1:button("Mega Obby Fun", function()
        local TeleportService = game:GetService("TeleportService")
        local targetPlaceId = 16518256559 -- Mega Obby Fun
        TeleportService:Teleport(targetPlaceId)
    end)

    section1:button("Troll Obby", function()
        local TeleportService = game:GetService("TeleportService")
        local targetPlaceId = 13189735542 -- Troll Obby
        TeleportService:Teleport(targetPlaceId)
    end)

    section1:button("Obby But You Can't Jump", function()
        local TeleportService = game:GetService("TeleportService")
        local targetPlaceId = 13326256431 -- Obby But You Can't Jump
        TeleportService:Teleport(targetPlaceId)
    end)

    section1:button("Mrbeast's Deadly Obby", function()
        local TeleportService = game:GetService("TeleportService")
        local targetPlaceId = 88264996806108 -- Mrbeast's Deadly Obby
        TeleportService:Teleport(targetPlaceId)
    end)

    section1:button("Easy Obby Fun", function()
        local TeleportService = game:GetService("TeleportService")
        local targetPlaceId = 16225943017 -- Easy Obby Fun
        TeleportService:Teleport(targetPlaceId)
    end)

    section1:button("Sell Lemons 🍋", function()
        local TeleportService = game:GetService("TeleportService")
        local targetPlaceId = 79268393072444 -- Sell Lemons
        TeleportService:Teleport(targetPlaceId)
    end)

    section1:button("Boba Tea Obby!", function()
        local TeleportService = game:GetService("TeleportService")
        local targetPlaceId = 17509256499 -- Boba Tea Obby
        TeleportService:Teleport(targetPlaceId)
    end)

    error("This game is not supported by GamingKiller! (Maybe request it in the comments) Game name: " .. gameName)
end

-- 8 games RN (soon 9!)
