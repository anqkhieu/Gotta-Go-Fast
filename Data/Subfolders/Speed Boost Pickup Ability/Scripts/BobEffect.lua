local coin = script.parent
local pos = coin:GetWorldPosition()
local vfx1 = script:GetCustomProperty("vfx1"):WaitForObject()

function Tick(delta)

	local i = 2
	
	coin:RotateContinuous(Rotation.New(0, 0, 60))
	vfx1:Play()
	while i > 0.5 do
		coin:MoveTo(coin:GetWorldPosition() + Vector3.UP * i, 0.1)
		i = i * 0.96
		Task.Wait(0.1)
	end
	vfx1:Play()
	local i = -2
	
	while i < -0.5 do
		coin:MoveTo(coin:GetWorldPosition() + Vector3.UP * i, 0.1)
		i = i * 0.96
		Task.Wait(0.1)
	end
	
	coin:SetWorldPosition(pos)
	
end


Game.playerJoinedEvent:Connect(Tick)