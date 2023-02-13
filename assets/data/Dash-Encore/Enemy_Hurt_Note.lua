function opponentNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Hurt Note' then
		health = getProperty('health')
        setProperty('health', health- 0.055)
		cameraShake('game', 0.007, 0.1)
		cameraShake('hud', 0.007, 0.1)
	end
end