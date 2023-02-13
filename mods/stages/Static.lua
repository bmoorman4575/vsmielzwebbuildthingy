function onCreate()
	-- background shit
	--makeLuaSprite('stageback', 'stageback', 0, 0);
	--setScrollFactor('stageback', 0.9, 0.9);
	
	makeAnimatedLuaSprite('StaticBG','StaticBG',-1000,-500)
	addAnimationByPrefix('StaticBG','StaticBG','Normal Static',16,true)
	objectPlayAnimation('StaticBG','StaticBG',true)
	setScrollFactor('StaticBG', 0.5, 0.5);
	scaleObject('StaticBG', 2, 2);

	addLuaSprite('StaticBG', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end