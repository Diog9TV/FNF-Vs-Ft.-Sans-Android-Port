function onCreate()
    makeLuaSprite('Bg', 'sans/background', -1450, -1300)
      scaleObject('Bg', 2.4, 2.4)
      setScrollFactor('Bg', 0.9, 0.9)
      addLuaSprite('Bg', false)
      setProperty('Bg.visible', true)
      
    makeLuaSprite('Grill', 'sans/grill1', 1900, -300)
      scaleObject('Grill', 0.9, 0.9)
      setScrollFactor('Grill', 0.9, 0.9)
      addLuaSprite('Grill', false)
      setProperty('Grill.visible', true)
      
    makeLuaSprite('Bar', 'sans/bar', -700, -860)
      scaleLuaSprite('Bar', 2.2, 2.2)
      setScrollFactor('Bar', 0.9, 0.9)
      addLuaSprite('Bar', false)
      setProperty('Bar.visible', true)
      
    makeAnimatedLuaSprite('Jbox', 'sans/Jukebox', 2100, -500)
      addAnimationByPrefix('Jbox', 'dance', 'Jukebox Animation instância', 20, true)
      objectPlayAnimation('Jbox', 'dance', false)
      scaleObject('Jbox', 1.3, 1.3)
      addLuaSprite('Jbox', false)
      setProperty('Jbox.visible', true)
      
    makeAnimatedLuaSprite('Idk1', 'sans/cueia', 1120, -120)
      addAnimationByPrefix('Idk1', 'dance', 'CueiaBebada instância', 20, true)
      objectPlayAnimation('Idk1', false)
      scaleLuaSprite('Idk1', 1.5, 1.5)
      addLuaSprite('Idk1', false)
      setProperty('Idk1.visible', true)
      
    makeAnimatedLuaSprite('Paps', 'sans/Paps', 1600, -200)
      addAnimationByPrefix('Paps', 'dance', 'Paps instância', 20, true)
      objectPlayAnimation('Paps', false)
      scaleLuaSprite('Paps', 1.5, 1.5)
      addLuaSprite('Paps', false)
      setProperty('Paps.visible', true)
      
    makeAnimatedLuaSprite('Grillby', 'sans/GrillbyFunny', -350, -280)
      addAnimationByPrefix('Grillby', 'dance', 'Fogo Loop', 20, true)
      objectPlayAnimation('Grillby', false)
      scaleLuaSprite('Grillby', 1.4, 1.4)
      addLuaSprite('Grillby', false)
      setProperty('Grillby.visible', true)
      
    makeAnimatedLuaSprite('Idk2', 'sans/Duck', -900, -200)
      addAnimationByPrefix('Idk2', 'dance', 'Pato instância', 20, true)
      objectPlayAnimation('Idk2', false)
      scaleLuaSprite('Idk2', 1.5, 1.5)
      addLuaSprite('Idk2', false)
      setProperty('Idk2.visible', true)
      
    makeLuaSprite('Chair', 'sans/foregroundChair', 1900, 750)
      scaleObject('Chair', 1.7, 1.7)
      setScrollFactor('Chair', 0.9, 0.9)
      addLuaSprite('Chair', false)
      setProperty('Chair.visible', true)
      
    makeAnimatedLuaSprite('Idk3', 'sans/The Dog', -1700, -700)
      addAnimationByPrefix('Idk3', 'dance', 'doga', 20, true)
      objectPlayAnimation('Idk3', false)
      scaleLuaSprite('Idk3', 2.2, 2.2)
      addLuaSprite('Idk3', false)
      setProperty('Idk3.visible', true)
      
    makeLuaSprite('Table', 'sans/foregroundTable', -1100, 750)
      scaleObject('Table', 1.7, 1.7)
      setScrollFactor('Table', 0.9, 0.9)
      addLuaSprite('Table', false)
      setProperty('Table.visible', true)
     
    makeAnimatedLuaSprite('Idk4', 'sans/CasalDogs', -1500, 600)
      addAnimationByPrefix('Idk4', 'dance', 'Cachorros instância', 20, true)
      objectPlayAnimation('Idk4', false)
      scaleLuaSprite('Idk4', 1.5, 1.5)
      addLuaSprite('Idk4', false)
      setProperty('Idk4.visible', true)
      
    makeAnimatedLuaSprite('Idk5', 'sans/Mordisco', 1800, 600)
      addAnimationByPrefix('Idk5', 'dance', 'obocao instância', 20, true)
      objectPlayAnimation('Idk5', false)
      scaleLuaSprite('Idk5', 1.5, 1.5)
      addLuaSprite('Idk5', false)
      setProperty('Idk5.visible', true)
end

function onStepHit()
    if curStep == 1420 then
        setProperty('defaultCamZoom', 1.8)
        doTweenZoom('Change Camera Zoom', 'camGame', 1.8, 7, 'linear')
        
    elseif curStep == 1532 then
        setProperty('defaultCamZoom', 0.7)
        doTweenZoom('Change Camera Zoom', 'camGame', 0.7, 0.5, 'linear')
        makeLuaSprite('Blackscreen', 'sans/black', -1450, -1100)
        scaleLuaSprite('Blackscreen', 2.4, 2.4)
        setObjectCamera('Blackscreen', 'other')
        setScrollFactor('Blackscreen', 0.9, 0.9)
        addLuaSprite('Blackscreen', true)
        
    elseif curStep == 1544 then
        removeLuaSprite('Blackscreen')
    end
end