function textspeed(content)
    SetTextFont(config.speedometerfont)
    SetTextProportional(0)
    SetTextScale(1.9,1.9)
    SetTextEntry("STRING")
    AddTextComponentString(content .. " " .. config.measurement)
    DrawText(0.84,0.8)
end

local ordinalnumber
local gearbox

function textgearbox(gearbox)
    SetTextFont(config.gearboxfont)
    SetTextProportional(0)
    SetTextScale(1.9,1.9)
    SetTextEntry("STRING")
    AddTextComponentString(gearbox .. ordinalnumber)
    DrawText(0.84,0.875)
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

        -- Check which gear the vehicle is in
        gearbox = math.floor(GetVehicleDashboardCurrentGear(GetVehiclePedIsIn(GetPlayerPed(-1), false)))
        if gearbox == 0 then
            gearbox = 'R'
        end
        if speed == 0 then
            gearbox = 'N'
        end

        -- Ordinal numbers
        if gearbox == 1 then
            ordinalnumber = 'st'
        elseif gearbox == 2 then
            ordinalnumber = 'nd'
        elseif gearbox == 3 then
            ordinalnumber = 'rd'
        elseif gearbox == 'N' or gearbox == 'R' then
            ordinalnumber = ''
        else
            ordinalnumber = 'th'
        end
        
        textgearbox(gearbox)
        -- Check if the ped is in a vehicle
        if (IsPedInAnyVehicle(GetPlayerPed(-1), false)) then
            wait = 2
            textspeed(math.floor(speed))
        else
            wait = 500    
       end

    end
end)