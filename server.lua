--MADE BY DareToDoyle#3835--

ESX                = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('lightarmour', function(source)

	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    xPlayer.removeInventoryItem('lightarmour', 1)
	TriggerClientEvent('D2D-Armor:Light', source)
	
end)

ESX.RegisterUsableItem('mediumarmour', function(source)

	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    xPlayer.removeInventoryItem('mediumarmour', 1)
	TriggerClientEvent('D2D-Armor:Medium', source)
	
end)

ESX.RegisterUsableItem('heavyarmour', function(source)

	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    xPlayer.removeInventoryItem('heavyarmour', 1)
	TriggerClientEvent('D2D-Armor:Heavy', source)
	
end)

ESX.RegisterUsableItem('militaryarmour', function(source)

	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    xPlayer.removeInventoryItem('militaryarmour', 1)
	TriggerClientEvent('D2D-Armor:Military', source)
	
end)


--MADE BY DareToDoyle#3835--
