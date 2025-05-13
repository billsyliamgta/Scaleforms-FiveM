local bg, fg, main

local wallId = "CELEB_HEIST"

function LoadPassedScaleforms()
    print("CLIENT: Requesting Passed Scaleforms..")
    bg = RequestScaleformMovie("HEIST_CELEBRATION_BG")
    while not HasScaleformMovieLoaded(bg) do
        Citizen.Wait(0)
    end
    fg = RequestScaleformMovie("HEIST_CELEBRATION_FG")
    while not HasScaleformMovieLoaded(fg) do
        Citizen.Wait(0)
    end
    main = RequestScaleformMovie("HEIST_CELEBRATION")
    while not HasScaleformMovieLoaded(main) do
        Citizen.Wait(0)
    end
    print("CLIENT: Loaded Passed Scaleforms.")
end

function DeletePassedScaleforms()
    if HasScaleformMovieLoaded(bg) then
        SetScaleformMovieAsNoLongerNeeded(bg)
        bg = 0
    end

    if HasScaleformMovieLoaded(fg) then
        SetScaleformMovieAsNoLongerNeeded(fg)
        fg = 0
    end

    if HasScaleformMovieLoaded(main) then
        SetScaleformMovieAsNoLongerNeeded(main)
        main = 0
    end
end

RegisterNetEvent("cs:ShowPassed")
AddEventHandler("cs:ShowPassed", function (smallText, bigText, bgColour, cash, rp, previousRp, xpStartLimit, xpEndLimit, playerLevel)
    showPassed(smallText, bigText, bgColour, cash, rp, previousRp, xpStartLimit, xpEndLimit, playerLevel)
end)

function showPassed(smallText, bigText, bgColour, cash, rp, previousRp, xpStartLimit, xpEndLimit, playerLevel)
    AnimpostfxStopAll()
    DisplayHud(false)
    DisplayRadar(false)
    SetAudioFlag("LoadMPData", true)
    ReleaseNamedScriptAudioBank("HUD_321_GO")
    RequestScriptAudioBank("HUD_321_GO", false)
    TogglePausedRenderphases(false)
    LoadPassedScaleforms()

    BeginScaleformMovieMethod(bg, "CLEANUP")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(wallId)
    EndTextCommandScaleformString()
    EndScaleformMovieMethod()
    BeginScaleformMovieMethod(fg, "CLEANUP")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(wallId)
    EndTextCommandScaleformString()
    EndScaleformMovieMethod()
    BeginScaleformMovieMethod(main, "CLEANUP")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(wallId)
    EndTextCommandScaleformString()
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(bg, "CREATE_STAT_WALL")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(wallId)
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(bgColour)
    EndTextCommandScaleformString()
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(fg, "CREATE_STAT_WALL")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(wallId)
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(bgColour)
    EndTextCommandScaleformString()
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(main, "CREATE_STAT_WALL")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(wallId)
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(bgColour)
    EndTextCommandScaleformString()
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(bg, "ADD_MISSION_RESULT_TO_WALL")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(wallId)
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(smallText)
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(bigText)
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName("")
    EndTextCommandScaleformString()
    ScaleformMovieMethodAddParamBool(true)
    ScaleformMovieMethodAddParamBool(true)
    ScaleformMovieMethodAddParamBool(true)
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(fg, "ADD_MISSION_RESULT_TO_WALL")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(wallId)
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(smallText)
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(bigText)
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName("")
    EndTextCommandScaleformString()
    ScaleformMovieMethodAddParamBool(true)
    ScaleformMovieMethodAddParamBool(true)
    ScaleformMovieMethodAddParamBool(true)
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(main, "ADD_MISSION_RESULT_TO_WALL")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(wallId)
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(smallText)
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(bigText)
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName("")
    EndTextCommandScaleformString()
    ScaleformMovieMethodAddParamBool(true)
    ScaleformMovieMethodAddParamBool(true)
    ScaleformMovieMethodAddParamBool(true)
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(bg, "CREATE_STAT_TABLE")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(wallId)
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName("CELEB_PSCORE")
    EndTextCommandScaleformString()
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(fg, "CREATE_STAT_TABLE")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(wallId)
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName("CELEB_PSCORE")
    EndTextCommandScaleformString()
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(main, "CREATE_STAT_TABLE")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(wallId)
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName("CELEB_PSCORE")
    EndTextCommandScaleformString()
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(bg, "ADD_STAT_TABLE_TO_WALL")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(wallId)
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName("CELEB_PSCORE")
    EndTextCommandScaleformString()
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(fg, "ADD_STAT_TABLE_TO_WALL")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(wallId)
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName("CELEB_PSCORE")
    EndTextCommandScaleformString()
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(main, "ADD_STAT_TABLE_TO_WALL")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(wallId)
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName("CELEB_PSCORE")
    EndTextCommandScaleformString()
    EndScaleformMovieMethod()
     
    BeginScaleformMovieMethod(bg, "CREATE_INCREMENTAL_CASH_ANIMATION")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(wallId)
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName("SUMMARY")
    EndTextCommandScaleformString()
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(fg, "CREATE_INCREMENTAL_CASH_ANIMATION")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(wallId)
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName("SUMMARY")
    EndTextCommandScaleformString()
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(main, "CREATE_INCREMENTAL_CASH_ANIMATION")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(wallId)
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName("SUMMARY")
    EndTextCommandScaleformString()
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(bg, "ADD_INCREMENTAL_CASH_WON_STEP")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(wallId)
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName("SUMMARY")
    EndTextCommandScaleformString()
    ScaleformMovieMethodAddParamInt(0)
    ScaleformMovieMethodAddParamInt(cash)
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName("TOTAL CASH EARNED")
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName("")
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName("")
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName("")
    EndTextCommandScaleformString()
    ScaleformMovieMethodAddParamInt(3)
    ScaleformMovieMethodAddParamInt(3)
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(fg, "ADD_INCREMENTAL_CASH_WON_STEP")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(wallId)
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName("SUMMARY")
    EndTextCommandScaleformString()
    ScaleformMovieMethodAddParamInt(0)
    ScaleformMovieMethodAddParamInt(cash)
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName("TOTAL CASH EARNED")
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName("")
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName("")
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName("")
    EndTextCommandScaleformString()
    ScaleformMovieMethodAddParamInt(3)
    ScaleformMovieMethodAddParamInt(3)
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(main, "ADD_INCREMENTAL_CASH_WON_STEP")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(wallId)
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName("SUMMARY")
    EndTextCommandScaleformString()
    ScaleformMovieMethodAddParamInt(0)
    ScaleformMovieMethodAddParamInt(cash)
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName("TOTAL CASH EARNED")
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName("")
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName("")
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName("")
    EndTextCommandScaleformString()
    ScaleformMovieMethodAddParamInt(3)
    ScaleformMovieMethodAddParamInt(3)
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(bg, "ADD_INCREMENTAL_CASH_ANIMATION_TO_WALL")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(wallId)
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName("SUMMARY")
    EndTextCommandScaleformString()
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(fg, "ADD_INCREMENTAL_CASH_ANIMATION_TO_WALL")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(wallId)
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName("SUMMARY")
    EndTextCommandScaleformString()
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(main, "ADD_INCREMENTAL_CASH_ANIMATION_TO_WALL")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(wallId)
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName("SUMMARY")
    EndTextCommandScaleformString()
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(bg, "ADD_JOB_POINTS_TO_WALL")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(wallId)
    EndTextCommandScaleformString()
    ScaleformMovieMethodAddParamInt(0)
    ScaleformMovieMethodAddParamInt(0)
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(fg, "ADD_JOB_POINTS_TO_WALL")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(wallId)
    EndTextCommandScaleformString()
    ScaleformMovieMethodAddParamInt(0)
    ScaleformMovieMethodAddParamInt(0)
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(main, "ADD_JOB_POINTS_TO_WALL")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(wallId)
    EndTextCommandScaleformString()
    ScaleformMovieMethodAddParamInt(0)
    ScaleformMovieMethodAddParamInt(0)
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(bg, "ADD_REP_POINTS_AND_RANK_BAR_TO_WALL")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(wallId)
    EndTextCommandScaleformString()
    ScaleformMovieMethodAddParamInt(rp) -- RP
    ScaleformMovieMethodAddParamInt(previousRp) -- Previous RP
    ScaleformMovieMethodAddParamInt(xpStartLimit) -- XP Start Limit
    ScaleformMovieMethodAddParamInt(xpEndLimit) -- XP End Limit
    ScaleformMovieMethodAddParamInt(playerLevel) -- Player Level
    ScaleformMovieMethodAddParamInt(playerLevel + 1) -- The next Player Level
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName("Rank") -- 'Rank' text goes however if its undefined it'll use the GXT entry of it instead
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName("Up") -- 'Up' text goes however if its undefined it'll use the GXT entry of it instead
    EndTextCommandScaleformString()
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(fg, "ADD_REP_POINTS_AND_RANK_BAR_TO_WALL")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(wallId)
    EndTextCommandScaleformString()
    ScaleformMovieMethodAddParamInt(rp) -- RP
    ScaleformMovieMethodAddParamInt(previousRp) -- Previous RP
    ScaleformMovieMethodAddParamInt(xpStartLimit) -- XP Start Limit
    ScaleformMovieMethodAddParamInt(xpEndLimit) -- XP End Limit
    ScaleformMovieMethodAddParamInt(playerLevel) -- Player Level
    ScaleformMovieMethodAddParamInt(playerLevel + 1) -- The next Player Level
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName("Rank") -- 'Rank' text goes however if its undefined it'll use the GXT entry of it instead
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName("Up") -- 'Up' text goes however if its undefined it'll use the GXT entry of it instead
    EndTextCommandScaleformString()
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(main, "ADD_REP_POINTS_AND_RANK_BAR_TO_WALL")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(wallId)
    EndTextCommandScaleformString()
    ScaleformMovieMethodAddParamInt(rp) -- RP
    ScaleformMovieMethodAddParamInt(previousRp) -- Previous RP
    ScaleformMovieMethodAddParamInt(xpStartLimit) -- XP Start Limit
    ScaleformMovieMethodAddParamInt(xpEndLimit) -- XP End Limit
    ScaleformMovieMethodAddParamInt(playerLevel) -- Player Level
    ScaleformMovieMethodAddParamInt(playerLevel + 1) -- The next Player Level
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName("Rank") 
    EndTextCommandScaleformString()
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName("Up")
    EndTextCommandScaleformString()
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(bg, "ADD_BACKGROUND_TO_WALL")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(wallId)
    EndTextCommandScaleformString()
    ScaleformMovieMethodAddParamInt(70) -- Alpha
    ScaleformMovieMethodAddParamInt(2) -- Texture Id
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(fg, "ADD_BACKGROUND_TO_WALL")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(wallId)
    EndTextCommandScaleformString()
    ScaleformMovieMethodAddParamInt(70) -- Alpha
    ScaleformMovieMethodAddParamInt(2) -- Texture Id
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(main, "ADD_BACKGROUND_TO_WALL")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(wallId)
    EndTextCommandScaleformString()
    ScaleformMovieMethodAddParamInt(70) -- Alpha
    ScaleformMovieMethodAddParamInt(2) -- Texture Id
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(bg, "SHOW_STAT_WALL")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(wallId)
    EndTextCommandScaleformString()
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(fg, "SHOW_STAT_WALL")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(wallId)
    EndTextCommandScaleformString()
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(main, "SHOW_STAT_WALL")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringPlayerName(wallId)
    EndTextCommandScaleformString()
    EndScaleformMovieMethod()

    local start = GetGameTimer()
    local time = 15000
    while GetGameTimer() < start + time do
        DrawScaleformMovieFullscreenMasked(bg, fg, 255, 255, 255, 255)
        DrawScaleformMovieFullscreen(main, 255, 255, 255, 255, 0)
        Citizen.Wait(0)
    end
    
    DeletePassedScaleforms()
    ReleaseNamedScriptAudioBank("HUD_321_GO")
    DisplayHud(true)
    DisplayRadar(true)
    TogglePausedRenderphases(true)
    TriggerClientEvent("cs:ShowPassed:onComplete", source)
end

exports('showPassed', showPassed)
