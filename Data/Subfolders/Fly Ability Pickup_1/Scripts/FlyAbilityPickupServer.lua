local CONTAINER = script.parent
local PICKUP_TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()
local FLY_DURATION = CONTAINER:GetCustomProperty("FlyDuration")
local SFX = script:GetCustomProperty("SFX"):WaitForObject()


local overlapConnection
overlapConnection = PICKUP_TRIGGER.beginOverlapEvent:Connect(function(_, player)
	if player:IsA("Player") and not player.isFlying then
		SFX:Play()
		CONTAINER:Destroy()
		overlapConnection:Disconnect()
		player:ActivateFlying()
		Task.Wait(FLY_DURATION)
		if Object.IsValid(player) then
			player:ActivateWalking()
		end
	end
end)