local MainUI = script:GetCustomProperty("MainUI"):WaitForObject()
local HealthUIPanel = MainUI:GetCustomProperty("HealthUIPanel"):WaitForObject()
local SpeedUIPanel = MainUI:GetCustomProperty("SpeedUIPanel"):WaitForObject()
local OverrideCamera = script:GetCustomProperty("OverrideCamera"):WaitForObject()

local NotificationSFX = script:GetCustomProperty("NotificationSFX"):WaitForObject()
local player = Game.GetLocalPlayer()

function Init()
	HealthUIPanel.visibility = Visibility.FORCE_OFF
	SpeedUIPanel.visibility = Visibility.FORCE_OFF
end


function UIManager(tbl, setting)
	for _,v in ipairs(tbl) do 
		if v == 'Health' then obj = HealthUIPanel
		elseif v == 'Speed' then obj = SpeedUIPanel end
		if obj.visibility ~= Visibility.FORCE_ON then 
			obj.visibility = Visibility.FORCE_ON
			NotificationSFX:Play()
		end
	end
end

local HealthLabel = script:GetCustomProperty("HealthLabel"):WaitForObject()
local HeartTemplate = HealthLabel:GetCustomProperty("HeartTemplate")
local HP = 1

function AddHealth(amount, max)
	local health = #HealthLabel:GetChildren()
	
	for _,v in ipairs(HealthLabel:GetChildren()) do v:Destroy() end
	
	local total = health + amount
	if max == nil then max = 3 end
	if total > max then total = max end
	
	for i = 1, total do 
		local newHeart = World.SpawnAsset(HeartTemplate, {parent = HealthLabel})
		newHeart.x = ((#HealthLabel:GetChildren()) * 45) 
	end
		
	if #HealthLabel:GetChildren() <= 0 then 
		Events.BroadcastToServer("Respawn", player)
	end 
end

function OverrideCamera(setting)
	if setting == true then 
		player:SetOverrideCamera(OverrideCamera, 1)
	else 
		player:ClearOverrideCamera()
	end
end

Init()
Events.Connect("GetHealth", AddHealth)
Events.Connect("UIManager", UIManager)