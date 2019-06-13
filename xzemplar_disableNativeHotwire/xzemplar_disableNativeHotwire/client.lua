-- DISABLES NATIVE HOTWIRING SYSTEM

Citizen.CreateThread(function()
	while true do
		
		if DoesEntityExist(GetVehiclePedIsTryingToEnter(PlayerPedId())) then  --is player entering a vehicle
			SetVehicleNeedsToBeHotwired(GetVehiclePedIsTryingToEnter(PlayerPedId()), false) -- disable native hotwire
		end
		
		Citizen.Wait(300) -- requires minimum of 1. larger number saves some performance if necessary
	end
	
end)


--[[   
-- you could check for if hotwire is already set first, but might as well skip it for optimization? here is check if you want it:

if IsVehicleNeedsToBeHotwired(vehicle) then -- does veh need hotwire natively?
	SetVehicleNeedsToBeHotwired(vehicle, false) -- then disable native hotwire
end

]]--