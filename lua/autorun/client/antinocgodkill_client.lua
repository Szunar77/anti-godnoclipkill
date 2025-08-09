net.Receive("PlyTriedGNK", function()
	local starttime = CurTime()
	local howlong = 5 -- For how long should the message be on the players screen?
	local message = "You cannot damage players with noclip or godmode!" -- The message itself
    
	surface.CreateFont("BigFont", {font = "DermaDefault", size = 64, weight = 1000, antialias = true})

	if LocalPlayer():IsValid() then
		hook.Add("HUDPaint", "paintonhud", function()
			if CurTime() > starttime + howlong then
				hook.Remove("HUDPaint", "paintonhud") 
				return
			end
			
			draw.SimpleText(message, "BigFont", ScrW()/2, ScrH()/2, Color(255,0,0, 255*(howlong-(CurTime()-starttime))/howlong ), 1, 1 )
		end)
	end
end)
