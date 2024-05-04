local fasz = false



--szukseges: esx_stauts



print("szia,ezt a scriptet ktomi alkotta, van benne hiba meg igenytelen, de én szeretlek téged<3")





Citizen.CreateThread(function()
    while true do
        Citizen.Wait(20000) -- mennyi időnkent checkelje ha nagyon leszeved fos lesz az effekt
      
        TriggerEvent('esx_status:getStatus', 'hunger', function(status)
            if status.val < 50000 then
                local plyPed = GetPlayerPed(-1)
                 exports['okokNotify']:Alert("Rendszer", "Éhes vagy!", 9000, 'warning')
      
                -- print("geci")
                
            else

            --     SetPedIsDrunk(plyPed, true)
             --    AnimpostfxPlay("DrugsMichaelAliensFight", 10000001, true)
             --    ShakeGameplayCam("DRUNK_SHAKE", 3.0)
         --         exports["esx_notify"]:Notify("info", 3000, "Go Eat") -- You can change it to your message
              --    exports['okokNotify']:Alert("fs", "Éhes vagy!", 5000, 'info')
            end
        end)

        TriggerEvent('esx_status:getStatus', 'thirst', function(status)
            if status.val < 50000 then
                local plyPed = GetPlayerPed(-1)
                exports['okokNotify']:Alert("Rendszer", "Szomjas vagy!", 9000, 'warning') 
             --   SetPedIsDrunk(plyPed, true)
         
    else

        
               -- ShakeGameplayCam("DRUNK_SHAKE", 3.0)
              --  AnimpostfxPlay("DrugsMichaelAliensFight", 10000001, true)
            end
        end)

        TriggerEvent('esx_status:getStatus', 'stress', function(status)
            if status.val > 100000 then
            
                exports['okokNotify']:Alert("Rendszer", "Stresszes vagy!", 6000, 'warning')
            end
        end)
    end
end)


