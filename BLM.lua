--  ____                                          _ _     
-- |  _ \                                        | ( )    
-- | |_) |_ __ ___   __ _ _   _ _   _ _ __   __ _| |/ ___ 
-- |  _ <| '__/ _ \ / _` | | | | | | | '_ \ / _` | | / __|
-- | |_) | | | (_) | (_| | |_| | |_| | |_) | (_| | | \__ \
-- |____/|_|  \___/ \__, |\__,_|\__, | .__/ \__,_|_| |___/
--                   __/ |       __/ | |                  
--                  |___/       |___/|_|    
-- BLM Lua 

send_command ('bind numpad9 gs l BLM.lua')

-- Spell shortcuts
send_command ('bind numpad4 input //es fire <t>')
send_command ('bind numpad5 input //es blizzard <t>')
send_command ('bind numpad6 input //es aero <t>')
send_command ('bind numpad1 input //es stone <t>')
send_command ('bind numpad2 input //es thunder <t>')
send_command ('bind numpad3 input //es water <t>')


------------------------DO NOT TOUCH BELOW----------------------------------------
function get_sets()
  
    sets.idle = {}                  -- Leave this empty.
    sets.precast = {}               -- leave this empty    
    sets.midcast = {}               -- leave this empty    
    sets.aftercast = {}             -- leave this empty
	sets.ws = {}					-- Leave this empty
	sets.ja = {}
 
 ------------------ DO NOT TOUCH ABOVE (BUT TOTALLY TOUCH BELOW THIS POINT) ---------
 
    sets.idle.normal = {
		ammo="Staunch Tathlum +1",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body="Shamash Robe",
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs="Agwu's Slops",
		feet="Herald's Gaiters",
		neck={ name="Loricate Torque +1", augments={'Path: A',}},
		waist="Carrier's Sash",
		left_ear="Genmei Earring",
		right_ear="Hearty Earring",
		left_ring="Shadow Ring",
		right_ring="Defending Ring",
		back="Shadow Mantle",
	}


	sets.idle.engaged = {
	}


    sets.precast.fastcast = {
	    ammo="Sapience Orb",
		head={ name="Merlinic Hood", augments={'Accuracy+10','"Fast Cast"+6','"Mag.Atk.Bns."+9',}},
		body={ name="Merlinic Jubbah", augments={'Mag. Acc.+26','"Fast Cast"+6','MND+6',}},
		hands="Agwu's Gages",
		legs="Agwu's Slops",
		feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+6','"Fast Cast"+6','Mag. Acc.+13',}},
		neck="Sibyl Scarf",
		waist="Witful Belt",
		left_ear="Halasz Earring",
		right_ear="Malignance Earring",
		left_ring="Prolix Ring",
		right_ring="Rahab Ring",
		back="Swith Cape",
	}


    sets.midcast.spell = {
	    ammo="Pemphredo Tathlum",
		head="Wicce Petasos +2",
		body="Wicce Coat +2",
		hands="Agwu's Gages",
		legs="Wicce Chausses +2",
		feet="Agwu's Pigaches",
		neck="Sibyl Scarf",
		waist="Channeler's Stone",
		left_ear="Halasz Earring",
		right_ear="Malignance Earring",
		left_ring="Stikini Ring +1",
		right_ring="Persis Ring",
		back="Swith Cape",
	}

	sets.midcast.weather = {
		ammo="Pemphredo Tathlum",
		head="Wicce Petasos +2",
		body="Wicce Coat +2",
		hands="Agwu's Gages",
		legs="Wicce Chausses +2",
		feet="Agwu's Pigaches",
		neck="Sibyl Scarf",
		waist="Hachirin-no-Obi",
		left_ear="Halasz Earring",
		right_ear="Malignance Earring",
		left_ring="Stikini Ring +1",
		right_ring="Persis Ring",
		back="Swith Cape",
	}


	sets.ws.weapons = {
	    ammo="Oshasha's Treatise",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Fickblix's Ring",
		right_ring="Apate Ring",
		back="Moonbeam Cape",
	}


	sets.ja.jobability = {
	}
	

--[[
Need to make an obi set

if buff.active == "Klimaform" and buff.active endswith == "Storm"
 SUB Waist with sets.midcast.weather

]]
	
end

-------- DO NOT TOUCH BELOW IF COMPLETELY NEW AT GEARSWAP -- Everything above should be all your basic needs.
function idle()
	if player.status == "Engaged" then 
		equip(sets.idle.engaged) 
	else
		equip(sets.idle.normal)
	end
end

function status_change(new,old)
	if new == "Engaged" then
		equip(sets.idle.engaged)
	else
		idle()
	end
end

function precast(spell)
	if spell.type == "BlueMagic" or spell.type == "BlackMagic" or spell.type == "WhiteMagic" or spell.type == "Ninjutsu" then 
		equip(sets.precast.fastcast)
	elseif spell.type == "WeaponSkill" then 
		equip(sets.ws.weapons)
	elseif spell.type == "JobAbility" then
		equip(sets.ja.jobability)
	else
		idle()
	end
end

function midcast(spell)
	if spell.type == "BlueMagic" or spell.type == "BlackMagic" or spell.type == "WhiteMagic" then
		if buffactive["Firestorm"] or buffactive["Sandstorm"] or buffactive["Rainstorm"] or buffactive["Windstorm"] 
		or buffactive["Hailstorm"] or buffactive["Thunderstorm"] or buffactive["Voidstorm"] or buffactive["Aurorastorm"] then
			equip(sets.midcast.weather)
		else
			equip(sets.midcast.spell)
		end
	elseif spell.type == "WeaponSkill" then 
		equip(sets.ws.weapons)	
	elseif spell.type == "JobAbility" then
		equip(sets.ja.jobability)
	else
		idle()
	end
end

function aftercast(spell)
		idle()
--		if spell.english == "Dia" then
--			send_command ('@wait 4; input /ma Dia <t>')
--		end
end