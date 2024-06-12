function file_unload()
    send_command('unbind numpad9')
    send_command('unbind numpad8')
    send_command('unbind numpad7')
    send_command('unbind numpad6')
	send_command('unbind numpad5')
	send_command('unbind numpad4')
	send_command('unbind numpad3')
    enable("main","sub","range","ammo","head","neck","ear1","ear2","body","hands","ring1","ring2","back","waist","legs","feet")
end


send_command ('bind numpad9 gs l SAM.lua')
send_command ('bind numpad8 gs l SAMd.lua')




send_command ('bind numpad1 input /mount "Crawler"')
send_command ('bind numpad2 input /dismount')
--send_command ('bind numpad1 input /equip ring2 "Warp Ring"; /echo Warping; wait 11; input /item "Warp Ring" <me>;')
--send_command ('bind numpad3 input /equip ring2 "Dim. Ring (holla)"; /echo Warping; wait 11; input /item "Dim. Ring (holla)" <me>;')

function get_sets()
  
    sets.idle = {}                  -- Leave this empty.
    sets.precast = {}               -- leave this empty    
    sets.midcast = {}               -- leave this empty    
    sets.aftercast = {}             -- leave this empty
	sets.ws = {}					-- Leave this empty
 
    sets.idle.normal = {
		ammo="Staunch Tathlum +1",
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Wakido Kote +3",
		legs="Nyame Flanchard",
		feet="Danzo Sune-Ate",
		neck={ name="Sam. Nodowa +2", augments={'Path: A',}},
		waist="Flume Belt +1",
		left_ear="Genmei Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Defending Ring",
		right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
		back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
	}
	
	sets.idle.attack = {
		ammo="Aurgelmir Orb",
		head="Flam. Zucchetto +2",
		body="Ken. Samue +1",
		hands="Wakido Kote +3",
		legs="Ken. Hakama +1",
		feet="Flam. Gambieras +2",
		neck={ name="Sam. Nodowa +2", augments={'Path: A',}},
		waist="Ioskeha Belt +1",
		left_ear="Crep. Earring",
		right_ear="Brutal Earring",
		left_ring="Flamma Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
	}
	
    sets.precast.fastcast = {
	}

	
    sets.midcast.enmity = {
	}
	
	sets.ws.weapons = {
	    ammo="Knobkierrie",
		head="Mpaca's Cap",
		body="Flamma Korazin +2",
		hands="Kasuga Kote +2",
		legs="Hiza. Hizayoroi +2",
		feet="Flam. Gambieras +2",
		neck={ name="Sam. Nodowa +2", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Flamma Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}

end


function idle()
	if buffactive["terror"] or buffactive["petrification"] or buffactive["stun"] then
		equip(sets.idle.normal)
	elseif player.status == "Engaged" then 
		equip(sets.idle.attack) 
	else
		equip(sets.idle.normal)
	end
end

function status_change(new,old)
	if new == "Engaged" then
		equip(sets.idle.attack)
	else
		idle()
	end
end

function precast(spell)
	if spell.type == "BlueMagic" or spell.type == "BlackMagic" or spell.type == "WhiteMagic" then 
		equip(sets.precast.fastcast)
	elseif spell.type == "WeaponSkill" or spell.type == "JobAbility" then 
		equip(sets.ws.weapons)	
	else
		idle()
	end
end

function midcast(spell)
	if spell.type == "JobAbility" then
		equip(sets.midcast.enmity)
	else
		idle()
	end
end

function aftercast(spell)
	if buffactive["terror"] or buffactive["petrification"] or buffactive["stun"] then
		equip(sets.idle.normal)
	else
		idle()
	end
end

function buff_change(name,gain)
--	if name == "silence" and gain =="True" then
--		send_command('@input /item "Echo Drops" <me>')
	if name == "doom" and gain =="True" then
		send_command('@input /item "Holy Water" <me>')
	elseif name == "terror" and gain == "true" then
		equip(sets.idle.normal)
	elseif name == "stun" and gain == "true" then
		equip(sets.idle.normal)
	elseif name	== "petrification" and gain == "true" then
		equip(sets.idle.normal)
	end
end
