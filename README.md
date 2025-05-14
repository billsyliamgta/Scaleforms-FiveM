# Celebration Scaleforms

Example: ```Citizen.CreateThread(function ()
    while true do
        if IsControlJustPressed(0, 51) then
        TriggerEvent("cs:ShowPassed", "", "ROUND WON", "HUD_COLOUR_BLACK", 50000, 1000, 0, 1000, 1000, 1, 0)
    end
        Citizen.Wait(0)
    end
end)```

![](https://raw.githubusercontent.com/billsyliamgta/Scaleforms-FiveM/refs/heads/main/celeb_passed_screen.jpg)

![](https://raw.githubusercontent.com/billsyliamgta/Scaleforms-FiveM/refs/heads/main/celeb_intro_screen.jpg)

# Midsized Message

Example: ```Citizen.CreateThread(function ()
    while true do
        if IsControlJustPressed(0, 51) then
        TriggerEvent("ms:Show", "You can change the colour", "Pretty coloursss", 9, 0.2, 0)
    end
        Citizen.Wait(0)
    end
end)```

![](https://raw.githubusercontent.com/billsyliamgta/Scaleforms-FiveM/refs/heads/main/midsized_message_screen.jpg)
