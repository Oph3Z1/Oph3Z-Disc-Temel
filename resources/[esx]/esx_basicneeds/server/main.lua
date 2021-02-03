ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('bread', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('bread', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_status:remove', source, 'stress', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source, 'prop_cs_burger_01')
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Ekmek Yedin',  length = 3000})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'yemek', text = 'Stresiniz Azaldı',  length = 5000})
end)

ESX.RegisterUsableItem('water', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('water', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source, 'prop_ld_flow_bottle')
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Su İçtiniz.',  length = 3000})
end)

ESX.RegisterUsableItem('bolchips', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('bolchips', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
	TriggerClientEvent('esx_status:remove', source, 'stress', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source, 'v_ret_ml_chips1')
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Cips yediniz.',  length = 3000})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'yemek', text = 'Stresiniz Azaldı',  length = 5000})
end)
ESX.RegisterUsableItem('energy', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('energy', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 100000)
	TriggerClientEvent('esx_status:remove', source, 'stress', 100000)
	TriggerClientEvent('esx_basicneeds:onDrink', source, 'prop_ld_can_01')
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Enerji İcecegi İçtiniz.',  length = 3000})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'yemek', text = 'Stresiniz Azaldı',  length = 5000})
end)

ESX.RegisterUsableItem('milk', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('milk', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_status:remove', source, 'stress', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source, 'prop_cs_milk_01')
	--TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = _U('used_water')})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'yemek', text = 'Afiyet Olsun.',  length = 3000})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Stressin Azaldı',  length = 3000})
end)

ESX.RegisterUsableItem('cocacola', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('cocacola', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_status:remove', source, 'stress', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source, 'prop_ecola_can')
	--TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = _U('used_water')})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'yemek', text = 'Afiyet Olsun.',  length = 3000})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Stressin Azaldı',  length = 3000})
end)


ESX.RegisterUsableItem('chocolate', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('chocolate', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 100000)
	TriggerClientEvent('esx_status:remove', source, 'stress', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source, 'prop_choc_ego', 0.12, 0.035, 0.009, -30.0, -240.0, -120.0)
	--TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = _U('used_water')})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'yemek', text = 'Afiyet Olsun.',  length = 3000})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Stressin Azaldı',  length = 3000})
end)

ESX.RegisterUsableItem('dondurma', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('dondurma', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_status:remove', source, 'thirst', 100000)
	TriggerClientEvent('esx_status:remove', source, 'stress', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source, 'prop_choc_ego', 0.12, 0.035, 0.009, -30.0, -240.0, -120.0)
	--TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = _U('used_water')})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'yemek', text = 'Afiyet Olsun.',  length = 3000})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Stressin Azaldı',  length = 3000})
end)

ESX.RegisterUsableItem('sandwich', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('sandwich', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_status:remove', source, 'stress', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source, 'prop_sandwich_01', 0.12, 0.028, 0.03, -240.0, -180.0, 0.0)
	--TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = _U('used_water')})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'yemek', text = 'Afiyet Olsun.',  length = 3000})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Stressin Azaldı',  length = 3000})
end)

ESX.RegisterUsableItem('cupcake', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('cupcake', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_status:remove', source, 'stress', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source, 'ng_proc_food_ornge1a', 0.12, 0.045, 0.06, 45.0, 175.0, 0.0)
	--TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = _U('used_water')})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'yemek', text = 'Afiyet Olsun.',  length = 3000})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Stressin Azaldı',  length = 3000})
end)

ESX.RegisterUsableItem('icetea', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('icetea', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_status:remove', source, 'stress', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source, 'prop_ld_can_01')
	--TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = _U('used_water')})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'yemek', text = 'Afiyet Olsun.',  length = 3000})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Stressin Azaldı',  length = 3000})
end)

ESX.RegisterUsableItem('donut', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('donut', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_status:remove', source, 'stress', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source, 'prop_amb_donut') --Drink
	--TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = _U('used_water')})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'yemek', text = 'Afiyet Olsun.',  length = 3000})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Stressin Azaldı',  length = 3000})
end)

ESX.RegisterUsableItem('tavukburger', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('tavukburger', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_status:remove', source, 'stress', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source, 'prop_cs_burger_01') --Drink
	--TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = _U('used_water')})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'yemek', text = 'Afiyet Olsun.',  length = 3000})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Stressin Azaldı',  length = 3000})
end)

ESX.RegisterUsableItem('burger', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('burger', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_status:remove', source, 'stress', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source, 'prop_cs_burger_01') --Drink = Susuzluk , Eat = Yemek
	--TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = _U('used_water')})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'yemek', text = 'Afiyet Olsun.',  length = 3000})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Stressin Azaldı',  length = 3000})
end)

ESX.RegisterUsableItem('tacos', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('tacos', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_status:remove', source, 'stress', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source, 'prop_cs_burger_01') --Drink = Susuzluk , Eat = Yemek
	--TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = _U('used_water')})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'yemek', text = 'Afiyet Olsun.',  length = 3000})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Stressin Azaldı',  length = 3000})
end)

ESX.RegisterUsableItem('uckatliburger', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('uckatliburger', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_status:remove', source, 'stress', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source, 'prop_cs_burger_01') --Drink = Susuzluk , Eat = Yemek
	--TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = _U('used_water')})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'yemek', text = 'Afiyet Olsun.',  length = 3000})
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Stressin Azaldı',  length = 3000})
end)

ESX.RegisterUsableItem('pizza', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('pizza', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_status:remove', source, 'stress', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source, 'v_res_tt_pizzaplate') --Drink = Susuzluk , Eat = Yemek
	--TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = _U('used_water')})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'yemek', text = 'Afiyet Olsun.',  length = 3000})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Stressin Azaldı',  length = 3000})
end)

ESX.RegisterUsableItem('kizartmalipatates', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('kizartmalipatates', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_status:remove', source, 'stress', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source, 'prop_food_bs_chips') --Drink = Susuzluk , Eat = Yemek
	--TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = _U('used_water')})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'yemek', text = 'Afiyet Olsun.',  length = 3000})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Stressin Azaldı',  length = 3000})
end)

ESX.RegisterUsableItem('soda', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('soda', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_status:remove', source, 'stress', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source, 'prop_ld_can_01') --Drink = Susuzluk , Eat = Yemek
	--TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = _U('used_water')})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'yemek', text = 'Afiyet Olsun.',  length = 3000})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Stressin Azaldı',  length = 3000})
end)

ESX.RegisterUsableItem('fanta', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('fanta', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_status:remove', source, 'stress', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source, 'prop_ld_can_01') --Drink = Susuzluk , Eat = Yemek
	--TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = _U('used_water')})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'yemek', text = 'Afiyet Olsun.',  length = 3000})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Stressin Azaldı',  length = 3000})
end)

ESX.RegisterUsableItem('coffee', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('coffee', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 150000)
	TriggerClientEvent('esx_basicneeds:onDrink', source, 'prop_fib_coffee')
	TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'inform', text = 'Kahve içiyorsun.'})
end)

ESX.RegisterUsableItem('sprite', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('sprite', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_status:remove', source, 'stress', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source, 'prop_ld_can_01') --Drink = Susuzluk , Eat = Yemek
	--TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = _U('used_water')})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'yemek', text = 'Afiyet Olsun.',  length = 3000})
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Stressin Azaldı',  length = 3000})
end)

ESX.RegisterUsableItem('wine', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('wine', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 50000)
	TriggerClientEvent('esx_basicneeds:onDrinkAlcohol', source, 'prop_wine_bot_01', 0.008, -0.02, -0.3, 90.0, 270.0, 90.0)
	TriggerClientEvent('esx_basicneeds:addDrunkLevel', source, 10)
	TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'inform', text = 'Şarap içiyorsun.'})
end)

ESX.RegisterUsableItem('beer', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('beer', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 50000)
	TriggerClientEvent('esx_basicneeds:onDrinkAlcohol', source, 'prop_amb_beer_bottle', 0.12, 0.008, 0.03, 240.0, -60.0, 0.0)
	TriggerClientEvent('esx_basicneeds:addDrunkLevel', source, 5)
	TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'inform', text = 'Şarap içiyorsun.'})
end)


ESX.RegisterUsableItem('champagne', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('champagne', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 50000)
	TriggerClientEvent('esx_basicneeds:onDrinkAlcohol', source, 'prop_wine_white', 0.008, -0.02, -0.3, 90.0, 270.0, 90.0)
	TriggerClientEvent('esx_basicneeds:addDrunkLevel', source, 20)
	TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'inform', text = 'Şampanya içiyorsun.'})
end)

ESX.RegisterUsableItem('vodka', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('vodka', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 50000)
	TriggerClientEvent('esx_basicneeds:onDrinkAlcohol', source, 'prop_vodka_bottle', 0.008, -0.02, -0.3, 90.0, 270.0, 90.0)
	TriggerClientEvent('esx_basicneeds:addDrunkLevel', source, 25)
	TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'inform', text = 'Votka içiyorsun.'})
end)

ESX.RegisterUsableItem('tequila', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('tequila', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 50000)
	TriggerClientEvent('esx_basicneeds:onDrinkAlcohol', source, 'prop_tequila_bottle', 0.008, -0.02, -0.3, 90.0, 270.0, 90.0)
	TriggerClientEvent('esx_basicneeds:addDrunkLevel', source, 15)
	TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'inform', text = 'Tekila içiyorsun.'})
end)

ESX.RegisterUsableItem('rum', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('rum', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 50000)
	TriggerClientEvent('esx_basicneeds:onDrinkAlcohol', source, 'prop_rum_bottle', 0.008, -0.02, -0.3, 90.0, 270.0, 90.0)
	TriggerClientEvent('esx_basicneeds:addDrunkLevel', source, 15)
	TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'inform', text = 'Rom içiyorsun.'})
end)

ESX.RegisterUsableItem('whisky', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('whisky', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 50000)
	TriggerClientEvent('esx_basicneeds:onDrinkAlcohol', source, 'prop_cs_whiskey_bottle', 0.008, -0.02, -0.2, 90.0, 270.0, 90.0)
	TriggerClientEvent('esx_basicneeds:addDrunkLevel', source, 25)
	TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'inform', text = 'Viski içiyorsun.'})
end)

--[[ESX.RegisterUsableItem('agrikesici', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('agrikesici', 1)

	TriggerClientEvent('esx_status:remove', source, 'stress', 100000) -- %10
	TriggerClientEvent('esx_basicneeds:onPill', source)
	TriggerClientEvent('mythic_notify:client:SendAlert', xPlayer.source, { type = 'inform', text = 'Oxy içiyorsun.'})
end)--]]


TriggerEvent('es:addGroupCommand', 'heal', 'admin', function(source, args, user)
	-- heal another player - don't heal source
	if args[1] then
		local playerId = tonumber(args[1])

		-- is the argument a number?
		if playerId then
			-- is the number a valid player?
			if GetPlayerName(playerId) then
				print(('esx_basicneeds: %s healed %s'):format(GetPlayerIdentifier(source, 0), GetPlayerIdentifier(playerId, 0)))
				TriggerClientEvent('esx_basicneeds:healPlayer', playerId)
				TriggerClientEvent('chat:addMessage', source, { args = { '^5HEAL', 'Kişiyi iyileştirdin.' } })
			else
				TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Oyuncu aktif değil.' } })
			end
		else
			TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Yanlış id.' } })
		end
	else
		print(('esx_basicneeds: %s yenilendi'):format(GetPlayerIdentifier(source, 0)))
		TriggerClientEvent('esx_basicneeds:healPlayer', source)
	end
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Bunu yapmak için yetkin yok.' } })
end, {help = 'Heal a player, or yourself - restores thirst, hunger and health.', params = {{name = 'playerId', help = '(optional) player id'}}})