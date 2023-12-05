send_command ('bind numpad9 gs l PLD.lua')
send_command ('bind numpad8 gs l PLDb.lua')
send_command ('bind numpad7 gs l PLDa.lua')


send_command ('bind numpad1 input /mount "Noble Chocobo"')
send_command ('bind numpad2 input /dismount')
--send_command ('bind numpad1 input /equip ring2 "Warp Ring"; /echo Warping; wait 11; input /item "Warp Ring" <me>;')
--send_command ('bind numpad3 input /equip ring2 "Dim. Ring (holla)"; /echo Warping; wait 11; input /item "Dim. Ring (holla)" <me>;')

function get_sets()
  
    sets.idle = {}                  -- Leave this empty
    sets.precast = {}               -- leave this empty    
    sets.midcast = {}               -- leave this empty    
    sets.aftercast = {}             -- leave this empty
	sets.ws = {}					-- Leave this empty
	sets.ja = {}					-- Leave this empty
 
 
 --Normal Idle set - Movement speed
    sets.idle.normal = {
		ammo="Staunch Tathlum +1",
		head="Chev. Armet +2",
		body="Sakpata's Plate",
		hands="Sakpata's Gauntlets",
		legs={ name="Carmine Cuisses +1", augments={'HP+80','STR+12','INT+12',}},
		feet="Sakpata's Leggings",
		neck={ name="Unmoving Collar +1", augments={'Path: A',}},
		waist="Flume Belt +1",
		left_ear="Hearty Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Moonbeam Ring",
		right_ring="Moonlight Ring",
		back={ name="Rudianos's Mantle", augments={'Damage taken-5%',}},
		}

--Engaged Ochain
	sets.idle.engagedochain = {
		ammo="Staunch Tathlum +1",
		head="Chev. Armet +2",
		body="Sakpata's Plate",
		hands="Sakpata's Gauntlets",
		legs="Chev. Cuisses +2",
		feet="Sakpata's Leggings",
		neck={ name="Unmoving Collar +1", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Eabani Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Moonbeam Ring",
		right_ring="Moonlight Ring",
		back={ name="Rudianos's Mantle", augments={'Damage taken-5%',}},
		}

--Engaged aegis
	sets.idle.engagedaegis = {
		ammo="Staunch Tathlum +1",
		head="Chev. Armet +2",
		body="Sakpata's Plate",
		hands="Sakpata's Gauntlets",
		legs="Chev. Cuisses +2",
		feet="Sakpata's Leggings",
		neck={ name="Unmoving Collar +1", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Eabani Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Moonbeam Ring",
		right_ring="Moonlight Ring",
		back={ name="Rudianos's Mantle", augments={'Damage taken-5%',}},
		}

--Engaged hybrid
	sets.idle.engagedhybrid = {
	    ammo="Aurgelmir Orb",
		head="Sakpata's Helm",
		body="Sakpata's Plate",
		hands="Sakpata's Gauntlets",
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		neck="Sanctity Necklace",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Crep. Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Moonbeam Ring",
		right_ring="Moonlight Ring",
		back={ name="Rudianos's Mantle", augments={'Damage taken-5%',}},
	}

--Fastcast (non-cure)
    sets.precast.fastcast = {
		ammo="Sapience Orb",
		head="Chev. Armet +2",
		body={ name="Odyss. Chestplate", augments={'"Mag.Atk.Bns."+16','"Fast Cast"+4','STR+11','Mag. Acc.+8',}},
		hands="Sakpata's Gauntlets",
		legs="Chev. Cuisses +2",
		feet={ name="Odyssean Greaves", augments={'"Mag.Atk.Bns."+21','"Fast Cast"+3','INT+12','Mag. Acc.+11',}},
		neck={ name="Unmoving Collar +1", augments={'Path: A',}},
		waist="Plat. Mog. Belt",
		left_ear="Eabani Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Prolix Ring",
		right_ring="Moonlight Ring",
		back={ name="Rudianos's Mantle", augments={'Damage taken-5%',}},
		}

--Fastcast (cure)
	sets.precast.fastcastcure = {
		ammo="Sapience Orb",
		head="Chev. Armet +2",
		body={ name="Jumalik Mail", augments={'HP+35','Attack+7',}},
		hands="Sakpata's Gauntlets",
		legs="Chev. Cuisses +2",
		feet={ name="Odyssean Greaves", augments={'"Mag.Atk.Bns."+21','"Fast Cast"+3','INT+12','Mag. Acc.+11',}},
		neck={ name="Unmoving Collar +1", augments={'Path: A',}},
		waist="Plat. Mog. Belt",
		left_ear="Mendi. Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Prolix Ring",
		right_ring="Moonlight Ring",
		back={ name="Rudianos's Mantle", augments={'Damage taken-5%',}},
	}

--Midcast Enmity
    sets.midcast.enmity = {
		ammo="Staunch Tathlum +1",
		head="Chev. Armet +2",
		body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		hands="Sakpata's Gauntlets",
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet="Sakpata's Leggings",
		neck="Moonlight Necklace",
		waist="Plat. Mog. Belt",
		left_ear="Friomisi Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Petrov Ring",
		right_ring="Begrudging Ring",
		back={ name="Rudianos's Mantle", augments={'Damage taken-5%',}},
		}
	
--Midcast enmity SIR
	sets.midcast.enmitySIR = {
	    ammo="Staunch Tathlum +1",
		head="Chev. Armet +2",
		body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		hands="Sakpata's Gauntlets",
		legs={ name="Founder's Hose", augments={'MND+8','Mag. Acc.+7','Breath dmg. taken -3%',}},
		feet={ name="Odyssean Greaves", augments={'"Mag.Atk.Bns."+21','"Fast Cast"+3','INT+12','Mag. Acc.+11',}},
		neck="Moonlight Necklace",
		waist="Plat. Mog. Belt",
		left_ear="Knightly Earring",
		right_ear="Magnetic Earring",
		left_ring="Moonbeam Ring",
		right_ring="Moonlight Ring",
		back={ name="Rudianos's Mantle", augments={'Damage taken-5%',}},
	}

--Midcast Phalanx
	sets.midcast.phalanx = {
	    ammo="Staunch Tathlum +1",
		head={ name="Yorium Barbuta", augments={'Spell interruption rate down -10%','Phalanx +3',}},
		body={ name="Yorium Cuirass", augments={'Spell interruption rate down -10%','Phalanx +3',}},
		hands={ name="Souv. Handsch. +1", augments={'HP+65','Shield skill +15','Phys. dmg. taken -4',}},
		legs="Sakpata's Cuisses",
		feet={ name="Souveran Schuhs +1", augments={'HP+65','Attack+25','Magic dmg. taken -4',}},
		neck={ name="Loricate Torque +1", augments={'Path: A',}},
		waist="Audumbla Sash",
		left_ear="Knightly Earring",
		right_ear="Magnetic Earring",
		left_ring="Defending Ring",
		right_ring="Moonlight Ring",
		back={ name="Rudianos's Mantle", augments={'Damage taken-5%',}},
	}
	
--Midcast Cure / SIR
	sets.midcast.cure = {
	    ammo="Staunch Tathlum +1",
		head="Chev. Armet +2",
		body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		hands="Sakpata's Gauntlets",
		legs={ name="Founder's Hose", augments={'MND+8','Mag. Acc.+7','Breath dmg. taken -3%',}},
		feet={ name="Odyssean Greaves", augments={'"Mag.Atk.Bns."+21','"Fast Cast"+3','INT+12','Mag. Acc.+11',}},
		neck="Moonlight Necklace",
		waist="Audumbla Sash",
		left_ear="Mendi. Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
		right_ring="Eihwaz Ring",
		back={ name="Rudianos's Mantle", augments={'Damage taken-5%',}},
		}

-- Weaponskills
	sets.ws.weapons = {
	    ammo="Aurgelmir Orb",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck={ name="Unmoving Collar +1", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Sroda Ring",
		right_ring="Moonlight Ring",
		back={ name="Rudianos's Mantle", augments={'Damage taken-5%',}},
		}

-- Job abilities
	sets.ja.sentinel = {
	}
	
	sets.ja.shieldbash = {
	}
	
	sets.ja.cover = {
	}
	
	sets.ja.rampart = {
	}
	
	sets.ja.fealty = {
	}
	
	sets.ja.chivalry = {
	}
	
	sets.ja.divineemblem = {
	}
	
	sets.ja.invincible = {
	}
	
	sets.ja.holycircle = {
	}
end


function idle()
	if player.status == "Engaged" then 
		if player.equipment.sub == "Aegis" then
			equip(sets.idle.engagedaegis)
		elseif player.equipment.sub == "Ochain" then
			equip(sets.idle.engagedochain)
		else
			equip(sets.idle.engagedhybrid)
		end
	else
		equip(sets.idle.normal)
	end
end

function status_change(new,old)
	if new == "Engaged" then
		if player.equipment.sub == "Aegis" then
			equip(sets.idle.engagedaegis)
		elseif player.equipment.sub == "Ochain" then
			equip(sets.idle.engagedochain)
		else
			equip(sets.idle.engagedhybrid)
		end
	else
		idle()
	end
end

function precast(spell)
	if spell.type == "WhiteMagic" then
		if spell.english:startswith('Cure') then
			equip(sets.precast.fastcastcure)
		elseif spell.english == "Flash" then
			equip(sets.precast.fastcast)
		else
			equip(sets.precast.fastcast)
		end
	elseif spell.type == "BlueMagic" or spell.type == "BlackMagic" or spell.type == "Ninjutsu" then 
		equip(sets.precast.fastcast)
	elseif spell.type == "WeaponSkill" then 
		equip(sets.ws.weapons)
	elseif spell.type == "JobAbility" then
		if spell.english == "Sentinel" then
			equip(sets.ja.sentinel)
		elseif spell.english == "Shield Bash" then
			equip(sets.ja.shieldbash)
		elseif spell.english == "Cover" then
			equip(sets.ja.cover)
		elseif spell.english == "Rampart" then
			equip(sets.ja.rampart)
		elseif spell.english == "Fealty" then
			equip(sets.ja.fealty)
		elseif spell.english == "Chivalry" then
			equip(sets.ja.chivalry)
		elseif spell.english == "Divine Emblem" then
			equip(sets.ja.divineemblem)
		elseif spell.english == "Invincible" then
			equip(sets.ja.invincible)
		elseif spell.english == "Holy Circle" then
			equip(sets.ja.holycircle)
		else
			idle()
		end
	else
		idle()
	end
end

function midcast(spell)
	if spell.type == "WhiteMagic" then
		if spell.english:startswith('Cure') then
			equip(sets.midcast.cure)
		elseif spell.english == "Flash" then
			equip(sets.midcast.enmity)
		elseif spell.english:startswith('Phalanx') then
			equip(sets.midcast.phalanx)
		else
			equip(sets.midcast.enmitySIR)
		end
	elseif spell.type == "BlueMagic" or spell.english == "Foil" or spell.english == "Poisonga" or spell.english == "Stun" then
		equip(sets.midcast.enmitySIR)
	elseif spell.type == "BlackMagic" or spell.type == "Ninjutsu" then
		equip(sets.midcast.enmitySIR)
	elseif spell.type == "WeaponSkill" then 
		equip(sets.ws.weapons)
	elseif spell.type == "JobAbility" then
		if spell.english == "Sentinel" then
			equip(sets.ja.sentinel)
		elseif spell.english == "Shield Bash" then
			equip(sets.ja.shieldbash)
		elseif spell.english == "Cover" then
			equip(sets.ja.cover)
		elseif spell.english == "Rampart" then
			equip(sets.ja.rampart)
		elseif spell.english == "Fealty" then
			equip(sets.ja.fealty)
		elseif spell.english == "Chivalry" then
			equip(sets.ja.chivalry)
		elseif spell.english == "Divine Emblem" then
			equip(sets.ja.divineemblem)
		elseif spell.english == "Invincible" then
			equip(sets.ja.invincible)
		elseif spell.english == "Holy Circle" then
			equip(sets.ja.holycircle)
		else
			idle()
		end
	else
		idle()
	end
end

function aftercast(spell)
	idle()
end

