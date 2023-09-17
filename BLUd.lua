send_command ('bind numpad9 gs l BLU.lua')
send_command ('bind numpad8 gs l BLUd.lua')

send_command ('bind numpad6 input //aset set melee')
send_command ('bind numpad5 input //aset set acc')
send_command ('bind numpad4 input //aset set aoe')


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
		ammo="Homiliary",
		head="Nyame Helm",
		body="Shamash Robe",
		hands="Nyame Gauntlets",
		legs={ name="Carmine Cuisses +1", augments={'HP+80','STR+12','INT+12',}},
		feet="Nyame Sollerets",
		neck="Loricate Torque",
		waist="Flume Belt +1",
		left_ear="Hearty Earring",
		right_ear="Suppanomimi",
		left_ring="Defending Ring",
		right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
		back={ name="Rosmerta's Cape", augments={'Accuracy+20 Attack+20','Accuracy+5','"Store TP"+10',}},
	}
	sets.idle.attack = {
		ammo="Staunch Tathlum +1",
		head="Aya. Zucchetto +2",
		body="Ayanmo Corazza +2",
		hands="Aya. Manopolas +2",
		legs="Nyame Flanchard",
		--legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet="Aya. Gambieras +2",
		neck={ name="Loricate Torque +1", augments={'Path: A',}},
		waist="Cetl Belt",
		left_ear="Brutal Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Defending Ring",
		right_ring="Epona's Ring",
		back="Moonbeam Cape",
	}
    sets.precast.fastcast = {
		ammo="Sapience Orb",
		head={ name="Herculean Helm", augments={'Attack+5','"Triple Atk."+3','Accuracy+6',}},
		body={ name="Taeon Tabard", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		hands="Jhakri Cuffs +2",
		legs={ name="Lengo Pants", augments={'INT+4','Mag. Acc.+2','"Mag.Atk.Bns."+4',}},
		feet="Jhakri Pigaches +1",
		neck="Nefarious Collar",
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
	
    sets.midcast.enmity = {
		ammo="Staunch Tathlum +1",
		head="Nyame Helm",
		body="Shamash Robe",
		hands="Rawhide Gloves",
		legs={ name="Carmine Cuisses +1", augments={'HP+80','STR+12','INT+12',}},
		feet="Nyame Sollerets",
		neck={ name="Loricate Torque +1", augments={'Path: A',}},
		waist="Eschan Stone",
		left_ear="Magnetic Earring",
		right_ear="Halasz Earring",
		left_ring="Persis Ring",
		right_ring="Evanescence Ring",
		back="Moonbeam Cape",
		}
		
	sets.ws.weapons = {
	    ammo="Crepuscular Pebble",
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Jhakri Cuffs +2",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Jhakri Ring",
		right_ring="Rajas Ring",
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
	equip(sets.midcast.enmity)
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
