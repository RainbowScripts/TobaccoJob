ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)


local PlayerData                = {}
local JobBlips                = {}
local moznazbierac = true

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
	-- RefreshBussHUD()
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
	ESX.PlayerLoaded = true
	-- RefreshBussHUD()
end)

RegisterNetEvent('Zbieranietytoniu', function()
	moznazbierac = false
	animzbieranie()
	TriggerServerEvent('checkfiveguard')
    moznazbierac = true
end)

RegisterNetEvent('przerobkatytoniu', function()
	moznazbierac = false
	animprzerabianie()
	TriggerServerEvent('triggersafeevent')
    moznazbierac = true
end)

RegisterNetEvent('pakowaniepapierosow', function()
	moznazbierac = false
	animpakowanie()
	TriggerServerEvent('triggersafeevent:nigger')
    moznazbierac = true
end)


RegisterNetEvent('sprzedawaniepaczek', function()
	moznazbierac = false
	animrozmowa()
	TriggerServerEvent('fiveguard:top1')
    moznazbierac = true
end)


RegisterNetEvent('wyciagnijpojazd:tobacco')
AddEventHandler('wyciagnijpojazd:tobacco', function()
	ESX.Game.SpawnVehicle(Config.CarName, Config.Autowyciaganie.VehicleSpawner.Pos, Config.Autowyciaganie.VehicleSpawner.Pos.h, function(vehicle)
		local playerPed = PlayerPedId()
		TaskWarpPedIntoVehicle(playerPed, vehicle, -1)
	end)
end)	
	
	
RegisterNetEvent('nieznajomy-zwrocpojazd')
AddEventHandler('nieznajomy-zwrocpojazd', function()	
	zracaniepojazdu()
end)



Citizen.CreateThread(function()
    exports.qtarget:AddBoxZone("tyton1", vector3(2924.27, 4677.57, 50.03), 1.7, 1.7, {
		name="tyton1",
		heading=50,
--	   debugPoly=true,
		minZ=48.83,
		maxZ=52.83    
        }, {
        options = {
            {
                event = "Zbieranietytoniu",  -- trigger eventa client side albo neteventa
                icon = "fab fa-pagelines", -- ikonka na targecie mozna wziac ja z https://fontawesome.com 
                label = "Zbierz Tytoń", -- Nazwa na targecie
                job = "tobacco",
	            canInteract = function()
		        return moznazbierac
	            end,
            }
        },
        distance = 3.0 -- dystans
        })


        exports.qtarget:AddBoxZone("tyton2", vector3(2925.16, 4672.75, 49.44), 1.7, 1.7, {
			name="tyton2",
			heading=15,
	--		debugPoly=true,
			minZ=48.24,
			maxZ=52.24  
            }, {
            options = {
                {
                    event = "Zbieranietytoniu",  -- trigger eventa client side albo neteventa
                    icon = "fab fa-pagelines", -- ikonka na targecie mozna wziac ja z https://fontawesome.com 
                    label = "Zbierz Tytoń", -- Nazwa na targecie
                    job = "tobacco",
            	    canInteract = function()
		            return moznazbierac
		            end,
                }
            },
            distance = 3.0 -- dystans
            }) 
            
            
			exports.qtarget:AddBoxZone("tyton3", vector3(2929.36, 4673.55, 49.03), 1.7, 1.7, {
				name="tyton3",
				heading=15,
	--			debugPoly=true,
				minZ=48.03,
				maxZ=52.03  
				}, {
				options = {
					{
						event = "Zbieranietytoniu",  -- trigger eventa client side albo neteventa
						icon = "fab fa-pagelines", -- ikonka na targecie mozna wziac ja z https://fontawesome.com 
						label = "Zbierz Tytoń", -- Nazwa na targecie
						job = "tobacco",
	                	canInteract = function()
		            	return moznazbierac
             			end,
					}
				},
				distance = 3.0 -- dystans
				}) 
     

				exports.qtarget:AddBoxZone("tyton4", vector3(2928.57, 4678.28, 49.18), 1.7, 1.7, {
					name="tyton4",
					heading=20,
	--				debugPoly=true,
					minZ=48.78,
					maxZ=52.78  
					}, {
					options = {
						{
							event = "Zbieranietytoniu",  -- trigger eventa client side albo neteventa
							icon = "fab fa-pagelines", -- ikonka na targecie mozna wziac ja z https://fontawesome.com 
							label = "Zbierz Tytoń", -- Nazwa na targecie
							job = "tobacco",
	                     	canInteract = function()
		                	return moznazbierac
	           	        	end,
						}
					},
					distance = 3.0 -- dystans
					}) 

					exports.qtarget:AddBoxZone("tyton5", vector3(2926.12, 4667.91, 48.93), 1.7, 1.7, {
						name="tyton5",
						heading=0,
		--				debugPoly=true,
						minZ=47.93,
						maxZ=51.93  
						}, {
						options = {
							{
								event = "Zbieranietytoniu",  -- trigger eventa client side albo neteventa
								icon = "fab fa-pagelines", -- ikonka na targecie mozna wziac ja z https://fontawesome.com 
								label = "Zbierz Tytoń", -- Nazwa na targecie
								job = "tobacco",
								 canInteract = function()
								return moznazbierac
								   end,
							}
						},
						distance = 3.0 -- dystans
						}) 

						exports.qtarget:AddBoxZone("tyton6", vector3(2930.54, 4668.71, 48.97), 1.7, 1.5, {
							name="tyton6",
							heading=15,
		--					debugPoly=true,
							minZ=47.57,
							maxZ=51.57  
							}, {
							options = {
								{
									event = "Zbieranietytoniu",  -- trigger eventa client side albo neteventa
									icon = "fab fa-pagelines", -- ikonka na targecie mozna wziac ja z https://fontawesome.com 
									label = "Zbierz Tytoń", -- Nazwa na targecie
									job = "tobacco",
									 canInteract = function()
									return moznazbierac
									   end,
								}
							},
							distance = 3.0 -- dystans
							}) 

						exports.qtarget:AddBoxZone("tyton7", vector3(2927.14, 4682.88, 50.32), 1.7, 1.7, {
							name="tyton7",
							heading=0,
		--					debugPoly=true,
							minZ=48.92,
							maxZ=52.92 
							}, {
				    		options = {
									{
										event = "Zbieranietytoniu",  -- trigger eventa client side albo neteventa
										icon = "fab fa-pagelines", -- ikonka na targecie mozna wziac ja z https://fontawesome.com 
										label = "Zbierz Tytoń", -- Nazwa na targecie
										job = "tobacco",
										 canInteract = function()
										return moznazbierac
										   end,
									}
								},
								distance = 3.0 -- dystans
								}) 			


								exports.qtarget:AddBoxZone("tyton8", vector3(2923.46, 4681.99, 50.3), 1.7, 1.7, {
									name="tyton8",
									heading=10,
			--						debugPoly=true,
									minZ=49.1,
									maxZ=53.1 
									}, {
									options = {
											{
												event = "Zbieranietytoniu",  -- trigger eventa client side albo neteventa
												icon = "fab fa-pagelines", -- ikonka na targecie mozna wziac ja z https://fontawesome.com 
												label = "Zbierz Tytoń", -- Nazwa na targecie
												job = "tobacco",
												 canInteract = function()
												return moznazbierac
												   end,
											}
										},
										distance = 3.0 -- dystans
										}) 		
										
										
										exports.qtarget:AddBoxZone("tyton9", vector3(2926.2, 4687.21, 50.09), 1.7, 1.7, {
											name="tyton9",
											heading=0,
				--							debugPoly=true,
											minZ=49.09,
											maxZ=53.09 
											}, {
											options = {
													{
														event = "Zbieranietytoniu",  -- trigger eventa client side albo neteventa
														icon = "fab fa-pagelines", -- ikonka na targecie mozna wziac ja z https://fontawesome.com 
														label = "Zbierz Tytoń", -- Nazwa na targecie
														job = "tobacco",
														 canInteract = function()
														return moznazbierac
														   end,
													}
												},
												distance = 3.0 -- dystans
												}) 	
												
												
												exports.qtarget:AddBoxZone("tyton10", vector3(2922.42, 4686.45, 50.17), 1.7, 1.7, {
													name="tyton10",
													heading=15,
				--									debugPoly=true,
													minZ=49.17,
													maxZ=53.17 
													}, {
													options = {
															{
																event = "Zbieranietytoniu",  -- trigger eventa client side albo neteventa
																icon = "fab fa-pagelines", -- ikonka na targecie mozna wziac ja z https://fontawesome.com 
																label = "Zbierz Tytoń", -- Nazwa na targecie
																job = "tobacco",
																 canInteract = function()
																return moznazbierac
																   end,
															}
														},
														distance = 3.0 -- dystans
														}) 		
														
														exports.qtarget:AddBoxZone("tyton11", vector3(2925.27, 4692.33, 50.03), 1.7, 1.7, {
															name="tyton11",
															heading=15,
				--											debugPoly=true,
															minZ=49.03,
															maxZ=53.03 
															}, {
															options = {
																	{
																		event = "Zbieranietytoniu",  -- trigger eventa client side albo neteventa
																		icon = "fab fa-pagelines", -- ikonka na targecie mozna wziac ja z https://fontawesome.com 
																		label = "Zbierz Tytoń", -- Nazwa na targecie
																		job = "tobacco",
																		 canInteract = function()
																		return moznazbierac
																		   end,
																	}
																},
																distance = 3.0 -- dystans
																}) 		
																
																
																exports.qtarget:AddBoxZone("tyton12", vector3(2921.23, 4691.68, 49.93), 1.7, 1.7, {
																	name="tyton12",
																	heading=10,
				--													debugPoly=true,
																	minZ=48.93,
																	maxZ=52.93 
																	}, {
																	options = {
																			{
																				event = "Zbieranietytoniu",  -- trigger eventa client side albo neteventa
																				icon = "fab fa-pagelines", -- ikonka na targecie mozna wziac ja z https://fontawesome.com 
																				label = "Zbierz Tytoń", -- Nazwa na targecie
																				job = "tobacco",
																				 canInteract = function()
																				return moznazbierac
																				   end,
																			}
																		},
																		distance = 3.0 -- dystans
																		}) 										


					exports.qtarget:AddBoxZone("przerabianietyton", vector3(2483.52, 3726.4, 43.22), 1.2, 2.2, {
						name="przerabianietyton",
						heading=35,
						--debugPoly=true,
						minZ=39.82,
						maxZ=43.82  
						}, {
						options = {
							{
								event = "przerobkatytoniu",  -- trigger eventa client side albo neteventa
								icon = "fab fa-pagelines", -- ikonka na targecie mozna wziac ja z https://fontawesome.com 
								label = "Wytwórz Papierosy", -- Nazwa na targecie
								job = "tobacco",
								 canInteract = function()
								return moznazbierac
								   end,
							}
						},
						distance = 3.0 -- dystans
						}) 
           

						exports.qtarget:AddBoxZone("pakowaniepapierosow", vector3(2680.99, 3507.4, 53.3), 1.7, 3.9, {
							name="pakowaniepapierosow",
							heading=250,
							--debugPoly=true,
							minZ=50.1,
							maxZ=54.1  
							}, {
							options = {
								{
									event = "pakowaniepapierosow",  -- trigger eventa client side albo neteventa
									icon = "fab fa-pagelines", -- ikonka na targecie mozna wziac ja z https://fontawesome.com 
									label = "Pakowanie Papierosów", -- Nazwa na targecie
									job = "tobacco",
									 canInteract = function()
									return moznazbierac
									   end,
								}
							},
							distance = 3.0 -- dystans
							}) 


							exports.qtarget:AddBoxZone("pedselltobacco", vector3(943.8, -1473.77, 30.1), 1, 0.4, {
								name="pedselltobacco",
								heading=0,
								--debugPoly=true,
								minZ=27.1,
								maxZ=31.1  
								}, {
								options = {
									{
										event = "sprzedawaniepaczek",  -- trigger eventa client side albo neteventa
										icon = "fab fa-pagelines", -- ikonka na targecie mozna wziac ja z https://fontawesome.com 
										label = "Sprzedarz Paczek", -- Nazwa na targecie
										job = "tobacco",
										 canInteract = function()
										return moznazbierac
										   end,
									}
								},
								distance = 3.0 -- dystans
								}) 
							
								exports.qtarget:AddBoxZone("pedspawncartobaco", vector3(934.15, -1469.38, 30.1), 0.7, 0.7, {
									name="pedspawncartobaco",
									heading=0,
									--debugPoly=true,
									minZ=27.1,
									maxZ=31.1 
									}, {
									options = {
										{
											event = "wyciagnijpojazd:tobacco",  -- trigger eventa client side albo neteventa
											icon = "fab fa-pagelines", -- ikonka na targecie mozna wziac ja z https://fontawesome.com 
											label = "Wyciagnij Pojazd", -- Nazwa na targecie
											job = "tobacco",
										},
										{
											event = "nieznajomy-zwrocpojazd",  -- trigger eventa client side albo neteventa
											icon = "fab fa-pagelines", -- ikonka na targecie mozna wziac ja z https://fontawesome.com 
											label = "Schowaj Pojazd", -- Nazwa na targecie
											job = "tobacco",
										}
									},
									distance = 3.0 -- dystans
									}) 


									exports.qtarget:AddBoxZone("magazyntobacco",vector3(944.47, -1459.73, 33.61), 0.9, 2.7, {
										name="magazyntobacco",
										heading=0,
										--debugPoly=true,
										minZ=30.81,
										maxZ=34.81                                          
											}, {
											  options = {
												{
													action = function()
													   szafkatobaccoopen()
													end,
													icon = "fa-solid fa-box",
													label = "Otwórz Szafkę",
													job = "tobacco",

												},
											},
											distance = 2.0 -- dystans
											})

											exports.qtarget:AddBoxZone("bossmenutobacco",vector3(939.35, -1460.68, 33.61), 0.5, 0.5, {
												name="bossmenutobacco",
												heading=0,
												--debugPoly=true,
												minZ=29.81,
												maxZ=33.81                                          
													}, {
													  options = {
														{
															action = function()
																bossmenutobacco()
															end,
															icon = "fa-sharp fa-solid fa-laptop-file",
															label = "Otwórz Menu",
															job = "tobacco",
		
														},
													},
													distance = 2.0 -- dystans
													})		


													exports.qtarget:AddBoxZone("tobacco_ubrania",vector3(930.28, -1462.18, 33.94), 1, 5.2, {
														name="tobacco_ubrania",
														heading=270,
													--	debugPoly=true,
														minZ=30.74,
														maxZ=34.74                                          
															}, {
															  options = {
																{
																	action = function()
																		Otworzubraniamenu()
																	end,
																	icon = "fa-solid fa-shirt",
																	label = "Menu Ubrań",
																	job = "tobacco",
				
																},
															},
															distance = 3.0 -- dystans
															})	
																	
end)




