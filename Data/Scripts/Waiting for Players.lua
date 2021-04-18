local trigger = script.parent
local blocker = script:GetCustomProperty("Blocker"):WaitForObject()
local firstLine = script:GetCustomProperty("FirstLine"):WaitForObject()
local secondLine = script:GetCustomProperty("SecondLine"):WaitForObject()

local PLAYERS = {}

function OnBeginOverlap(whichTrigger, p)
	if p:IsA("Player") then
		Events.BroadcastToPlayer(p, "UIManager", {'Health', 'Speed'})
		Events.BroadcastToPlayer(p, "GetHealth", 3, 3) 
			
		table.insert(PLAYERS, p.name)
		
		if #PLAYERS >= 1 then 
			firstLine.text = 'STARTING RACE IN'
			
			for i=3,1,-1 do 
				secondLine.text = tostring(i)
				Task.Wait(1)
			end
			firstLine.text = ''
			secondLine.text = 'GO!'
			blocker.visibility = Visibility.FORCE_OFF
			blocker.collision = Collision.FORCE_OFF
		end
	end
end

function OnEndOverlap(whichTrigger, p)
	if p:IsA("Player") then
		for k,v in ipairs(PLAYERS) do 
			if v == p.name then 
				table.remove(PLAYERS, k)
			end
		end
	end
end

function Reset()
	blocker.visibility = Visibility.FORCE_ON
	blocker.collision = Collision.FORCE_ON
	firstLine.text = '2 PLAYERS NECESSARY'
	secondLine.text = 'FOR RACE TO BEGIN'
end

trigger.beginOverlapEvent:Connect(OnBeginOverlap)
trigger.endOverlapEvent:Connect(OnEndOverlap)
Events.Connect("Reset", Reset)
