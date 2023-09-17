send_command ('bind numpad9 gs l WHM.lua')

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
		sub="Sors Shield",
		ammo="Homiliary",
		head="Befouled Crown",
		body="Shamash Robe",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck={ name="Loricate Torque +1", augments={'Path: A',}},
		waist="Carrier's Sash",
		left_ear="Genmei Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Shadow Ring",
		right_ring="Defending Ring",
		back="Shadow Mantle",
		}
		
	sets.idle.attack = {
		sub={ name="Sindri", augments={'Accuracy+41','Attack+24','"Dbl.Atk."+4',}},
		ammo="Staunch Tathlum +1",
		head="Aya. Zucchetto +1",
		body="Ayanmo Corazza +2",
		hands="Aya. Manopolas +2",
		legs="Nyame Flanchard",
		feet="Aya. Gambieras +2",
		neck="Chivalrous Chain",
		waist="Windbuffet Belt +1",
		left_ear="Brutal Earring",
		right_ear="Suppanomimi",
		left_ring="Chirich Ring",
		right_ring="Rajas Ring",
		back="Moonbeam Cape",
		}
		
    sets.precast.fastcast = {
	    sub="Sors Shield",
		ammo="Sapience Orb",
		head={ name="Vanya Hood", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
		body="Vrikodara Jupon",
		hands={ name="Fanatic Gloves", augments={'MP+50','Healing magic skill +10','"Conserve MP"+7','"Fast Cast"+7',}},
		legs="Ebers Pant. +1",
		feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
		waist="Witful Belt",
		left_ear="Mendi. Earring",
		left_ring="Lebeche Ring",
		right_ring="Prolix Ring",
		back={ name="Alaunus's Cape", augments={'MND+10','"Fast Cast"+10',}},
		}
	
	sets.precast.solace = {
		body="Ebers Bliaut +1",
		back={ name="Alaunus's Cape", augments={'MND+10','"Fast Cast"+10',}},
		}
	
    sets.midcast.cure = {
	    sub="Sors Shield",
		ammo="Staunch Tathlum +1",
		head={ name="Vanya Hood", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
		body="Vrikodara Jupon",
		hands={ name="Fanatic Gloves", augments={'MP+50','Healing magic skill +10','"Conserve MP"+7','"Fast Cast"+7',}},
		legs="Ebers Pant. +1",
		feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
		neck="Clr. Torque +1",
		waist="Witful Belt",
		left_ear="Mendi. Earring",
		right_ear="Glorious Earring",
		left_ring="Lebeche Ring",
		right_ring="Evanescence Ring",
		back={ name="Alaunus's Cape", augments={'MND+10','"Fast Cast"+10',}},
		}
	sets.midcast.cursna = {
	   sub="Sors Shield",
		ammo="Staunch Tathlum +1",
		head="Nyame Helm",
		body="Shamash Robe",
		hands={ name="Fanatic Gloves", augments={'MP+50','Healing magic skill +10','"Conserve MP"+7','"Fast Cast"+7',}},
		legs={ name="Lengo Pants", augments={'INT+4','Mag. Acc.+2','"Mag.Atk.Bns."+4',}},
		feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
		neck={ name="Loricate Torque +1", augments={'Path: A',}},
		waist="Witful Belt",
		left_ear="Beatific Earring",
		right_ear="Glorious Earring",
		left_ring="Haoma's Ring",
		right_ring="Evanescence Ring",
		back={ name="Alaunus's Cape", augments={'MND+10','"Fast Cast"+10',}},
		}
	
	sets.ws.weapons = {
		ammo="Staunch Tathlum +1",
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Suppanomimi",
		left_ring="Chirich Ring",
		right_ring="Rajas Ring",
		back="Moonbeam Cape",
		}
end


function idle()
	if player.status == "Engaged" and
	player.equipment.main == "Beryllium mace +1" then 
	equip(sets.idle.attack) 
	else
	equip(sets.idle.normal)
	end
end

function status_change(new,old)
	if new == "Engaged" and 
	player.equipment.main == "Beryllium mace +1" then
	equip(sets.idle.attack)
	else
	idle()
	end
end

function precast(spell)
	if spell.english == "Afflatus Solace" then 
	equip(sets.precast.solace)
	elseif spell.type == "BlueMagic" or spell.type == "BlackMagic" or spell.type == "WhiteMagic" then 
	equip(sets.precast.fastcast)
	elseif spell.type == "WeaponSkill" then 
	equip(sets.ws.weapons)	
	else
	idle()
	end
end

function midcast(spell)
	if spell.english == "Cursna" then
	equip(sets.midcast.cursna)
	else
	equip(sets.midcast.cure)
	end
end

function aftercast(spell)
	idle()
end

