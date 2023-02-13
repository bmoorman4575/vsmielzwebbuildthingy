function onCreate()
	makeLuaSprite('creds', 'SongCreditEncore', 0-128*4, 50);
	setScrollFactor('creds', 1, 1);
	scaleObject('creds', 4, 4)
	setProperty('creds.antialiasing', false);
	setObjectCamera('creds', 'hud')
	addLuaSprite('creds', true);
	makeLuaText('SongName', "Dash Encore", 1000, 0-128*3, 90)
	setTextSize('SongName', 48)
	setTextBorder('SongName', 2, '000000')
	setTextColor('SongName', 'FFFFFF')
	setTextAlignment('SongName', 'left')
	setTextFont('SongName', 'Sonic1Font.ttf')
	addLuaText('SongName')
	setObjectCamera('SongName', 'hud')
end

function onStepHit()
	if curStep < 2 then
		doTweenX('credsmove', 'creds', getProperty('creds.x')+128*3.5, 0.5, 'quadInOut')
		doTweenX('credsmoveName', 'SongName', 42, 1, 'quadInOut')
	end 
	if curStep > 31 and curStep < 33 then
		doTweenX('credsmoveName', 'SongName', getProperty('SongName.x')-128*4, 0.5, 'quadInOut')
		doTweenX('credsmove', 'creds', getProperty('creds.x')-128*4, 1, 'quadInOut')
	end
end