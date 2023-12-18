send_command ('bind numpad9 gs l BLU.lua')
send_command ('bind numpad8 gs l BLUd.lua')

send_command ('bind numpad6 input //aset set melee')
send_command ('bind numpad5 input //aset set acc')
send_command ('bind numpad4 input //aset set odyssey')


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
		main="Sakpata's Sword",
		sub="Bunzi's Rod",
		ammo="Amar Cluster",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck={ name="Bathy Choker +1", augments={'Path: A',}},
		waist="Plat. Mog. Belt",
		left_ear="Eabani Earring",
		right_ear="Infused Earring",
		left_ring="Warden's Ring",
		right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
		back={ name="Rosmerta's Cape", augments={'AGI+20','Eva.+20 /Mag. Eva.+20','Evasion+10','"Fast Cast"+10','Evasion+15',}},
	}
	sets.idle.attack = {
		ammo="Coiste Bodhar",
		head="Malignance Chapeau",
		body="Hashishin Mintan +2",
		hands="Hashi. Bazu. +2",
		legs="Hashishin Tayt +2",
		feet="Malignance Boots",
		neck="Mirage Stole +1",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Genmei Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Fickblix's Ring",
		right_ring="Epona's Ring",
		back={ name="Rosmerta's Cape", augments={'Accuracy+20 Attack+20','Accuracy+5','"Store TP"+10',}},
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
		main="Sakpata's Sword",
		sub="Bunzi's Rod",
		ammo="Pemphredo Tathlum",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Mirage Stole +1",
		waist="Plat. Mog. Belt",
		left_ear="Genmei Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back="Moonbeam Cape",
		}
	sets.midcast.phalanx = {
	    ammo="Sapience Orb",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
		hands={ name="Taeon Gloves", augments={'Spell interruption rate down -10%','Phalanx +3',}},
		legs={ name="Taeon Tights", augments={'Spell interruption rate down -10%','Phalanx +3',}},
		feet={ name="Taeon Boots", augments={'Spell interruption rate down -10%','Phalanx +3',}},
		neck="Mirage Stole +1",
		waist="Plat. Mog. Belt",
		left_ear="Genmei Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
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
	if spell.english == "Phalanx" then
		equip(sets.midcast.phalanx)
	else
		equip(sets.midcast.enmity)
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
