local playedsound = false

function Show(title, input, description, backgroundColor)
    if not playedsound then
        playedsound = true
        PlaySoundFrontend(-1, "MP_RANK_UP", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1 )
    end
    SendNUIMessage({
        type = 'showui',
        title = title,
        input = input,
        description = description,
        --backgroundColor = backgroundColor
    })
end

function Click()
  --  PlaySoundFrontend(-1, "MP_RANK_UP", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1 )
    SendNUIMessage({
        type = 'click'
    }) 
end

function Hide()
    playedsound = false
    SendNUIMessage({
        type = 'hideui'
    })
end

--
RegisterCommand('interactui', function()
    exports['v-interact']:Show('BANK HEIST','E', 'THERMITE DOOR')
    Wait(1000)
    exports['v-interact']:Click()
    Wait(1000)
    exports['v-interact']:Hide()
end)


RegisterCommand('longinteracttext', function()
    exports['v-interact']:Show('BANK HEIST','E', 
    'A quick red fox jumps over the lazy dog and <br> runs away swiftly to escape the dangers that await <br> it in the forest, hiding in a safe place <br> where it can rest and avoid the hunters who <br> search for it all day and into the night.I')
    Wait(1000)
    exports['v-interact']:Click()
    Wait(1000)
    exports['v-interact']:Hide()
end)