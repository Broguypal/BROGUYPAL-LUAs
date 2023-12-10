windower.register_event('tp change', function(tp)

    if tp >= 1000 then

        windower.send_command('input /ws "Evisceration" <t>')

    end

end)