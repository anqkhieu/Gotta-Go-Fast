local itemToRespawn = script:GetCustomProperty("Item")
local timeBeforeRespawn = script:GetCustomProperty("TimeBeforeRespawn")

 World.SpawnAsset(itemToRespawn, {parent = script})
 
 function Tick(deltaTime)
 	if(#script:GetChildren() < 1) then
 		Task.Wait(timeBeforeRespawn)
 		World.SpawnAsset(itemToRespawn, {parent = script} )
 	end
 end