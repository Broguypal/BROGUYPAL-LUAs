
tp_mode = 'dw0'
mb_mode = 'mbnin'

gearswap_box = function()
  str = '           \\cs(130,130,130)RED MAGE\\cr\n'
  str = str..' Offense Mode:\\cs(255,150,100)   '..tp_mode..'\\cr\n'
  str = str..' Casting Mode:\\cs(255,150,100)   '..mb_mode..'\\cr\n'
    return str
end

gearswap_box_config = {pos={x=20,y=240},padding=8,text={font='sans-serif',size=10,stroke={width=2,alpha=255},Fonts={'sans-serif'},},bg={alpha=0},flags={}}
gearswap_jobbox = texts.new(gearswap_box_config)


function user_setup()
	gearswap_jobbox:text(gearswap_box())		
	gearswap_jobbox:show()
end

send_command('bind numpad9 gs c ToggleMelee')

function self_command(command)
	if command == "ToggleMelee" then 
		tp_mode = "Hello"
		gearswap_jobbox:text(gearswap_box())
		gearswap_jobbox:show()
	end
end

user_setup()
