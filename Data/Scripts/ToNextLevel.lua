local trigger = script.parent

function OnInteracted(whichTrigger, other)
	if other:IsA("Player") then
		local player = other
		print(whichTrigger.name .. ": Trigger Interacted " .. other.name)
		if player.isMounted then 
			player:SetWorldPosition(Vector3.New(-719, 12770, 136))
		end
	end
end

trigger.interactedEvent:Connect(OnInteracted)
