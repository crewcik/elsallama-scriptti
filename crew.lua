local sitting = {}
function crew_el(thePlayer)
	if not sitting[thePlayer] then
		setPedAnimation(thePlayer, "on_lookers", "wave_loop", -5, true, false, false, false)
    sitting[thePlayer] = true
		outputChatBox("[CREW]:#ffffff Şuanda el sallıyorsunuz.", thePlayer, 0, 255, 0, true)
	else
		setPedAnimation(thePlayer)
		sitting[thePlayer] = nil
		outputChatBox("[CREW]:#ffffff El sallama iptal edildi.", thePlayer, 0, 255, 0, true)
	end
end
addCommandHandler("elsalla", crew_el)
