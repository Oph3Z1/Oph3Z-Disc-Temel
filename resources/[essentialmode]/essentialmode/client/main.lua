----------------------------------------------
--Edit By -Oph3Z
----------------------------------------------

-- Bu aşağadaki kodu açarsan karakter yüklenmez. (Eğer çoklu karakter sistemi kullanmıyorsan aşağda olan kodu aç By -Oph3Z)
--[[Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		if NetworkIsSessionStarted() then
			TriggerServerEvent('es:firstJoinProper')
			TriggerEvent('es:allowedToSpawn')
			return
		end
	end
end)--]] 

local oldPos

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
		local pos = GetEntityCoords(PlayerPedId())

		if(oldPos ~= pos)then
			TriggerServerEvent('es:updatePositions', pos.x, pos.y, pos.z)
			oldPos = pos
		end
	end
end)

local myDecorators = {}

RegisterNetEvent("es:setPlayerDecorator")
AddEventHandler("es:setPlayerDecorator", function(key, value, doNow)
	myDecorators[key] = value
	DecorRegister(key, 3)

	if(doNow)then
		DecorSetInt(PlayerPedId(), key, value)
	end
end)

AddEventHandler("playerSpawned", function()
	for k,v in pairs(myDecorators)do
		DecorSetInt(PlayerPedId(), k, v)
	end

	TriggerServerEvent('playerSpawn')
end)