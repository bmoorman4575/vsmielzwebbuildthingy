-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'BiggerText' then
		show = tonumber(value1);
		if show == 1 then
			makeLuaText('TheText', value2, 1000, 140, 350)
			setTextSize('TheText', 128)
			setTextBorder('TheText', 2, '000000')
			setTextColor('TheText', 'FFFFFF')
			setTextAlignment('TheText', 'center')
			setTextFont('TheText', 'Sonic1Font.ttf')
			addLuaText('TheText')
			setObjectCamera('TheText', 'other')
		end
		if show == 2 then
			removeLuaText('TheText', true)
		end
		--debugPrint('Event triggered: ', show, value2, targetAlpha);
	end
end