function CallFunction(scaleformHandle, methodName, args)
    BeginScaleformMovieMethod(scaleformHandle, methodName)
    pushArgs(args)
    EndScaleformMovieMethod()
end

function pushArgs(args)
    if type(args) ~= "table" then
        print("Error: args is not a table!")
        return
    end

    for _, obj in ipairs(args) do
        print("Processing arg:", obj, "Type:", type(obj)) -- Debugging

        if type(obj) == "number" then
            if math.type(obj) == "integer" then
                ScaleformMovieMethodAddParamInt(obj)
            else
                ScaleformMovieMethodAddParamFloat(obj)
            end
        elseif type(obj) == "boolean" then
            ScaleformMovieMethodAddParamBool(obj)
        elseif type(obj) == "string" then
            BeginTextCommandScaleformString("STRING")
            AddTextComponentSubstringPlayerName(obj)
            EndTextCommandScaleformString()
        end
    end
end