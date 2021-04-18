function OnPlayerJoined(player)
	print("player joined: " .. player.name)
	player:SetMounted(true)
	
	Task.Wait(1)
	player:SetMounted(true)
end

function OnPlayerLeft(player)
	print("player left: " .. player.name)
end

function Respawn(player)
	player:Die()
end

-- on player joined/left functions need to be defined before calling event:Connect()
Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)
Events.Connect("Respawn", Respawn)