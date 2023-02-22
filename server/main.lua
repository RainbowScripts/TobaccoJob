ESX = nil
local GetCurrentResourceName = GetCurrentResourceName()
local ox_inventory = exports.ox_inventory
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



RegisterServerEvent('checkfiveguard')
AddEventHandler('checkfiveguard', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local _source = source
    local item = xPlayer.getInventoryItem(Config.item1)

    if item.count > 10 then
    TriggerClientEvent('esx:showNotification', _source, 'Nie możesz już więcej zebrać')
    else

        xPlayer.addInventoryItem(Config.item1, 1)
    end

end)


RegisterServerEvent('triggersafeevent')
AddEventHandler('triggersafeevent', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local _source = source
    local item = xPlayer.getInventoryItem(Config.item1)
    local item2 = xPlayer.getInventoryItem(Config.item2)

    if item.count < 1 then 
        TriggerClientEvent('esx:showNotification', _source, 'Nie posiadasz Tytoniu')
    else
    if item2.count > 10 then
    TriggerClientEvent('esx:showNotification', _source, 'Nie możesz już więcej zebrać')
    else
        xPlayer.removeInventoryItem(Config.item1, 1)
        xPlayer.addInventoryItem(Config.item2, 1)
    end
    end
end)


RegisterServerEvent('triggersafeevent:nigger')
AddEventHandler('triggersafeevent:nigger', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local _source = source
    local item = xPlayer.getInventoryItem(Config.item2)
    local item2 = xPlayer.getInventoryItem(Config.item3)

    if item.count <= 1 then 
        TriggerClientEvent('esx:showNotification', _source, 'Nie posiadasz Papierosów')
    else
    if item2.count > 5 then
    TriggerClientEvent('esx:showNotification', _source, 'Nie możesz już więcej zebrać')
    else
        xPlayer.removeInventoryItem(Config.item2, 2)
        xPlayer.addInventoryItem(Config.item3, 1)
    end
    end
end)


RegisterServerEvent('fiveguard:top1')
AddEventHandler('fiveguard:top1', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local _source = source
    local item = xPlayer.getInventoryItem(Config.item3)
    local randomprice = math.random(Config.moneyacountmin, Config.moneyacountmax)

    if item.count < 1 then 
        TriggerClientEvent('esx:showNotification', _source, 'Nie posiadasz Paczek')
    else
        xPlayer.removeInventoryItem(Config.item3, 1)
        xPlayer.addInventoryItem('money', randomprice)
    end
end)


local stashes = {
	{
		-- Police stash
		id = 'tobaccofactory',
		label = 'Szafka Tobacco',
		slots = 100,
		weight = 300000,
		owner = false,
    groups = {['tobacco'] = 0}
	},
}

AddEventHandler('onServerResourceStart', function(resourceName)
	if resourceName == 'ox_inventory' or resourceName == GetCurrentResourceName then
		for i=1, #stashes do
			local stash = stashes[i]
			ox_inventory:RegisterStash(stash.id, stash.label, stash.slots, stash.weight, stash.owner, stash.jobs)
		end
	end
end)

-- if Config.MaxInService ~= -1 then
--   TriggerEvent('esx_service:activateService', 'tobacco', Config.MaxInService)
-- end

TriggerEvent('esx_phone:registerNumber', 'tobacco', 'Tobacco Factory', true, true)
TriggerEvent('esx_society:registerSociety', 'tobacco', 'Tobacco Factory', 'society_tobacco', 'society_tobacco', 'society_tobacco', {type = 'private'})
