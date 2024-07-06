local fasz = false

local ehseg = 50000 -- Ha ennél az értéknél kisebb az éhséged jelez
local szomj = 50000 -- Ha ennél az értéknél kisebb a(z) szomjusagod jelez
local stressz = 50000  -- Ha ennél az értéknél kisebb a(z) stresszed jelez

--szukseges: esx_stauts


print("by ktomi - Éhség script")


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(20000) -- mennyi időnkent checkelje ha nagyon leszeved fos lesz az effekt
      
        TriggerEvent('esx_status:getStatus', 'hunger', function(status)
            if status.val < ehseg then
                local plyPed = GetPlayerPed(-1)
                 exports['okokNotify']:Alert("Rendszer", "Éhes vagy!", 9000, 'warning')
      
                -- print("geci")

            end
        end)

        TriggerEvent('esx_status:getStatus', 'thirst', function(status)
            if status.val < szomj then
                local plyPed = GetPlayerPed(-1)
                exports['okokNotify']:Alert("Rendszer", "Szomjas vagy!", 9000, 'warning')          
            end
        end)

        TriggerEvent('esx_status:getStatus', 'stress', function(status)
            if status.val > stressz then
                exports['okokNotify']:Alert("Rendszer", "Stresszes vagy!", 6000, 'warning')
            end
        end)
    end
end)


