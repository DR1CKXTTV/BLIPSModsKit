Config = {}

Config.Map = {
  {name="~b~Maison ~r~Derek",color=59, id=492, x = -2610.03,  y = 1692.92,  z = 142.66474914551},
  --{name="~b~Maison ~y~Richard",color=0, id=206, x = 956.657, y = 447.009, z = 122.800},
  {name="~b~Maison Lucifer",color=0, id=123, x = 1355.29, y = -708.98, z = 67.27},
   
 }

Citizen.CreateThread(function()
	
	for i=1, #Config.Map, 1 do
		
		local blip = AddBlipForCoord(Config.Map[i].x, Config.Map[i].y, Config.Map[i].z)
		SetBlipSprite (blip, Config.Map[i].id)
		SetBlipScale  (blip, 1.4)
		SetBlipDisplay(blip, 4)
		SetBlipColour (blip, Config.Map[i].color)
		SetBlipAsShortRange(blip, true)

		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(Config.Map[i].name)
		EndTextCommandSetBlipName(blip)
	end
end)
