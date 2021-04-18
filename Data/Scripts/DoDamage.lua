local amount = script:GetCustomProperty("Amount")

local trigger = script.parent

function OnBeginOverlap(whichTrigger, other)
	if other:IsA("Player") then
		local p = other
		Events.BroadcastToPlayer(p, "GetHealth", -1)
	end
end

trigger.beginOverlapEvent:Connect(OnBeginOverlap)
