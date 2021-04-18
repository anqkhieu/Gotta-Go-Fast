local trigger = script.parent
local VictoryText = script:GetCustomProperty("WorldText"):WaitForObject()

function OnBeginOverlap(whichTrigger, other)
	if other:IsA("Player") then
		VictoryText.text = other.name .. ' wins!'
		
		other:SetWorldPosition(Vector3.New(-597, 46574, -2431))
		other.animationStance = 'unarmed_dance_party'
		
		for _, player in pairs(Game.GetPlayers()) do
			Events.BroadcastToPlayer(player, "OverrideCamera", true)
		end
		
		Task.Wait(7)
		other.animationStance = 'unarmed_stance'
		
		for _, player in pairs(Game.GetPlayers()) do 
			player:SetWorldPosition(Vector3.New(-750, -8350, 200))
			Events.BroadcastToPlayer(player, "OverrideCamera", false)
		end
		
		VictoryText.text = 'HERE TO WIN!'
	end
end

trigger.beginOverlapEvent:Connect(OnBeginOverlap)