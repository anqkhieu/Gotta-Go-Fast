local trigger = script.parent

PLAYERS = {}
function OnBeginOverlap(whichTrigger, player)
	if player:IsA("Player") then 
		if PLAYERS[player.name] == nil then 
			--Events.BroadcastToPlayer(player, "UIManager", {'Health'})
			PLAYERS[player.name] = true
		end
	end
end


trigger.beginOverlapEvent:Connect(OnBeginOverlap)
