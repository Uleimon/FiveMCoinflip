--[[
Erweiterung
else
    --Kartennummern
    ShowNotification('Die Münze ist auf ~p~Kopf gelandet') --Das in den Klammern in das umschreiben was ihr wollt.
--]]

RegisterCommand('coinflip', function(source, args, rawCommand)

    --txt
    ShowNotification('Münze wird geworfen...')
    
    --warten
    Citizen.Wait(3000)

    local randomNumber = math.random(1, 100)
    print(randomNumber)

    if randomNumber <= 50 then
        --kopf
        ShowNotification('Die Münze ist auf ~p~Kopf gelandet')
    else
        --zahl
        ShowNotification('Die Münze ist auf ~p~Zahl gelandet')
    end
        --kopf/zahl

end)



function ShowNotification(text)
    SetNotificationTextEntry('STRING')
       AddTextComponentString(text)
    DrawNotification(false, true)
   end