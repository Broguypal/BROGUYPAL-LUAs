send_command ('bind numpad9 gs l THF.lua')



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
		ammo="Coiste Bodhar",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Sanctity Necklace",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Suppanomimi",
		right_ear={ name="Skulker's Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+9','Mag. Acc.+9',}},
		left_ring="Fickblix's Ring",
		right_ring="Gere Ring",
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
		midcast(spell)
	else
		equip(sets.midcast.enmity)
	end
end

function midcast(spell)
	if spell.type == "WeaponSkill" then 
		equip(sets.ws.weapons)	
	elseif spell.type == "JobAbility" then
		equip(sets.ja.waltz)
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
