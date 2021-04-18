local trigger = script.parent
local PLAYERS = {}

function OnBeginOverlap(whichTrigger, player)
	if player:IsA("Player") then 
		if PLAYERS[player.name] == nil then 
			Events.BroadcastToPlayer(player, "UIManager", {'Health', 'Speed'})
			Events.BroadcastToPlayer(player, "GetHealth", 3) 
			PLAYERS[player.name] = true
		end
	end
end


trigger.beginOverlapEvent:Connect(OnBeginOverlap)
