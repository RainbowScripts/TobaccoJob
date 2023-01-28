ESX = nil

local PlayerData                = {}
local GUI                       = {}
local JobBlips                = {}
local publicBlip = false



Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
	-- RefreshBussHUD()
    deleteBlips()
	blips()
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
	ESX.PlayerLoaded = true
	-- RefreshBussHUD()
    blips()
end)

AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end
    Wait(1000)
    deleteBlips()
	blips()
end)

function deleteBlips()
	if JobBlips[1] ~= nil then
		for i=1, #JobBlips, 1 do
		RemoveBlip(JobBlips[i])
		JobBlips[i] = nil
		end
	end
end

-- Create Blips
function blips()
	
    if ESX.PlayerData.job ~= nil and ESX.PlayerData.job.name == 'tobacco' then

		for k,v in pairs(Config.Blipy)do
            --   if ESX.PlayerData.job and ESX.PlayerData.job.name == 'beanmachine' then
                if v.Type == 27 then 
                 local blip2 = AddBlipForCoord(v.Pos.x, v.Pos.y, v.Pos.z)
         
                 SetBlipSprite (blip2, 569)
                 SetBlipDisplay(blip2, 4)
                 SetBlipScale  (blip2, 0.5)
                 SetBlipColour (blip2, 21)
                 SetBlipAsShortRange(blip2, true)
         
                 BeginTextCommandSetBlipName("STRING")
                 AddTextComponentString(v.Name)
                 EndTextCommandSetBlipName(blip2)
                 table.insert(JobBlips, blip2)
            --    end
             end
             end

		
	end

    for k,v in pairs(Config.Blipy)do

            if v.Type == 69 then 
             local blip2 = AddBlipForCoord(v.Pos.x, v.Pos.y, v.Pos.z)
     
             SetBlipSprite (blip2, 569)
             SetBlipDisplay(blip2, 4)
             SetBlipScale  (blip2, 0.8)
             SetBlipColour (blip2, 66)
             SetBlipAsShortRange(blip2, true)
     
             BeginTextCommandSetBlipName("STRING")
             AddTextComponentString(v.Name)
             EndTextCommandSetBlipName(blip2)
         --    table.insert(JobBlips, blip2)
            end
         end




end



function animzbieranie()
	RequestAnimDict(Config.animDict1)
    while not HasAnimDictLoaded(Config.animDict1) do
        Citizen.Wait(100)
    end
    RequestAnimDict(Config.animDict2)
    while not HasAnimDictLoaded(Config.animDict2) do
        Citizen.Wait(100)
    end
    local playerPed = PlayerPedId()
    FreezeEntityPosition(playerPed, true)
    TaskPlayAnim(playerPed, Config.animDict2, Config.animName2, 1.0, 1.0, -1, 1, 0, 0, 0, 0)
    Wait(5000)
    ClearPedTasks(playerPed)
    Wait(500)
    TaskPlayAnim(playerPed, Config.animDict1, Config.animName1, 1.0, 1.0, -1, 50, 0, 0, 0, 0)
    FreezeEntityPosition(playerPed, false)
    Wait(2000)
    ClearPedTasks(playerPed)
    
end


function animprzerabianie()
	RequestAnimDict(Config.animDict1)
    while not HasAnimDictLoaded(Config.animDict1) do
        Citizen.Wait(100)
    end
    RequestAnimDict(Config.animDict3)
    while not HasAnimDictLoaded(Config.animDict3) do
        Citizen.Wait(100)
    end
    local playerPed = PlayerPedId()
    FreezeEntityPosition(playerPed, true)
    TaskPlayAnim(playerPed, Config.animDict3, Config.animName3, 1.0, 1.0, -1, 1, 0, 0, 0, 0)
    Wait(5000)
    ClearPedTasks(playerPed)
    Wait(500)
    TaskPlayAnim(playerPed, Config.animDict1, Config.animName1, 1.0, 1.0, -1, 50, 0, 0, 0, 0)
    FreezeEntityPosition(playerPed, false)
    Wait(2000)
    ClearPedTasks(playerPed)
    
end

function animpakowanie()
	RequestAnimDict(Config.animDict1)
    while not HasAnimDictLoaded(Config.animDict1) do
        Citizen.Wait(100)
    end
    RequestAnimDict(Config.animDict4)
    while not HasAnimDictLoaded(Config.animDict4) do
        Citizen.Wait(100)
    end
    local playerPed = PlayerPedId()
    FreezeEntityPosition(playerPed, true)
    TaskPlayAnim(playerPed, Config.animDict4, Config.animName4, 1.0, 1.0, -1, 1, 0, 0, 0, 0)
    Wait(3000)
    ClearPedTasks(playerPed)
    Wait(500)
    TaskPlayAnim(playerPed, Config.animDict1, Config.animName1, 1.0, 1.0, -1, 50, 0, 0, 0, 0)
    FreezeEntityPosition(playerPed, false)
    Wait(1000)
    ClearPedTasks(playerPed)
    
end

function animrozmowa()
	RequestAnimDict(Config.animDictSell)
    while not HasAnimDictLoaded(Config.animDictSell) do
        Citizen.Wait(100)
    end
    RequestAnimDict(Config.animDict4)
    while not HasAnimDictLoaded(Config.animDict4) do
        Citizen.Wait(100)
    end
    local playerPed = PlayerPedId()
    FreezeEntityPosition(playerPed, true)
    TaskPlayAnim(playerPed, Config.animDictSell, Config.animNameSell, 1.0, 1.0, -1, 1, 0, 0, 0, 0)
    Wait(3000)
    ClearPedTasks(playerPed)
    Wait(500)
    TaskPlayAnim(playerPed, Config.animDict1, Config.animName1, 1.0, 1.0, -1, 50, 0, 0, 0, 0)
    FreezeEntityPosition(playerPed, false)
    Wait(1000)
    ClearPedTasks(playerPed)
    
end

function zracaniepojazdu()
	local playerCoords = GetEntityCoords(PlayerPedId())
	vehicles = ESX.Game.GetVehiclesInArea(playerCoords, 5.0)

	if #vehicles > 0 then
		for i=1, #vehicles, 1 do
			Model = GetEntityModel(vehicles[i])

			if true then
				local plate = ESX.Math.Trim(GetVehicleNumberPlateText(vehicles[i]))
				ESX.Game.DeleteVehicle(vehicles[i])
				TriggerServerEvent('vape-removekeys', plate)
			end
		end
	end
end

function szafkatobaccoopen()
    exports.ox_inventory:openInventory("stash", "tobaccofactory")
  end

  function bossmenutobacco()
                 ESX.UI.Menu.CloseAll()
                 TriggerEvent('esx_society:openBossMenu', 'tobacco', function(data, menu)
                   menu.close()
                 end)
   
       end



----------------------------------------------------------------------------------------
--                                  UBRANIA                                           --
----------------------------------------------------------------------------------------



function cleanPlayer(playerPed)
	SetPedArmour(playerPed, 0)
	ClearPedBloodDamage(playerPed)
	ResetPedVisibleDamage(playerPed)
	ClearPedLastWeaponDamage(playerPed)
	ResetPedMovementClipset(playerPed, 0)
end

function setUniform(job, playerPed)
	TriggerEvent('skinchanger:getSkin', function(skin)
  
	  if skin.sex == 0 then
		if Config.Ubrania[job].male ~= nil then
		  TriggerEvent('skinchanger:loadClothes', skin, Config.Ubrania[job].male)
		else
		  ESX.ShowNotification(_U('no_outfit'))
		end
	  else
		if Config.Ubrania[job].female ~= nil then
		  TriggerEvent('skinchanger:loadClothes', skin, Config.Ubrania[job].female)
		else
		  ESX.ShowNotification(_U('no_outfit'))
		end
	  end
  
	end)
  end





function Otworzubraniamenu()

  local playerPed = GetPlayerPed(-1)

  local elements = {
    { label = ('Ubrania Cywilne'), value = 'citizen_wear' }, 
	{ label = ('Ubrania Robocze'), value = 'job_wear' },




  }


  ESX.UI.Menu.CloseAll()

  ESX.UI.Menu.Open(
    'default', GetCurrentResourceName(), 'cloakroom',
    {
      title    = ('Szatnia'),
      align    = 'center',
      elements = elements,
    },
    function(data, menu)

      cleanPlayer(playerPed)

      if data.current.value == 'citizen_wear' then
        ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
          TriggerEvent('skinchanger:loadSkin', skin)
        end)
      end

      if
	    data.current.value == 'job_wear'
      then
        setUniform(data.current.value, playerPed)
      end
      


    end,
    function(data, menu)
      menu.close()

    end
  )
end




----------------------------------------------------------------------------------------



Citizen.CreateThread(function()
    RequestModel(GetHashKey(Config.Requestped))
    while not HasModelLoaded(GetHashKey(Config.Requestped)) do
      Citizen.Wait(200)
    end

	for k,v in pairs(Config.Pedy)do
			local tobacofactory =  CreatePed(4, Config.HashPed, v.Pos.x, v.Pos.y, v.Pos.z-0.1, v.Pos.h, false, true)
			SetEntityHeading(tobacofactory, v.Pos.h)
			FreezeEntityPosition(tobacofactory, true)
			SetEntityInvincible(tobacofactory, true)
			SetBlockingOfNonTemporaryEvents(tobacofactory, true)
    end
end)