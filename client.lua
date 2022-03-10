--MADE BY DareToDoyle#3835--

ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj)
		ESX = obj
		end)
	end
end)

RegisterNetEvent('D2D-Armor:Light')
AddEventHandler('D2D-Armor:Light', function()
    local player = PlayerPedId()
	ESX.Streaming.RequestAnimDict('clothingtie', function()                                               -- Loads a animation Dictionary (catagory)
    TaskPlayAnim(PlayerPedId(), 'clothingtie', 'try_tie_negative_a', 8.0, 2.0, 1200, 48, 10, 0, 0, 0)     -- Plays a specific animation within the dictionary.
	Citizen.Wait(200)
	SendNUIMessage({sound = "bpvest", volume = 0.2})                                                      -- Plays a sound in the UI folder.
	SetPedComponentVariation(player, 9, 1, 0, 2)                                                         -- This means "ped, Clothing Type (bulletproof vest) , bulletproof vest 1 (/skin menu), bulletproof vest 2(/skin menu), unknown"
    SetPedArmour(player, 25)                                                                              -- Doesn't allow players to "stack" the armor.
end)
end)

RegisterNetEvent('D2D-Armor:Medium')
AddEventHandler('D2D-Armor:Medium', function()
    local player = PlayerPedId()
    ESX.Streaming.RequestAnimDict('clothingtie', function()
    TaskPlayAnim(PlayerPedId(), 'clothingtie', 'try_tie_negative_a', 8.0, 2.0, 1200, 48, 10, 0, 0, 0)
	Citizen.Wait(200)
	SendNUIMessage({sound = "bpvest", volume = 0.2}) 
    SetPedArmour(player, 50)
	SetPedComponentVariation(player, 9, 1, 1, 2) 
end)
end)

RegisterNetEvent('D2D-Armor:Heavy')
AddEventHandler('D2D-Armor:Heavy', function()
    local player = PlayerPedId()
    ESX.Streaming.RequestAnimDict('clothingtie', function()
    TaskPlayAnim(PlayerPedId(), 'clothingtie', 'try_tie_negative_a', 8.0, 2.0, 1200, 48, 10, 0, 0, 0)
	Citizen.Wait(200)
	SendNUIMessage({sound = "bpvest", volume = 0.2})
    SetPedArmour(player, 75)
	SetPedComponentVariation(player, 9, 1, 2, 2) 
end)
end)

RegisterNetEvent('D2D-Armor:Military')
AddEventHandler('D2D-Armor:Military', function()
    local player = PlayerPedId()
    ESX.Streaming.RequestAnimDict('clothingtie', function()
    TaskPlayAnim(PlayerPedId(), 'clothingtie', 'try_tie_negative_a', 8.0, 2.0, 1200, 48, 10, 0, 0, 0)
	Citizen.Wait(200)
	SendNUIMessage({sound = "bpvest", volume = 0.2})
    SetPedArmour(player, 100)
	SetPedComponentVariation(player, 9, 1, 3, 2) 
end)
end)

Citizen.CreateThread(function()                       -- Checks if players are dead to remove their armour (You can increase the Citizen.Wait time for 
	alreadyDead = false                               -- better performance but it will take longer to check if players are dead).
    while true do
        Citizen.Wait(50)
		local playerPed = PlayerPedId()
		if IsEntityDead(playerPed) and not alreadyDead then
		SetPedComponentVariation(playerPed, 9, 0, 0, 0)
		end
		end
		end)


--MADE BY DareToDoyle#3835--
