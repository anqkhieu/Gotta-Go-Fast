local HealthLabel = script:GetCustomProperty("HealthLabel"):WaitForObject()
local HeartTemplate = HealthLabel:GetCustomProperty("HeartTemplate")

local HP = 1

function AddHealth(amount)
	for i = 1, amount do 
		local newHeart = World.SpawnAsset(HeartTemplate, {parent = HealthLabel})
		newHeart.x = ((#HealthLabel:GetChildren()) * 45) 
	end
		
	print('running')
	--HP = #HealthLabel:GetChildren()
end

Events.Connect("GetHealth", AddHealth)