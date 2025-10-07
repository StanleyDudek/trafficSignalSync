--trafficSignalSync (SERVER) by Dudekahedron, 2025

local signalTimer = MP.CreateTimer()

function onInit()
    MP.RegisterEvent("trafficLightTimer","trafficLightTimer")
	MP.CreateEventTimer("trafficLightTimer", 10000)
	print("[trafficSignalSync] ---------- trafficSignalSync Loaded!")
end

function trafficLightTimer()
	if #MP.GetPlayers() >= 1 then
		MP.TriggerClientEvent(-1, "rxTrafficSignalTimer", tostring(signalTimer:GetCurrent()))
	end
end
