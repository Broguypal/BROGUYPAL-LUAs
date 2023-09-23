send_command ('bind numpad9 gs l BLU.lua')
send_command ('bind numpad8 gs l BLUd.lua')
send_command ('bind f12 input //fillmode')

send_command ('bind numpad6 input //aset set melee')
send_command ('bind numpad5 input //aset set acc')
send_command ('bind numpad4 input //aset set aoe')
send_command ('bind numpad3 input //aset set treasure')

send_command ('bind numpad1 input /mount "Crawler"')
send_command ('bind numpad2 input /dismount')

send_command ('bind numpad3 input //aset set tank')
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
		head="Malignance Chapeau",
		body="Hashishin Mintan +2",
		hands="Hashi. Bazu. +2",
		legs={ name="Carmine Cuisses +1", augments={'HP+80','STR+12','INT+12',}},
		feet="Malignance Boots",
		neck="Sibyl Scarf",
		waist="Flume Belt +1",
		left_ear="Hearty Earring",
		right_ear="Suppanomimi",
		left_ring="Defending Ring",
		right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
		back={ name="Rosmerta's Cape", augments={'Accuracy+20 Attack+20','Accuracy+5','"Store TP"+10',}},
	}
	sets.idle.attack = {
		ammo="Focal Orb",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Defiant Collar",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Suppanomimi",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Defending Ring",
		right_ring="Fickblix's Ring",
		back={ name="Rosmerta's Cape", augments={'Accuracy+20 Attack+20','Accuracy+5','"Store TP"+10',}},
	}
    sets.precast.fastcast = {
		ammo="Sapience Orb",
		head={ name="Herculean Helm", augments={'Attack+5','"Triple Atk."+3','Accuracy+6',}},
		body="Hashishin Mintan +2",
		hands="Jhakri Cuffs +2",
		legs={ name="Lengo Pants", augments={'INT+4','Mag. Acc.+2','"Mag.Atk.Bns."+4',}},
		feet="Jhakri Pigaches +1",
		neck={ name="Unmoving Collar +1", augments={'Path: A',}},
		waist="Witful Belt",
		left_ear="Friomisi Earring",
		right_ear="Hecate's Earring",
		left_ring="Jhakri Ring",
		right_ring="Lebeche Ring",
		back="Swith Cape",
	}
	    sets.precast.diffusion = {
		ammo="Sapience Orb",
		head={ name="Herculean Helm", augments={'Attack+5','"Triple Atk."+3','Accuracy+6',}},
		body={ name="Taeon Tabard", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		hands="Jhakri Cuffs +2",
		legs={ name="Lengo Pants", augments={'INT+4','Mag. Acc.+2','"Mag.Atk.Bns."+4',}},
		feet="Luhlaza Charuqs +1",
		neck="Nefarious Collar",
		waist="Witful Belt",
		left_ear="Friomisi Earring",
		right_ear="Hecate's Earring",
		left_ring="Jhakri Ring",
		right_ring="Lebeche Ring",
		back="Swith Cape",
	}
    sets.midcast.spelldamage = {
		ammo="Staunch Tathlum +1",
		head="Hashishin Kavuk +2",
		body="Hashishin Mintan +2",
		hands="Hashi. Bazu. +2",
		legs="Hashishin Tayt +2",
		feet="Hashi. Basmak +2",
		neck="Sibyl Scarf",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear="Hecate's Earring",
		left_ring="Persis Ring",
		right_ring="Jhakri Ring",
		back="Moonbeam Cape",
		}
	sets.midcast.phalanx = {
		ammo="Staunch Tathlum +1",
		head="Malignance Chapeau",
		body={ name="Taeon Tabard", augments={'Phalanx +3',}},
		hands={ name="Taeon Gloves", augments={'Phalanx +3',}},
		legs={ name="Taeon Tights", augments={'Phalanx +3',}},
		feet={ name="Taeon Boots", augments={'Phalanx +3',}},
		neck={ name="Loricate Torque +1", augments={'Path: A',}},
		waist="Aswang Sash",
		left_ear="Magnetic Earring",
		right_ear="Halasz Earring",
		left_ring="Defending Ring",
		right_ring="Evanescence Ring",
		back="Moonbeam Cape",
	}
	sets.ws.weapons = {
		ammo="Oshasha's Treatise",
		head="Hashishin Kavuk +2",
		body="Gleti's Cuirass",
		hands="Jhakri Cuffs +2",
		legs="Gleti's Breeches",
		feet="Gleti's Boots",
		neck="Rep. Plat. Medal",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		left_ring="Petrov Ring",
		right_ring="Fickblix's Ring",
		back={ name="Rosmerta's Cape", augments={'Accuracy+20 Attack+20','Weapon skill damage +10%',}},
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
	if spell.name == "Diffusion" then
		equip(sets.precast.diffusion)
	elseif spell.type == "BlueMagic" or spell.type == "BlackMagic" or spell.type == "WhiteMagic" then 
		equip(sets.precast.fastcast)
	elseif spell.type == "WeaponSkill" then 
		equip(sets.ws.weapons)	
	else
		equip(sets.midcast.enmity)
	end
end

function midcast(spell)
	if spell.english == "Phalanx" then
		equip(sets.midcast.phalanx)
	else
		equip(sets.midcast.spelldamage)
	end
end

function aftercast(spell)
	idle()
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
