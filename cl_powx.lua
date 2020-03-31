----------------------------------------------
----------------------------------------------
--Pole Emploit Cree avec le PMenu By PowX#2629
----------------------------------------------
----------------------------------------------

Citizen.Trace("Pole Emploit Créer par PowX ")
Citizen.Trace("Cree sous PMenu")


ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)

local PoleE = {
    Base = { Title = "Pole Emploit" },
    Data = { currentMenu = "~b~Métier" },
    Events = {

        onSelected = function(self, _, btn, CMenu, menuData, currentButton, currentSlt, result)
            if btn.name == "Mineur" then

                TriggerServerEvent('powx_JB:setJobMineur')

                self:CloseMenu(true)

                ESX.ShowNotification('Vous pratiquez désormais le métier de ~b~"Mineur"~w~')

                PlaySoundFrontend( -1, "BASE_JUMP_PASSED", "HUD_AWARDS", 1)

                Citizen.Wait(1)

            end

            if btn.name == "Bûcheron" then

                TriggerServerEvent('powx_JB:setJobBûcheron')

                self:CloseMenu(true)  

                ESX.ShowNotification('Vous pratiquez désormais le métier de ~b~"Bûcheron"~w~')

                PlaySoundFrontend( -1, "BASE_JUMP_PASSED", "HUD_AWARDS", 1)

                Citizen.Wait(1)

            end

            if btn.name == "Abatteur" then

                TriggerServerEvent('powx_JB:setJobAbatteur')

                self:CloseMenu(true)   

                ESX.ShowNotification('Vous pratiquez désormais le métier de ~b~"Abatteur"~w~')

                PlaySoundFrontend( -1, "BASE_JUMP_PASSED", "HUD_AWARDS", 1)

                Citizen.Wait(1)

            end

            if btn.name == "Couturier" then

                TriggerServerEvent('powx_JB:setJobCouturier')

                self:CloseMenu(true)

                ESX.ShowNotification('Vous pratiquez désormais le métier de ~b~"Couturier"~w~')

                PlaySoundFrontend( -1, "BASE_JUMP_PASSED", "HUD_AWARDS", 1)

                Citizen.Wait(1)

            end

            if btn.name == "Chômeur" then

                TriggerServerEvent('powx_JB:setJobChômeur')

                self:CloseMenu(true)   

                ESX.ShowNotification('Vous pratiquez désormais le métier de ~b~"Chômeur"~w~')

                PlaySoundFrontend( -1, "BASE_JUMP_PASSED", "HUD_AWARDS", 1)

                Citizen.Wait(1)

            end
        end,

    },

    Menu = {

        ["~b~Métier"] = {
            b = {
                {name = "~h~~b~---------------------------~g~Bienvenue~b~----------------------------"},
                {name = "Métier", ask = "→", askX = true},
                {name = "~h~~b~----------------------~g~Choisi ton Métier~b~------------------------"},
               
            }
        },
        ["métier"] = {
            b = {
                {name = "~r~-----------------------Liste des Métier--------------------------"},
                {name = "Mineur"},
                {name = "Bûcheron"},
                {name = "Abatteur"},
                {name = "Couturier"},
                {name = "Chômeur"},
                {name = "~b~-----------------------Bon Travaille--------------------------"},
               
            }
        },
    }
}


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        if Vdist2(GetEntityCoords(PlayerPedId(), false), -268.10, -956.96, 31.22) < 0.5 then
            ESX.ShowHelpNotification("Appuyez sur ~INPUT_TALK~ pour accéder au ~b~Pôle Emploi~s~")
            if IsControlJustPressed(1,51) then 
                CreateMenu(PoleE)
            end
        end
    end
end)



-------PED---------

Citizen.CreateThread(function()
    local hash = GetHashKey("a_m_m_prolhost_01")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    end
    ped = CreatePed("PED_TYPE_POLE", "a_m_m_prolhost_01", -269.005, -955.946, 30.223, 200.40, true, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetEntityInvincible(ped, true)
    FreezeEntityPosition(ped, true)
end)



-- Blip

local blips = {
    {title="Pôle Emploi", colour=2, id=409, x = -265.0, y = -963.6, z = 30.2}
}

Citizen.CreateThread(function()
    for _, info in pairs(blips) do
        info.blip = AddBlipForCoord(info.x, info.y, info.z)
        SetBlipSprite(info.blip, info.id)
        SetBlipDisplay(info.blip, 4)
        SetBlipScale(info.blip, 0.9)
        SetBlipColour(info.blip, info.colour)
        SetBlipAsShortRange(info.blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(info.title)
        EndTextCommandSetBlipName(info.blip)
    end
end)