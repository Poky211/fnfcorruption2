function onCreate()
	makeLuaSprite('fuck', 'fuck', -700, -300);
	setLuaSpriteScrollFactor('fuck', 0.9, 0.9);
	defaultCamZoom = getProperty('defaultCamZoom') - 0.01;
	setProperty('fuck.scale.x', 0.6 / defaultCamZoom);
	setProperty('fuck.scale.y', 1 / defaultCamZoom);
	setProperty('fuck.alpha', 0.0001);
	addLuaSprite('fuck', false);
end

-- Event notes hooks
function onEvent(name, value1, value2)
	if name == "Change Stage1" then
		setProperty('fuck.alpha', 1);
		doTweenAlpha('tweenCutOffAlpha', 'fuck', 0, 1, 'linear');
	end
end