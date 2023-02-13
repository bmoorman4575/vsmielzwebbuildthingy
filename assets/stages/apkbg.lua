function onCreate()
	-- background shit
	makeLuaSprite('apkbg', 'apkbg', -200, 0);
	setScrollFactor('apkbg', 0.9, 0.9);

	addLuaSprite('apkbg', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end