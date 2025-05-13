local handle

function LoadScaleform()
    print("CLIENT: Requesting Midsized Message Scaleforms..")
    local start = GetGameTimer()
    local time = 5000
    handle = RequestScaleformMovie("MIDSIZED_MESSAGE")
    while not HasScaleformMovieLoaded(handle) do
        if GetGameTimer() > start + time then
            print("CLIENT: Timed out while loading Scaleform Movie 'MIDSIZED_MESSAGE'.")
        end
        Citizen.Wait(0)
    end
      print("CLIENT: Loaded Midsized Message Scaleform.")
end

function DeleteScaleform()
    if HasScaleformMovieLoaded(handle) then
        SetScaleformMovieAsNoLongerNeeded(handle)
        handle = 0
    end

    print("CLIENT: Cleaned up Midsized Message Scaleform.")
end

RegisterNetEvent("ms:Show")
AddEventHandler("ms:Show", function (title, subtitle, color, speed, transOutColor)
    Show(title, subtitle, color, speed, transOutColor)
end)

function Show(title, subtitle, color, speed, transOutColor)
SetAudioFlag("LoadMPData", true)
LoadScaleform()
PlaySoundFrontend(-1, "Shard_Appear", "GTAO_FM_Events_Soundset", false)
BeginScaleformMovieMethod(handle, "SHOW_SHARD_MIDSIZED_MESSAGE")
BeginTextCommandScaleformString("STRING")
AddTextComponentSubstringPlayerName(title)
EndTextCommandScaleformString()
BeginTextCommandScaleformString("STRING")
AddTextComponentSubstringPlayerName(subtitle)
EndTextCommandScaleformString()
ScaleformMovieMethodAddParamInt(color)
ScaleformMovieMethodAddParamBool(false)
ScaleformMovieMethodAddParamBool(true)
EndScaleformMovieMethod()
local start = GetGameTimer()
local time = 8000
while GetGameTimer() < start + time do
    DrawScaleformMovieFullscreen(handle, 255, 255, 255, 255, 0)
    Citizen.Wait(0)
end
PlaySoundFrontend(-1, "Shard_Disappear", "GTAO_FM_Events_Soundset", false)
BeginScaleformMovieMethod(handle, "SHARD_ANIM_OUT")
ScaleformMovieMethodAddParamInt(transOutColor)
ScaleformMovieMethodAddParamFloat(speed)
EndScaleformMovieMethod()
start = GetGameTimer()
time = math.floor(speed * 10000)
while GetGameTimer() < start + time do
    DrawScaleformMovieFullscreen(handle, 255, 255, 255, 255, 0)
    Citizen.Wait(0)
end
DeleteScaleform()
end

exports('ms:Show', Show)