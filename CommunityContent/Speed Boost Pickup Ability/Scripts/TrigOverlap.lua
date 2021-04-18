local trigger = script.parent
local geo = script:GetCustomProperty("GEO"):WaitForObject()

function OnBeginOverlap(whichTrigger, player)

	player.maxWalkSpeed = 1040
	trigger.collision = Collision.FORCE_OFF
	geo.visibility = Visibility.FORCE_OFF
	
	Task.Wait(10)
	
	player.maxWalkSpeed = 640
	
	Task.Wait(5)
	
	trigger.collision = Collision.FORCE_ON
	geo.visibility = Visibility.FORCE_ON
	
end

trigger.beginOverlapEvent:Connect(OnBeginOverlap)


