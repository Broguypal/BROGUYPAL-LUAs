send_command ('bind numpad9 gs l BLU.lua')
send_command ('bind numpad8 gs l BLUd.lua')

send_command ('bind numpad5 input //aset set omen')
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
	    main="Naegling",
		sub="Sakpata's Sword",
		ammo="Amar Cluster",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck={ name="Bathy Choker +1", augments={'Path: A',}},
		waist="Kasiri Belt",
		left_ear="Eabani Earring",
		right_ear="Infused Earring",
		left_ring="Defending Ring",
		right_ring="Ilabrat Ring",
		back={ name="Rosmerta's Cape", augments={'AGI+20','Eva.+20 /Mag. Eva.+20','Evasion+10','"Fast Cast"+10','Evasion+15',}},
	}
	sets.idle.attack = {
		ammo="Staunch Tathlum +1",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck={ name="Bathy Choker +1", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Eabani Earring",
		right_ear="Infused Earring",
		left_ring="Defending Ring",
		right_ring="Ilabrat Ring",
		back={ name="Rosmerta's Cape", augments={'AGI+20','Eva.+20 /Mag. Eva.+20','Evasion+10','"Fast Cast"+10','Evasion+15',}},
	}
    sets.precast.fastcast = {
	    ammo="Sapience Orb",
		head={ name="Herculean Helm", augments={'Attack+5','"Triple Atk."+3','Accuracy+6',}},
		body="Hashishin Mintan +2",
		hands="Hashi. Bazu. +2",
		legs={ name="Lengo Pants", augments={'INT+8','Mag. Acc.+14','"Mag.Atk.Bns."+13',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck={ name="Unmoving Collar +1", augments={'Path: A',}},
		waist="Witful Belt",
		left_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		right_ear={ name="Hashishin Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
		left_ring="Lebeche Ring",
		right_ring="Prolix Ring",
		back={ name="Rosmerta's Cape", augments={'AGI+20','Eva.+20 /Mag. Eva.+20','Evasion+10','"Fast Cast"+10','Evasion+15',}},
	}
	
	sets.precast.dreamflower = {
		head={ name="Nyame Helm", augments={'Path: B',}},
		body="Hashishin Mintan +2",
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck={ name="Bathy Choker +1", augments={'Path: A',}},
		waist="Witful Belt",
		left_ear="Eabani Earring",
		right_ear="Infused Earring",
		left_ring="Lebeche Ring",
		right_ring="Prolix Ring",
		back={ name="Rosmerta's Cape", augments={'AGI+20','Eva.+20 /Mag. Eva.+20','Evasion+10','"Fast Cast"+10','Evasion+15',}},
	}
	
	sets.precast.diffusion = {
		feet={ name="Luhlaza Charuqs +1", augments={'Enhances "Diffusion" effect',}},
	}
	
    sets.midcast.defence = {
		ammo="Staunch Tathlum +1",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck={ name="Bathy Choker +1", augments={'Path: A',}},
		waist="Kasiri Belt",
		left_ear="Eabani Earring",
		right_ear="Infused Earring",
		left_ring="Stikini Ring",
		right_ring="Ilabrat Ring",
		back={ name="Rosmerta's Cape", augments={'AGI+20','Eva.+20 /Mag. Eva.+20','Evasion+10','"Fast Cast"+10','Evasion+15',}},
		}

	sets.midcast.defmacc = {
	    ammo="Ombre Tathlum +1",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Hashishin Tayt +2",
		feet="Malignance Boots",
		neck="Mirage Stole +1",
		waist="Austerity Belt +1",
		left_ear="Magnetic Earring",
		right_ear={ name="Hashishin Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
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
	
	sets.midcast.aquaveil = {
	}
	
	sets.ws.weapons = {
		ammo="Oshasha's Treatise",
		head="Hashishin Kavuk +2",
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Rep. Plat. Medal",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		left_ring="Sroda Ring",
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
	elseif spell.type == "BlueMagic" or spell.type == "BlackMagic" or spell.type == "WhiteMagic" or spell.type == "Ninjutsu" then 
		if spell.english == "Dream Flower" or spell.english == "Sheep Song" then
			equip(sets.precast.dreamflower)
		else
			equip(sets.precast.fastcast)
		end
	elseif spell.type == "WeaponSkill" then 
		equip(sets.ws.weapons)	
	else
		equip(sets.midcast.defence)
	end
end

function midcast(spell)
	if spell.english == "Phalanx" then
		equip(sets.midcast.phalanx)
	elseif spell.english == "Aquaveil" then
		equip(sets.midcast.aquaveil)
	elseif spell.english == "Dream Flower" or spell.english == "Sheep Song" or spell.english == "Magic Fruit" or spell.english == "Entomb" or spell.english == "Spectral Floe" or spell.english == "Subduction" or spell.english == "Tenebral Crush" or spell.english == "Occultation" then
		equip(sets.midcast.defence)
	else
		equip(sets.midcast.defmacc)
	end
end

function aftercast(spell)
	if player.status == "Engaged" then 
		equip(sets.idle.attack) 
	else
		equip(sets.idle.normal)
	end
end

--[[
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
]]