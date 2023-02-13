function onCreate()
	makeLuaSprite('creds', 'SpinnedCredit', 0-128*4, 50);
	setScrollFactor('creds', 1, 1);
	scaleObject('creds', 4, 4)
	setProperty('creds.antialiasing', false);
	setObjectCamera('creds', 'hud')
	addLuaSprite('creds', true);
	makeLuaText('SongName', "Spinned", 1000, 0-128*2, 96)
	setTextSize('SongName', 43)
	setTextBorder('SongName', 2, '222222')
	setTextColor('SongName', 'FFFFFF')
	setTextAlignment('SongName', 'left')
	setTextFont('SongName', 'vcr.ttf')
	addLuaText('SongName')
	setObjectCamera('SongName', 'hud')
end

function onStepHit()
	if curStep < 2 then
		doTweenX('credsmove', 'creds', getProperty('creds.x')+128*3.5, 0.5, 'quadInOut')
		doTweenX('credsmoveName', 'SongName', 32, 1, 'quadInOut')
	end 
	if curStep > 31 and curStep < 33 then
		doTweenX('credsmoveName', 'SongName', getProperty('SongName.x')-128*3.5, 0.5, 'quadInOut')
		doTweenX('credsmove', 'creds', getProperty('creds.x')-128*3.5, 1, 'quadInOut')
	end
end