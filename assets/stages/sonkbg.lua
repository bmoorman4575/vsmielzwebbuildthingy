function onCreate()
	-- background shit
	makeLuaSprite('sonkbg', 'sonkbg', -200, 0);
	setScrollFactor('sonkbg', 0.9, 0.9);

	addLuaSprite('sonkbg', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end