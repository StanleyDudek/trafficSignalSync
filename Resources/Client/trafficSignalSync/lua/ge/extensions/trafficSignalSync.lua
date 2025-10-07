--trafficSignalSync (CLIENT) by Dudekahedron, 2025

local M = {}

local function rxTrafficSignalTimer(data)
	core_trafficSignals.setTimer(tonumber(data))
end

local function onExtensionLoaded()
	AddEventHandler("rxTrafficSignalTimer", rxTrafficSignalTimer)
end

M.onExtensionLoaded = onExtensionLoaded

M.onInit = function() setExtensionUnloadMode(M, 'manual') end

return M
