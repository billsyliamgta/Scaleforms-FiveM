# Celebration

Example: ```Citizen.CreateThread(function ()
    while true do
        if IsControlJustPressed(0, 51) then
        TriggerEvent("celeb:ShowPassed", "", "ROUND WON", "HUD_COLOUR_BLACK", 50000, 1000, 0, 1000, 1000, 1, 0)
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
        TriggerEvent("midsizedMessage:Show", "You can change the colour", "Pretty coloursss", 9, 0.2, 0)
    end
        Citizen.Wait(0)
    end
end)```

![](https://raw.githubusercontent.com/billsyliamgta/Scaleforms-FiveM/refs/heads/main/midsized_message_screen.jpg)

# Rank Bar

Set the Rank: ```TriggerEvent("rankBar:SetPlayerRank", 9)```
Set the XP: ```TriggerEvent("rankBar:SetPlayerXP", 15000)```
Add XP: ```TriggerEvent("rankBar:AddXP", 1000)```
Remove XP: ```TriggerEvent("rankBar:RemoveXP", 1000)```

![](https://raw.githubusercontent.com/billsyliamgta/Scaleforms-FiveM/refs/heads/main/rankbar_screen.jpg)

# Drilling

Example: ```Citizen.CreateThread(function ()
    while true do
        if IsControlJustPressed(0, 51) then
        TriggerEvent("drilling:SetVisible", true)
    end
        Citizen.Wait(0)
    end
end)```

![](https://raw.githubusercontent.com/billsyliamgta/Scaleforms-FiveM/refs/heads/main/drilling_screen.jpg)
