Citizen.CreateThread(function()
    while true do
		InCar = false
        
        if InCar then
            Citizen.Wait(200)
        else
            Citizen.Wait(5000)
		end

        ped = PlayerPedId()
        local isInCar = IsPedInAnyVehicle(ped, true)

		if isInCar then
            InCar = true
			SetRadarZoom(1100)
		end
    end
end)