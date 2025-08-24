print("Anti god-noclip kill script is running...") 

util.AddNetworkString("PlyTriedGNK")

hook.Add("PlayerShouldTakeDamage", "PSTD", function(ply, ent)
	if ent:IsValid() and not ent:InVehicle() then 
		if ent:HasGodMode() or ent:GetMoveType() == 8 and ent ~= ply then 
			print(ent:GetName() .. " [" .. ent:SteamID() .. "] tried attacking " .. ply:GetName() .. " [" .. ply:SteamID() .. "] with godmode/noclip on!" ) 
			net.Start("PlyTriedGNK")
			net.Send(ent)
			return false 
		end 
	end
end)
