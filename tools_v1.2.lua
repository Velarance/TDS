getgenv().autoSkip = false; -- true/false

getgenv().Commander = false
getgenv().Swarmer = false
getgenv().Gladiator = false
getgenv().Medic = false

function doSkip()
 spawn(function()
        while autoSkip == true do
            local args = {[1] = "Waves",[2] = "Skip"}
            game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
        wait(0.2)
        end
    end)
end

function doCAbility()
    spawn(function()
        while Commander == true do
            local args = {[1] = "Troops",[2] = "Abilities",[3] = "Activate",[4] = {["Name"] = "Call Of Arms",["Troop"] = workspace.Towers.Red}}
            game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
        wait(0.2)
        end
    end)
end

-------------------------------------------------------------------------------------------------------------------------
local BlekLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/laderite/bleklib/main/library.lua"))()

local win = BlekLib:Create({
    Name = "TDS Tools",
    StartupSound = {
        Toggle = true,
        SoundID = "rbxassetid://6958727243",
        TimePosition = 1
    }
})

local maintab = win:Tab('Main          ')
local lobbytab = win:Tab('Lobby          ')
local otherstab = win:Tab('Other          ')
local localtab = win:Tab('Local          ')
local credittab = win:Tab('Credits          ')
local uitab = win:Tab('UI')

----------------------------------------------------------------------------------------------------------------------
maintab:Label('                                 ━━━━━━ Main ━━━━━━')

maintab:Button('Skip (E)', function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/L00PGBob/Tower-Defense-Simulator-3/main/To%20skip%20press%20E",true))()
end)

maintab:Toggle('AutoSkip', function(bool)
    getgenv().autoSkip = bool
    print('Auto Skip is: ', bool)
    if bool then
        doSkip();
    end
end)

maintab:Button('Auto Stack V3', function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/L00PGBob/Test/main/Auto%20Stack",true))()
end)


maintab:Button('Auto Medic V2', function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TacoCatBackWardsIsTacoCat/scripts/main/Auto%20Medic%20Ability.lua",true))()
end)


maintab:Button('Place Anywhere', function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/L00PGBob/Test/main/Place%20Anywhere",true))()
end)


maintab:Button('Auto Chain', function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/K1NG000/Test/main/AutoChain",true))()
end)


maintab:Button('SellFarms - FinalWave', function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/L00PGBob/Tower-Defense-Simulator-3/main/Sell%20farms%20last%20round",true))()
end)


maintab:Button('Pickup Candy Canes', function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/L00PGBob/Test/main/CandyCanev2",true))()
end)



maintab:Button('DJ Music GUI', function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TacoCatBackWardsIsTacoCat/scripts/main/TDS%20DJ%20Music%20Gui.lua",true))()
end)







----------------------------------------------------------------------------------------------------------------------
lobbytab:Label('                                 ━━━━━━ Scripts ━━━━━━')

lobbytab:Button('Join LowPop', function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/L00PGBob/Test/main/join%20less%20server",true))()
end)
----------------------------------------------------------------------------------------------------------------------
lobbytab:Label('                                 ━━━━━━ Crates ━━━━━━')

lobbytab:Button('✨ Buy Basic', function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/L00PGBob/Test/main/buy%20basic",true))()
end)

lobbytab:Button('Open Basic', function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/L00PGBob/Test/main/open%20basic",true))()
end)

lobbytab:Button('⭐ Buy Golden', function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/L00PGBob/Test/main/buy%20golden",true))()
end)

lobbytab:Button('Open Golden', function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/L00PGBob/Test/main/open%20golden",true))()
end)

lobbytab:Button('🌟 Buy Premium', function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/L00PGBob/Test/main/buy%20premium",true))()
end)

lobbytab:Button('Open Premium', function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/L00PGBob/Test/main/open%20premium",true))()
end)

lobbytab:Button('🌠 Buy Deluxe', function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/L00PGBob/Test/main/buy%20deluxe",true))()
end)

lobbytab:Button('Open Deluxe', function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/L00PGBob/Test/main/open%20deluxe",true))()
end)
----------------------------------------------------------------------------------------------------------------------
otherstab:Label('                             ━━━━━━ Auto Ability ━━━━━━')

otherstab:Toggle('Commander', function(bool)
    getgenv().Commander = bool
    print('Auto Commander is: ', bool)
    if bool then
        doCAbility();
    end
end)
----------------------------------------------------------------------------------------------------------------------
otherstab:Label('                                ━━━━━━  Looks ━━━━━━')

otherstab:Button('FreeCam (ShiftP)', function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/K1NG000/Test/main/Free%20Cam",true))()
end)

otherstab:Button('Save GPU', function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/L00PGBob/Tower-Defense-Simulator-3/main/save%20gpu",true))()
end)

otherstab:Button('RTX', function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/L00PGBob/Test/main/RTX%20for%20TDS",true))()
end)

otherstab:Button('Shader', function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/L00PGBob/Test/main/Shader",true))()
end)

otherstab:Button('Anime Sky', function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/L00PGBob/Test/main/anime%20sky",true))()
end)

otherstab:Button('SuperLOW GFX', function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/L00PGBob/Test/main/Super%20Low%20GFX",true))()
end)
----------------------------------------------------------------------------------------------------------------------
localtab:Button('Noclip (T)', function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/L00PGBob/Test/main/HoldTNoclip",true))()
end)
----------------------------------------------------------------------------------------------------------------------
credittab:Label('🌟 MoneyMaker')
credittab:Label('🌟 Made By Velarance')
----------------------------------------------------------------------------------------------------------------------
uitab:Button('Destroy GUI', function()
    win:Exit()
end)
