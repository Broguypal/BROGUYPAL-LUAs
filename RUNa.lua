send_command ('bind numpad9 gs l RUN.lua')
send_command ('bind numpad8 gs l RUNd.lua')
send_command ('bind numpad6 gs l RUNa.lua')
send_command ('bind numpad7 gs l RUNm.lua')
send_command ('bind numpad4 input //aset set tank')

send_command ('bind numpad1 input /mount "Morbol"')
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
		sub="Utu Grip",
		ammo="Staunch Tathlum +1",
		head="Nyame Helm",
		body="Runeist Coat +3",
		hands="Nyame Gauntlets",
		legs={ name="Carmine Cuisses +1", augments={'HP+80','STR+12','INT+12',}},
		feet="Erilaz Greaves +2",
		neck="Warder's Charm +1",
		waist="Flume Belt +1",
		left_ear="Hearty Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Defending Ring",
		right_ring="Moonlight Ring",
		back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
		}

	sets.idle.dualwield = {
		main="Naegling",
		sub="Reikiko",
		ammo="Staunch Tathlum +1",
		head="Nyame Helm",
		body="Runeist Coat +3",
		hands="Nyame Gauntlets",
		legs={ name="Carmine Cuisses +1", augments={'HP+80','STR+12','INT+12',}},
		feet="Erilaz Greaves +2",
		neck="Warder's Charm +1",
		waist="Flume Belt +1",
		left_ear="Hearty Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Defending Ring",
		right_ring="Moonlight Ring",
		back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
		}
		
	sets.idle.attack = {
		sub="Utu Grip",
		ammo="Yamarang",
		head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet={ name="Herculean Boots", augments={'Accuracy+18 Attack+18','"Triple Atk."+4',}},
		neck={ name="Futhark Torque +1", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Sherida Earring",
		right_ear="Brutal Earring",
		left_ring="Epona's Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
		}
		
	sets.idle.dwattack = {
		main="Naegling",
		sub="Reikiko",
		ammo="Yamarang",
		head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet={ name="Herculean Boots", augments={'Accuracy+18 Attack+18','"Triple Atk."+4',}},
		neck={ name="Futhark Torque +1", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Sherida Earring",
		right_ear="Brutal Earring",
		left_ring="Epona's Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
		}
		
    sets.precast.fastcast = {
		ammo="Sapience Orb",
		head={ name="Herculean Helm", augments={'Attack+5','"Triple Atk."+3','Accuracy+6',}},
		body="Agwu's Robe",
		hands="Agwu's Gages",
		legs="Agwu's Slops",
		feet="Agwu's Pigaches",
		neck={ name="Unmoving Collar +1", augments={'Path: A',}},
		waist="Siegel Sash",
		left_ear="Friomisi Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Lebeche Ring",
		right_ring="Moonlight Ring",
		back={ name="Ogma's Cape", augments={'HP+60','HP+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},
		}
	sets.precast.valiance = {
		ammo="Aqreqaq Bomblet",
		head="Nyame Helm",
		body="Runeist Coat +3",
		hands="Kurys Gloves",
		legs="Eri. Leg Guards +2",
		feet="Erilaz Greaves +2",
		neck="Moonlight Necklace",
		waist="Plat. Mog. Belt",
		left_ear="Genmei Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Eihwaz Ring",
		right_ring="Moonlight Ring",
		back={ name="Ogma's Cape", augments={'HP+60','Mag. Acc+20 /Mag. Dmg.+20','Enmity+10','Spell interruption rate down-10%',}},
		}	
	sets.precast.pulse = {
		head="Erilaz Galea +2",
		}
	sets.precast.battuta = {
		head={ name="Fu. Bandeau +2", augments={'Enhances "Battuta" effect',}},
		}
	sets.precast.enmity = {
		ammo="Aqreqaq Bomblet",
		head="Halitus Helm",
		body="Emet Harness +1",
		hands="Kurys Gloves",
		legs="Eri. Leg Guards +2",
		feet="Erilaz Greaves +2",
		neck="Moonlight Necklace",
		waist="Plat. Mog. Belt",
		left_ear="Genmei Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Moonlight Ring",
		right_ring="Eihwaz Ring",
		back={ name="Ogma's Cape", augments={'HP+60','Mag. Acc+20 /Mag. Dmg.+20','Enmity+10','Spell interruption rate down-10%',}},
		}
    sets.midcast.enmity = {
		ammo="Aqreqaq Bomblet",
		head="Halitus Helm",
		body="Emet Harness +1",
		hands="Kurys Gloves",
		legs="Eri. Leg Guards +2",
		feet="Erilaz Greaves +2",
		neck={ name="Futhark Torque +1", augments={'Path: A',}},
		waist="Flume Belt +1",
		left_ear="Genmei Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Eihwaz Ring",
		right_ring="Moonlight Ring",
		back={ name="Ogma's Cape", augments={'HP+60','Mag. Acc+20 /Mag. Dmg.+20','Enmity+10','Spell interruption rate down-10%',}},
		}
    sets.midcast.SIR = {
		ammo="Staunch Tathlum +1",
		head="Erilaz Galea +2",
		body="Nyame Mail",
		hands="Rawhide Gloves",
		legs="Eri. Leg Guards +2",
		feet="Erilaz Greaves +2",
		neck="Moonlight Necklace",
		waist="Audumbla Sash",
		left_ear="Magnetic Earring",
		right_ear="Halasz Earring",
		left_ring="Evanescence Ring",
		right_ring="Moonlight Ring",
		back={ name="Ogma's Cape", augments={'HP+60','Mag. Acc+20 /Mag. Dmg.+20','Enmity+10','Spell interruption rate down-10%',}},
		}
	sets.midcast.phalanx = {
		ammo="Staunch Tathlum +1",
		head={ name="Fu. Bandeau +2", augments={'Enhances "Battuta" effect',}},
		body={ name="Taeon Tabard", augments={'Phalanx +3',}},
		hands={ name="Taeon Gloves", augments={'Phalanx +3',}},
		legs={ name="Taeon Tights", augments={'Phalanx +3',}},
		feet={ name="Taeon Boots", augments={'Phalanx +3',}},
		neck={ name="Futhark Torque +1", augments={'Path: A',}},
		waist="Flume Belt +1",
		left_ear="Genmei Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Defending Ring",
		right_ring="Moonlight Ring",
		back="Moonbeam Cape",
		}
	sets.ws.dimidiation = {
		ammo="Knobkierrie",
		head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		hands="Nyame Gauntlets",
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet={ name="Herculean Boots", augments={'Accuracy+18 Attack+18','"Triple Atk."+4',}},
		neck={ name="Futhark Torque +1", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Sherida Earring",
		right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		left_ring="Epona's Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Spell interruption rate down-10%',}},
		}
	sets.ws.resolution = {
		ammo="Knobkierrie",
		head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		hands="Nyame Gauntlets",	
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet={ name="Herculean Boots", augments={'Accuracy+18 Attack+18','"Triple Atk."+4',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Sherida Earring",
		right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		left_ring="Epona's Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
		}
end


function idle()
	if player.status == "Engaged" then
		if player.sub_job == "NIN" or player.sub_job == "DNC" then 
			equip(sets.idle.dwattack) 
		else
			equip(sets.idle.attack)
		end
	else
		if player.sub_job == "NIN" or player.sub_job == "DNC" then 
			equip(sets.idle.dualwield) 
		else
			equip(sets.idle.normal)
		end
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
	if spell.type == "WeaponSkill" then 
		if spell.english == "Resolution" then
			equip (sets.ws.resolution) 
		else
			equip(sets.ws.dimidiation)	
		end
	elseif spell.english == "Battuta" then
		equip(sets.precast.battuta)
	elseif spell.english == "Valiance" or spell.english == "Vallation" then
		equip(sets.precast.valiance)
	elseif spell.english == "Vivacious Pulse" then
		equip(sets.precast.pulse)
	elseif spell.type == "JobAbility" or spell.english == "Pflug" or spell.english == "Liement" or spell.english == "Battuta" then
		equip(sets.precast.enmity)
	elseif spell.type == "BlueMagic" or spell.type == "BlackMagic" or spell.type == "WhiteMagic" or spell.type == "Ninjutsu" then 
		equip(sets.precast.fastcast)
	else
		idle()
	end
end

function midcast(spell)
	if spell.english == "Foil" or spell.english == "Poisonga" or spell.english == "Stun" or spell.english == "Flash" or spell.english == "Jettatura" then
		equip(sets.midcast.enmity)
	elseif spell.english == "Phalanx" then
		equip(sets.midcast.phalanx)
	elseif spell.type == "BlueMagic" or spell.type == "BlackMagic" or spell.type == "WhiteMagic" or spell.type == "Ninjutsu" then 
		equip(sets.midcast.SIR)
	else
		idle()
	end
end


function aftercast(spell)
	idle()
end

