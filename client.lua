-- CONFIG --

-- 시간초
secondsUntilafk = 1800

-- 잠수 모드 곧 진입 안내
afkWarning = true

-- CODE --

Citizen.CreateThread(function()
	while true do
		Wait(1000)

		playerPed = GetPlayerPed(-1)
		if playerPed then
			currentPos = GetEntityCoords(playerPed, true)

			if currentPos == prevPos then
				if time > 0 then
					if afkWarning and time == math.ceil(secondsUntilafk / 4) then
						TriggerEvent("chatMessage", "[안내]", {255, 0, 0}, "^1" .. time .. "초 이내에 움직임이 없으면 잠수 모드로 진입합니다!")
					end

					time = time - 1
				else
					TriggerServerEvent("afkmodeon")
					TriggerEvent("domi_afk:afkopen",player)
				end
			else
				time = secondsUntilafk
				TriggerEvent("domi_afk:afkclose",player)
			end

			prevPos = currentPos
		end
	end
end)

function enableMenu()
    SendNUIMessage({
        type = 'open'
    })
end

RegisterNetEvent("domi_afk:afkopen")
AddEventHandler("domi_afk:afkopen", function()
    enableMenu()
end)

function domiclose()
    SendNUIMessage({
        type = 'close'
    })
end

RegisterNetEvent("domi_afk:afkclose")
AddEventHandler("domi_afk:afkclose", function()
    domiclose()
end)
