function onCreate()
setProperty('skipCountdown', true)
setProperty('camHUD.visible',false)
setObjectCamera('blac', 'other')
makeLuaSprite('blac', 'BlackFlash', -600, -180);
setScrollFactor('blac', 1, 1);
scaleObject('blac', 2, 2);
addLuaSprite('blac', true)

makeLuaText('bruhtxt', 'Erect Remix not out yet!', 1300 , 0, 330)
setTextSize('bruhtxt', 50)
setTextFont('bruhtxt', 'vcrr.ttf')
addLuaText('bruhtxt')
setObjectCamera('bruhtxt', 'other')
setObjectOrder('bruhtxt', getObjectOrder('blac') + 1)

if not isStoryMode then
playSound("splat", 1)
end
end
