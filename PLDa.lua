send_command ('bind numpad9 gs l PLD.lua')
send_command ('bind numpad8 gs l PLDm.lua')
send_command ('bind numpad7 gs l PLDd.lua')
send_command ('bind numpad6 gs l PLDa.lua')

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
	    main="Naegling",
		sub="Blurred Shield +1",
		ammo="Staunch Tathlum +1",
		head="Sakpata's Helm",
		body="Sakpata's Plate",
		hands="Sakpata's Gauntlets",
		legs={ name="Carmine Cuisses +1", augments={'HP+80','STR+12','INT+12',}},
		feet="Sakpata's Leggings",
		neck={ name="Loricate Torque +1", augments={'Path: A',}},
		waist="Flume Belt +1",
		left_ear="Hearty Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Defending Ring",
		right_ring="Moonlight Ring",
		back={ name="Rudianos's Mantle", augments={'Damage taken-5%',}},
		}
	sets.idle.attack = {
		ammo="Aurgelmir Orb",
		head="Flam. Zucchetto +2",
		body="Sakpata's Plate",
		hands="Sakpata's Gauntlets",
		legs="Sakpata's Cuisses",
		feet="Flam. Gambieras +2",
		neck="Clotharius Torque",
		waist="Tempus Fugit +1",
		left_ear="Brutal Earring",
		right_ear="Telos Earring",
		left_ring="Petrov Ring",
		right_ring="Flamma Ring",
		back={ name="Rudianos's Mantle", augments={'Damage taken-5%',}},
		}
    sets.precast.fastcast = {
		ammo="Sapience Orb",
		head="Sakpata's Helm",
		body={ name="Odyss. Chestplate", augments={'"Mag.Atk.Bns."+16','"Fast Cast"+4','STR+11','Mag. Acc.+8',}},
		hands="Sakpata's Gauntlets",
		legs="Sakpata's Cuisses",
		feet={ name="Odyssean Greaves", augments={'"Mag.Atk.Bns."+21','"Fast Cast"+3','INT+12','Mag. Acc.+11',}},
		neck={ name="Loricate Torque +1", augments={'Path: A',}},
		waist="Flume Belt +1",
		left_ear="Mendi. Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Prolix Ring",
		right_ring="Lebeche Ring",
		back={ name="Rudianos's Mantle", augments={'Damage taken-5%',}},
		}
    sets.midcast.enmity = {
		ammo="Staunch Tathlum +1",
		head="Sakpata's Helm",
		body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		hands="Sakpata's Gauntlets",
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet="Sakpata's Leggings",
		neck="Moonlight Necklace",
		waist="Flume Belt +1",
		left_ear="Friomisi Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Eihwaz Ring",
		right_ring="Moonlight Ring",
		back={ name="Rudianos's Mantle", augments={'Damage taken-5%',}},
		}
	sets.midcast.cure = {
		ammo="Staunch Tathlum +1",
		head="Sakpata's Helm",
		body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		hands="Sakpata's Gauntlets",
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet="Sakpata's Leggings",
		neck="Moonlight Necklace",
		waist="Sroda Belt",
		left_ear="Friomisi Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Eihwaz Ring",
		right_ring="Moonlight Ring",
		back={ name="Rudianos's Mantle", augments={'Damage taken-5%',}},
		}
	sets.ws.weapons = {
		ammo="Aurgelmir Orb",
		head="Flam. Zucchetto +2",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Sakpata's Leggings",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Flamma Ring",
		right_ring="Moonlight Ring",
		back={ name="Rudianos's Mantle", augments={'Damage taken-5%',}},
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
	elseif spell.type == "WeaponSkill" or spell.type == "JobAbility" then 
		midcast(spell)
	else
		idle()
	end
end

function midcast(spell)
	if spell.type == "BlueMagic" or spell.english == "Foil" or spell.english == "Poisonga" or spell.english == "Stun" or spell.english == "Flash" then
		equip(sets.midcast.enmity)
	elseif spell.english == "Cure" or spell.english == "Cure II" or spell.english == "Cure III" or spell.english == "Cure IV" then
		equip(sets.midcast.cure)
	elseif spell.type == "WeaponSkill" then 
		equip(sets.ws.weapons)	
	else
		idle()
	end
end

function aftercast(spell)
	idle()
end

