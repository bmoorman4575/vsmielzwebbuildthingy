function onCreate()
	-- background shit
	makeLuaSprite('mielzbg', 'mielzbg', -200, 0);
	setScrollFactor('mielzbg', 0.9, 0.9);

	addLuaSprite('mielzbg', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end