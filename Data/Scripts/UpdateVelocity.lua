local SpeedTextUI = script.parent
local player = Game.GetLocalPlayer()

function Tick()
	local speed = player:GetVelocity().y
	--print(speed)
	SpeedTextUI.text = tostring(math.abs(math.floor(speed / 60)))
	Task.Wait(0.5)
end

