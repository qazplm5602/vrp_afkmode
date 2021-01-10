local Proxy = module("vrp", "lib/Proxy")
local Tunnel = module("vrp", "lib/Tunnel")

vRP = Proxy.getInterface("vRP")

vRPclient = Tunnel.getInterface("vRP","DOMI")

RegisterServerEvent("afkmodeon")
AddEventHandler("afkmodeon", function()
	local user_id = vRP.getUserId({source})
	if vRP.hasGroup({user_id,"카카오병원장"}) then
		vRP.addUserGroup({user_id,"카카오병원장(퇴근)"})
	elseif vRP.hasGroup({user_id,"카카오병원 교수"}) then
		vRP.addUserGroup({user_id,"카카오병원 교수(퇴근)"})
	elseif vRP.hasGroup({user_id,"병원 의료국장"}) then
		vRP.addUserGroup({user_id,"병원 의료국장(퇴근)"})
	elseif vRP.hasGroup({user_id,"카카오병원 부교수"}) then
		vRP.addUserGroup({user_id,"카카오병원 부교수(퇴근)"})
	elseif vRP.hasGroup({user_id,"카카오병원 전문의"}) then
		vRP.addUserGroup({user_id,"카카오병원 전문의(퇴근)"})
	elseif vRP.hasGroup({user_id,"카카오병원 펠로우"}) then
		vRP.addUserGroup({user_id,"카카오병원 펠로우(퇴근)"})
	elseif vRP.hasGroup({user_id,"카카오병원 레지던트"}) then
		vRP.addUserGroup({user_id,"카카오병원 레지던트(퇴근)"})
	elseif vRP.hasGroup({user_id,"카카오병원 인턴의"}) then
		vRP.addUserGroup({user_id,"카카오병원 인턴의(퇴근)"})
	elseif vRP.hasGroup({user_id,"카카오병원 수간호사"}) then
		vRP.addUserGroup({user_id,"카카오병원 수간호사(퇴근)"})
	elseif vRP.hasGroup({user_id,"카카오병원 간호사"}) then
		vRP.addUserGroup({user_id,"카카오병원 간호사(퇴근)"})
	elseif vRP.hasGroup({user_id,"카카오병원 응급대원"}) then
		vRP.addUserGroup({user_id,"카카오병원 응급대원(퇴근)"})
	elseif vRP.hasGroup({user_id,"경찰청장"}) then
		vRP.addUserGroup({user_id,"경찰청장(퇴근)"})
	elseif vRP.hasGroup({user_id,"경찰청 차장"}) then
		vRP.addUserGroup({user_id,"경찰청 차장(퇴근)"})
	elseif vRP.hasGroup({user_id,"경찰청 치안감"}) then
		vRP.addUserGroup({user_id,"경찰청 치안감(퇴근)"})
	elseif vRP.hasGroup({user_id,"경찰청 경무관"}) then
		vRP.addUserGroup({user_id,"경찰청 경무관(퇴근)"})
	elseif vRP.hasGroup({user_id,"경찰서장"}) then
		vRP.addUserGroup({user_id,"경찰서장(퇴근)"})
	elseif vRP.hasGroup({user_id,"경찰서 과장"}) then
		vRP.addUserGroup({user_id,"경찰서 과장(퇴근)"})
	elseif vRP.hasGroup({user_id,"경찰서 팀장"}) then
		vRP.addUserGroup({user_id,"경찰서 팀장(퇴근)"})
	elseif vRP.hasGroup({user_id,"경찰서 계장"}) then
		vRP.addUserGroup({user_id,"경찰서 계장(퇴근)"})
	elseif vRP.hasGroup({user_id,"경찰 경사"}) then
		vRP.addUserGroup({user_id,"경찰 경사(퇴근)"})
	elseif vRP.hasGroup({user_id,"경찰 경장"}) then
		vRP.addUserGroup({user_id,"경찰 경장(퇴근)"})
	elseif vRP.hasGroup({user_id,"경찰서 순경"}) then
		vRP.addUserGroup({user_id,"경찰서 순경(퇴근)"})
	elseif vRP.hasGroup({user_id,"경찰서 전의경"}) then
		vRP.addUserGroup({user_id,"경찰서 전의경(퇴근)"})
	else
	end
end)