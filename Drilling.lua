local handle

local speed

local depth

local pos

local temp

function LoadScaleform()
    print("CLIENT: Requesting Drilling Scaleform..")
    local start = GetGameTimer()
    local time = 5000
    handle = RequestScaleformMovie("DRILLING")
    while not HasScaleformMovieLoaded(handle) do
        if GetGameTimer() > start + time then
            print("CLIENT: Timed out while loading Scaleform Movie 'DRILLING'.")
        end
        Citizen.Wait(0)
    end
    print("CLIENT: Loaded Drilling Scaleform.")
end
end

function DeleteScaleform()
    if HasScaleformMovieLoaded(handle) then
        SetScaleformMovieAsNoLongerNeeded(handle)
        handle = 0
    end

    print("CLIENT: Cleaned up Drilling Scaleform.")
end

function Draw()
if HasScaleformMovieLoaded(handle) then
DrawScaleformMovieFullscreen(handle, 255, 255, 255, 255, 0)
end
end