 local shootEvent = script.parent:FindChildByName("Shoot")

local JUMPGUNSTRENGTH = script.parent:GetCustomProperty("JumpGunStrength")

function OnFire()
	local owner = shootEvent.owner
	local currentVelocity = owner:GetVelocity()

	owner:ResetVelocity()

	local extraKick = 0

	if currentVelocity.z < 0 then
		extraKick = currentVelocity.z * -1
	else
		extraKick = currentVelocity.z
	end
	
	owner:AddImpulse(Vector3.New(0, 0, extraKick + JUMPGUNSTRENGTH))
end


shootEvent.castEvent:Connect(OnFire)