--  ____                                          _ _     
-- |  _ \                                        | ( )    
-- | |_) |_ __ ___   __ _ _   _ _   _ _ __   __ _| |/ ___ 
-- |  _ <| '__/ _ \ / _` | | | | | | | '_ \ / _` | | / __|
-- | |_) | | | (_) | (_| | |_| | |_| | |_) | (_| | | \__ \
-- |____/|_|  \___/ \__, |\__,_|\__, | .__/ \__,_|_| |___/
--                   __/ |       __/ | |                  
--                  |___/       |___/|_|    


function file_unload()
    send_command('unbind numpad9')
    send_command('unbind numpad8')
    send_command('unbind numpad7')
    send_command('unbind numpad6')
	send_command('unbind numpad5')
	send_command('unbind numpad4')
	send_command('unbind numpad3')
	send_command('unbind numpad2')
	send_command('unbind numpad1')
	send_command('unbind f8')
	send_command('unbind f9')
	send_command('unbind f10')
	send_command('unbind f11')
	send_command('unbind f12')
    enable("main","sub","range","ammo","head","neck","ear1","ear2","body","hands","ring1","ring2","back","waist","legs","feet")
end

------------------------DO NOT TOUCH BELOW----------------------------------------
function get_sets()

send_command('bind numpad9 gs c ToggleHybrid')
send_command('bind numpad8 gs c ToggleDefence')

send_command ('bind numpad0 gs c RangedAttack')
 
 Mode = "HybridPhys"
 
 Modes = {'HybridPhys','HybridMag','Defence'}
 
    sets.idle = {}                  -- Leave this empty
	sets.engaged = {}				-- Leave this empty
    sets.precast = {}               -- leave this empty    
    sets.midcast = {}               -- leave this empty    
    sets.aftercast = {}             -- leave this empty
	sets.ws = {}					-- Leave this empty
	sets.ja = {}					-- Leave this empty
 
 ------------------ DO NOT TOUCH ABOVE (BUT TOTALLY TOUCH BELOW THIS POINT) ---------
 

---- IDLE SETS ----
    sets.idle.normal = {
		range="Fomalhaut",
		ammo="Chrono Bullet",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands="Malignance Gloves",
		legs={ name="Carmine Cuisses +1", augments={'HP+80','STR+12','INT+12',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck={ name="Loricate Torque +1", augments={'Path: A',}},
		waist="Plat. Mog. Belt",
		left_ear="Infused Earring",
		right_ear="Eabani Earring",
		left_ring="Defending Ring",
		right_ring="Warden's Ring",
		back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10','Phys. dmg. taken-10%',}},
	}
	
	sets.idle.magic = set_combine(sets.idle.normal,{
		range="Molybdosis",
	})

	sets.idle.tank = {
		ammo="Chrono Bullet",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck={ name="Loricate Torque +1", augments={'Path: A',}},
		waist="Plat. Mog. Belt",
		left_ear="Infused Earring",
		right_ear="Eabani Earring",
		left_ring="Defending Ring",
		right_ring="Warden's Ring",
		back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10','Phys. dmg. taken-10%',}},
	}
	
---- ENGAGED SETS ----

	sets.engaged.normal = {
		range="Fomalhaut",
		ammo="Chrono Bullet",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Rep. Plat. Medal",
		waist="Reiki Yotai",
		left_ear="Eabani Earring",
		right_ear="Suppanomimi",
		left_ring="Defending Ring",
		right_ring="Fickblix's Ring",
		back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10','Phys. dmg. taken-10%',}},
	}

	sets.engaged.magic = set_combine(sets.engaged.normal,{
		range="Molybdosis",
	})

---- PRESHOT SET ----
    sets.precast.preshot = {
		head="Ikenga's Hat",
		body="Oshosi Vest +1",
		hands="Ikenga's Gloves",
		legs="Oshosi Trousers",
		feet="Ikenga's Clogs",
		neck="Sanctity Necklace",
		waist="Impulse Belt",
		left_ear="Telos Earring",
		right_ear="Crep. Earring",
		left_ring="Ilabrat Ring",
		right_ring="Petrov Ring",
		back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
	}

---- MIDCAST SETS ----

    sets.midcast.midshot = {
		head="Malignance Chapeau",
		body="Chasseur's Frac +2",
		hands="Malignance Gloves",
		legs="Chas. Culottes +2",
		feet="Malignance Boots",
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Telos Earring",
		right_ear="Crep. Earring",
		left_ring="Ilabrat Ring",
		right_ring="Petrov Ring",
		back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
	}

---- WEAPONSKILL SETS ----
	sets.ws.general = {
		ammo="Chrono Bullet",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Epaminondas's Ring",
		right_ring="Sroda Ring",
		back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%','Mag. Evasion+15',}},
	}
	
	sets.ws.laststand = {
		ammo="Chrono Bullet",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body="Ikenga's Vest",
		hands="Chasseur's Gants +2",
		legs="Ikenga's Trousers",
		feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Epaminondas's Ring",
		right_ring="Sroda Ring",
		back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%','Mag. Evasion+15',}},
	}
	
	sets.ws.savageblade = {
		ammo="Chrono Bullet",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands="Chasseur's Gants +2",
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
		neck="Rep. Plat. Medal",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Epaminondas's Ring",
		right_ring="Sroda Ring",
		back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%','Mag. Evasion+15',}},
	}
	
	sets.ws.evisceration = {
		ammo="Chrono Bullet",
		head="Ikenga's Hat",
		body="Ikenga's Vest",
		hands="Malignance Gloves",
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet="Ikenga's Clogs",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Mache Earring +1",
		left_ring="Apate Ring",
		right_ring="Ilabrat Ring",
		back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10','Phys. dmg. taken-10%',}},
	}
	
	sets.ws.hotshot = {
		ammo="Chrono Bullet",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
		neck="Fotia Gorget",
		waist="Skrymir Cord",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Friomisi Earring",
		left_ring="Epaminondas's Ring",
		right_ring="Ilabrat Ring",
		back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%','Mag. Evasion+15',}},
	}
	
	sets.ws.leadensalute = {
		ammo="Chrono Bullet",
		head="Pixie Hairpin +1",
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
		neck="Sanctity Necklace",
		waist="Skrymir Cord",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Friomisi Earring",
		left_ring="Epaminondas's Ring",
		right_ring="Ilabrat Ring",
		back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%','Mag. Evasion+15',}},
	}
	
	sets.ws.wildfire = {
		ammo="Chrono Bullet",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
		neck="Sanctity Necklace",
		waist="Skrymir Cord",
		left_ear="Crematio Earring",
		right_ear="Friomisi Earring",
		left_ring="Epaminondas's Ring",
		right_ring="Ilabrat Ring",
		back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%','Mag. Evasion+15',}},
	}


---- **** IMPORTANT ***** ONLY NON-RANGED WEAPONSKILLS SHOULD HAVE HAUKSBOK BULLET EQUIPPED ******
	sets.ws.aeolianedge = {
		ammo="Hauksbok Bullet",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Sanctity Necklace",
		waist="Skrymir Cord",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Friomisi Earring",
		left_ring="Epaminondas's Ring",
		right_ring="Ilabrat Ring",
		back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%','Mag. Evasion+15',}},
	}

---- JOB ABILITY SETS ----
	sets.ja.quickdraw = {
		ammo="Hauksbok Bullet",
		head="Ikenga's Hat",
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
		neck="Sanctity Necklace",
		waist="Skrymir Cord",
		left_ear="Crematio Earring",
		right_ear="Friomisi Earring",
		left_ring="Stikini Ring +1",
		right_ring="Shiva Ring +1",
		back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%','Mag. Evasion+15',}},
	}
	
	sets.ja.quickdrawACC = {
		ammo="Hauksbok Bullet",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
		neck="Sanctity Necklace",
		waist="Skrymir Cord",
		left_ear="Friomisi Earring",
		right_ear={ name="Chas. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+14','Mag. Acc.+14','Crit.hit rate+5',}},
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%','Mag. Evasion+15',}},
	}
	
	sets.ja.roll = {
		range="Compensator",
		ammo="Chrono Bullet",
		head={ name="Lanun Tricorne +1", augments={'Enhances "Winning Streak" effect',}},
		hands="Chasseur's Gants +2",
		neck="Regal Necklace",
		left_ring="Luzaf's Ring",
		back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%','Mag. Evasion+15',}},
	}
	
	sets.ja.wildcard = {
		feet={ name="Lanun Bottes +3", augments={'Enhances "Wild Card" effect',}},
	}
	
end

-------- DO NOT TOUCH BELOW IF COMPLETELY NEW AT GEARSWAP -- Everything above should be all your basic needs.
function idle()
	if Mode == "Defence" then
		equip(sets.idle.tank)
	elseif Mode == "HybridPhys" then
		if player.status == "Engaged" then
			equip(sets.engaged.normal)
		else
			equip(sets.idle.normal)
		end
	elseif Mode == "HybridMag" then
		if player.status == "Engaged" then
			equip(sets.engaged.magic)
		else
			equip(sets.idle.magic)
		end
	end
end

function status_change(new,old)
	if new == "Engaged" then
		idle()
	else
		idle()
	end
end

function precast(spell,action,spellMap,eventArgs)
	if spell.action_type == 'Ranged Attack' then
		if player.equipment.ammo == "Hauksbok Bullet" then
			cancel_spell()
			add_to_chat(123,'Abort: Don\'t shoot your good ammo!')
			idle()
		else
			equip(sets.precast.preshot)
		end
	elseif spell.type == 'WeaponSkill' then
		if player.equipment.ammo == "Hauksbok Bullet" then
			cancel_spell()
			add_to_chat(123,'Wong bullet (safety), please recast!')
			idle()
		elseif spell.english == "Last Stand" then
			equip(sets.ws.laststand)
		elseif spell.english == "Savage Blade" then
			equip(sets.ws.savageblade)
		elseif spell.english == "Evisceration" then
			equip(sets.ws.evisceration)
		elseif spell.english == "Hot Shot" then
			equip(sets.ws.hotshot)
		elseif spell.english == "Leaden Salute" then
			equip(sets.ws.leadensalute)
		elseif spell.english == "Wildfire" then
			equip(sets.ws.wildfire)
		elseif spell.english == "Aeolian Edge" then
			equip(sets.ws.aeolianedge)
		else
			equip(sets.ws.general)
		end
	elseif spell.type == "JobAbility" then
		if spell.english == "Double-Up" then
			equip(sets.ja.roll)
		elseif spell.english == "Wild Card" then
			equip(sets.ja.wildcard)
		end
	elseif spell.type == "CorsairRoll" then
		equip(sets.ja.roll)
	elseif spell.type == "CorsairShot" then
		if spell.english == "Dark Shot" or spell.english == "Light Shot" then
			equip(sets.ja.quickdrawACC)
		else
			equip(sets.ja.quickdraw)
		end
	end
end

function midcast(spell,action,spellMap,eventArgs)
	if spell.action_type == 'Ranged Attack' then
		if player.equipment.ammo == "Hauksbok Bullet" then
			cancel_spell()
			add_to_chat(123,'Abort: Don\'t shoot your good ammo!')
			idle()
		else
			equip(sets.midcast.midshot)
		end
	end
end

function aftercast(spell,action,spellMap,eventArgs)
	idle()
end

function self_command(command)
	if command == "RangedAttack" then
		send_command ('input /ra <t>')
	elseif command == "ToggleHybrid" then
		if Mode == "HybridMag" or Mode == "Defence" then
			Mode = "HybridPhys"
			send_command('console_echo "Hybrid Physical"')
			idle()
		elseif Mode == "HybridPhys" then
			Mode = "HybridMag"
			send_command('console_echo "Hybrid Magic"')
			idle()
		end
	elseif command == "ToggleDefence" then
		if Mode == "HybridPhys" or Mode == "HybridMag" or Mode == "Defence" then
			Mode = "Defence"
			send_command('console_echo "Defence"')
			idle()
		end
	end
end