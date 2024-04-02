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


send_command ('bind numpad9 gs l THF.lua')
send_command ('bind numpad8 gs l THFth.lua')



send_command ('bind numpad1 input /mount "Noble Chocobo"')
send_command ('bind numpad2 input /dismount')
--send_command ('bind numpad1 input /equip ring2 "Warp Ring"; /echo Warping; wait 11; input /item "Warp Ring" <me>;')
--send_command ('bind numpad3 input /equip ring2 "Dim. Ring (holla)"; /echo Warping; wait 11; input /item "Dim. Ring (holla)" <me>;')

function get_sets()
  
    sets.idle = {}                  -- Leave this empty.
    sets.precast = {}               -- leave this empty    
    sets.midcast = {}               -- leave this empty    
    sets.aftercast = {}             -- leave this empty
	sets.ws = {}					-- Leave this empty
	sets.ja = {}
 
    sets.idle.normal = {
		ammo="Staunch Tathlum +1",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet="Trotter Boots",
		neck="Sanctity Necklace",
		waist="Flume Belt +1",
		left_ear="Genmei Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
		right_ring="Moonlight Ring",
		back="Moonbeam Cape",
	}
	
	sets.idle.attack = {
		ammo="Staunch Tathlum +1",
		head="Malignance Chapeau",
		body={ name="Herculean Vest", augments={'CHR+1','Attack+6','"Treasure Hunter"+2','Mag. Acc.+13 "Mag.Atk.Bns."+13',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Herculean Trousers", augments={'"Drain" and "Aspir" potency +1','Pet: Accuracy+27 Pet: Rng. Acc.+27','"Treasure Hunter"+2','Accuracy+12 Attack+12','Mag. Acc.+13 "Mag.Atk.Bns."+13',}},
		feet={ name="Herculean Boots", augments={'Pet: Phys. dmg. taken -1%','STR+4','"Treasure Hunter"+2','Accuracy+18 Attack+18',}},
		neck="Sanctity Necklace",
		waist="Flume Belt +1",
		left_ear="Genmei Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Defending Ring",
		right_ring="Moonlight Ring",
		back="Moonbeam Cape",
	}

-- Crit build below for farming
	--	ammo="Focal Orb",
	--	head="Mummu Bonnet +1",
	--	body="Mummu Jacket +1",
	--	hands="Mummu Wrists +1",
	--	legs="Mummu Kecks +1",
	--	feet="Mummu Gamash. +1",
	--	neck="Nefarious Collar",
	--	waist="Windbuffet Belt +1",
	--	left_ear="Sherida Earring",
	--	right_ear={ name="Skulker's Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+9','Mag. Acc.+9',}},
	--	left_ring="Varar Ring +1",
	--	right_ring="Epona's Ring",
	--	back="Moonbeam Cape",
		
	
    sets.precast.fastcast = {
	}
	
	sets.precast.steal = {
		ammo="Barathrum",
	}
	
	sets.ja.waltz = {

	}
	
    sets.midcast.enmity = {
	}
	
	sets.ws.weapons = {
		ammo="Coiste Bodhar",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Fotia Gorget",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Moonshade Earring",
		right_ear={ name="Skulker's Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+9','Mag. Acc.+9',}},
		left_ring="Fickblix's Ring",
		right_ring="Gere Ring",
		back="Moonbeam Cape",
	}

end


function idle()
	if player.status == "Engaged" then 
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
	elseif spell.type == "WeaponSkill" then
		equip(sets.ws.weapons)
	elseif spell.type == "JobAbility" then 
		if spell.english == "Steal" or spell.english == "Despoil" then
			equip(sets.precast.steal)
		else
			equip(sets.ja.waltz)
		end
	else
		equip(sets.midcast.enmity)
	end
end

function midcast(spell)
	if spell.type == "WeaponSkill" then 
		equip(sets.ws.weapons)	
	elseif spell.type == "JobAbility" then 
		if spell.english == "Steal" or spell.english == "Despoil" then
			equip(sets.precast.steal)
		else
			equip(sets.ja.waltz)
		end
	else
		equip(sets.midcast.enmity)
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
	if name == "terror" and gain == "true" then
		equip(sets.idle.normal)
		end
	if name == "stun" and gain == "true" then
		equip(sets.idle.normal)
		end
	if name	== "petrification" and gain == "true" then
		equip(sets.idle.normal)
		end
end
