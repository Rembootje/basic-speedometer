function text(content)
    SetTextFont(2)
    SetTextProportional(0)
    SetTextScale(1.9,1.9)
    SetTextEntry("STRING")
    AddTextComponentString(content .. " " .. config.measurement)
    DrawText(0.84,0.7)
end

local wait = 500
local speed = 0



Citizen.CreateThread(function()
    while true do
        Citizen.Wait(wait)
        -- Check if measurement is KPH or MPH
        if config.measurement == 'KPH' then
            speed = GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false))*3.6
        elseif config.measurement == 'MPH' then
            speed = GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false))*2.236936
        end        

        -- Check if the ped is in a vehicle
        if (IsPedInAnyVehicle(GetPlayerPed(-1), false)) then
            wait = 2
            text(math.floor(speed))
        else
            wait = 500    
       end

    end
end)