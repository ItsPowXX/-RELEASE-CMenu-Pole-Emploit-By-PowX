ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterServerEvent('powx_JB:setJobMineur')
AddEventHandler('powx_JB:setJobMineur', function(job)

	local _source = source

	local xPlayer = ESX.GetPlayerFromId(_source)

	xPlayer.setJob("miner", 0)	

end)

RegisterServerEvent('powx_JB:setJobBûcheron')
AddEventHandler('powx_JB:setJobBûcheron', function(job)

	local _source = source

	local xPlayer = ESX.GetPlayerFromId(_source)

	xPlayer.setJob("lumberjack", 0)	

end)

RegisterServerEvent('powx_JB:setJobAbatteur')
AddEventHandler('powx_JB:setJobAbatteur', function(job)

	local _source = source

	local xPlayer = ESX.GetPlayerFromId(_source)

	xPlayer.setJob("slaughterer", 0)	

end)

RegisterServerEvent('powx_JB:setJobCouturier')
AddEventHandler('powx_JB:setJobCouturier', function(job)

	local _source = source

	local xPlayer = ESX.GetPlayerFromId(_source)

	xPlayer.setJob("tailor", 0)	

end)

RegisterServerEvent('powx_JB:setJobChômeur')
AddEventHandler('powx_JB:setJobChômeur', function(job)

	local _source = source

	local xPlayer = ESX.GetPlayerFromId(_source)

	xPlayer.setJob("unemployed", 0)	

end)