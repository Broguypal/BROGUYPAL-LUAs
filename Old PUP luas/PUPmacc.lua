--  ____                                          _ _     
-- |  _ \                                        | ( )    
-- | |_) |_ __ ___   __ _ _   _ _   _ _ __   __ _| |/ ___ 
-- |  _ <| '__/ _ \ / _` | | | | | | | '_ \ / _` | | / __|
-- | |_) | | | (_) | (_| | |_| | |_| | |_) | (_| | | \__ \
-- |____/|_|  \___/ \__, |\__,_|\__, | .__/ \__,_|_| |___/
--                   __/ |       __/ | |                  
--                  |___/       |___/|_|    
-- MAGIC PUP LUA - HARLE TANK / BLM / WHM / RDM

function file_unload()
    send_command('unbind numpad9')
    send_command('unbind numpad8')
    send_command('unbind numpad7')
    send_command('unbind numpad6')
	send_command('unbind numpad5')
	send_command('unbind numpad4')
	send_command('unbind numpad3')
    enable("main","sub","range","ammo","head","neck","ear1","ear2","body","hands","ring1","ring2","back","waist","legs","feet")
end


send_command ('bind numpad9 gs l PUP.lua')
send_command ('bind numpad8 gs l PUPo.lua')
send_command ('bind numpad7 gs l PUPm.lua')


send_command ('bind numpad6 input //acon equipset buff')
send_command ('bind numpad5 input //acon equipset cure')
send_command ('bind numpad4 input //acon equipset nukeacc')
send_command ('bind numpad3 input //acon equipset sortie')


send_command ('bind numpad1 input /mount "Noble Chocobo"')
send_command ('bind numpad2 input /dismount')


function get_sets()
  
    sets.idle = {}                  
    sets.precast = {}   
	sets.ws = {}
	sets.ja = {}
    sets.midcast = {}                 
    sets.aftercast = {}
	
 	
--------------------Gear Sets------------------------

--Normal idle
	sets.idle.tank = {
		ammo="Automat. Oil +3",
		head="Malignance Chapeau",
		body="Adamantite Armor",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Hermes' Sandals",
		neck="Sanctity Necklace",
		waist="Moonbow Belt +1",
		left_ear="Genmei Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="C. Palug Ring",
		right_ring="Defending Ring",
		back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','Crit.hit rate+10','Phys. dmg. taken-10%',}},
	}

--Pet turtle (Differs in that it wont change sets if Master engages
	sets.idle.turtle = {
--		main="Gnafron's Adargas",
	    range="Animator P +1",
		ammo="Automat. Oil +3",
       	head={ name="Anwig Salade", augments={'Attack+3','Pet: Damage taken -10%','Accuracy+3','Pet: Haste+5',}},
		body={ name="Rao Togi +1", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
		hands={ name="Rao Kote +1", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
		legs={ name="Rao Haidate +1", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
		feet={ name="Rao Sune-Ate +1", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
		neck="Shepherd's Chain",
		waist="Isa Belt",
		left_ear="Rimeice Earring",
		right_ear="Hypaspist Earring",
		left_ring="C. Palug Ring",
		right_ring="Thur. Ring +1",
		back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+5 Pet: Rng. Acc.+5','Pet: Haste+10','System: 1 ID: 1247 Val: 4',}},
	}

-- harletank idle
	sets.idle.harle = {
		--main={ name="Xiucoatl", augments={'Path: C',}},
		--range="Animator P +1",
		ammo="Automat. Oil +3",
		head={ name="Anwig Salade", augments={'Attack+3','Pet: Damage taken -10%','Accuracy+3','Pet: Haste+5',}},
		body={ name="Taeon Tabard", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		hands={ name="Taeon Gloves", augments={'Pet: Accuracy+19 Pet: Rng. Acc.+19','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		legs={ name="Taeon Tights", augments={'Pet: Accuracy+20 Pet: Rng. Acc.+20','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		feet="Foire Bab. +1",
		neck="Shepherd's Chain",
		waist="Klouskap Sash +1",
		left_ear="Burana Earring",
		right_ear="Hypaspist Earring",
		left_ring="Fickblix's Ring",
		right_ring="Thur. Ring +1",
		back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+5 Pet: Rng. Acc.+5','Pet: Haste+10','System: 1 ID: 1247 Val: 4',}},
	}
	
--pet fastcast idle set
	sets.idle.petfastcast = {
		--main={ name="Ohtas", augments={'Accuracy+70','Pet: Accuracy+70','Pet: Haste+10%',}},
		--range="Animator P II +1",
		ammo="Automat. Oil +3",
		head={ name="Naga Somen", augments={'Pet: MP+80','Automaton: "Cure" potency +4%','Automaton: "Fast Cast"+3',}},
		body={ name="Naga Samue", augments={'Pet: MP+80','Automaton: "Cure" potency +4%','Automaton: "Fast Cast"+3',}},
		hands={ name="Naga Tekko", augments={'Pet: MP+80','Automaton: "Cure" potency +4%','Automaton: "Fast Cast"+3',}},
		legs={ name="Pitre Churidars +3", augments={'Enhances "Ventriloquy" effect',}},
		feet={ name="Naga Kyahan", augments={'Pet: MP+80','Automaton: "Cure" potency +4%','Automaton: "Fast Cast"+3',}},
		neck="Empath Necklace",
		waist="Incarnation Sash",
		right_ear="Burana Earring",
		right_ring="Thur. Ring +1",
	}

-- Master only TP Set
	sets.idle.master = {
		--main={ name="Xiucoatl", augments={'Path: C',}},
		--range="Animator P +1",
		ammo="Automat. Oil +3",
		head="Malignance Chapeau",
		body="Mpaca's Doublet",
		hands="Karagoz Guanti +3",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Shulmanu Collar",
		waist="Moonbow Belt +1",
		left_ear="Schere Earring",
		right_ear={ name="Kara. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+15','Mag. Acc.+15','"Store TP"+5',}},
		left_ring="Niqmaddu Ring",
		right_ring="Gere Ring",
		back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','Crit.hit rate+10','Phys. dmg. taken-10%',}},
	}

--Master only TP - Godhands/xiucoatl
	sets.idle.mastergodhands = {
	    range="Animator P +1",
		ammo="Automat. Oil +3",
		head="Malignance Chapeau",
		body="Mpaca's Doublet",
		hands="Karagoz Guanti +3",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Shulmanu Collar",
		waist="Moonbow Belt +1",
		left_ear="Mache Earring +1",
		right_ear={ name="Kara. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+15','Mag. Acc.+15','"Store TP"+5',}},
		left_ring="Niqmaddu Ring",
		right_ring="Gere Ring",
		back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','Crit.hit rate+10','Phys. dmg. taken-10%',}},
	}
	
-- Precast fastcast (MASTER)
	sets.precast.fastcast = {
		head={ name="Herculean Helm", augments={'Attack+5','"Triple Atk."+3','Accuracy+6',}},
		body={ name="Taeon Tabard", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		left_ring="Lebeche Ring",
		right_ring="Prolix Ring",
		back="Swith Cape",
	}

-- Precast weaponskills
    sets.ws.weaponskill = {
	    head="Mpaca's Cap",
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Schere Earring",
		right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		left_ring="Niqmaddu Ring",
		right_ring="Sroda Ring",
		back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','Crit.hit rate+10','Phys. dmg. taken-10%',}},
	}

	sets.ws.stringingpummel = {
		head="Mpaca's Cap",
		body="Mpaca's Doublet",
		hands="Mpaca's Gloves",
		legs="Mpaca's Hose",
		feet="Mpaca's Boots",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Schere Earring",
		right_ear={ name="Kara. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+15','Mag. Acc.+15','"Store TP"+5',}},
		left_ring="Niqmaddu Ring",
		right_ring="Gere Ring",
		back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','Crit.hit rate+10','Phys. dmg. taken-10%',}},
		}
	
	sets.ws.victorysmite = {
	    head="Mpaca's Cap",
		body="Mpaca's Doublet",
		hands="Mpaca's Gloves",
		legs="Mpaca's Hose",
		feet="Mpaca's Boots",
		neck="Fotia Gorget",
		waist="Moonbow Belt +1",
		left_ear="Schere Earring",
		right_ear={ name="Kara. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+15','Mag. Acc.+15','"Store TP"+5',}},
		left_ring="Niqmaddu Ring",
		right_ring="Gere Ring",
		back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','Crit.hit rate+10','Phys. dmg. taken-10%',}},
	}

	sets.ws.shijinspiral = {
	    head="Mpaca's Cap",
		body="Mpaca's Doublet",
		hands="Mpaca's Gloves",
		legs="Mpaca's Hose",
		feet="Mpaca's Boots",
		neck="Fotia Gorget",
		waist="Moonbow Belt +1",
		left_ear="Schere Earring",
		right_ear={ name="Kara. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+15','Mag. Acc.+15','"Store TP"+5',}},
		left_ring="Niqmaddu Ring",
		right_ring="Gere Ring",
		back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','Crit.hit rate+10','Phys. dmg. taken-10%',}},
	}

	sets.ws.howlingfist = {
	    head="Mpaca's Cap",
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs="Mpaca's Hose",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Shulmanu Collar",
		waist="Moonbow Belt +1",
		left_ear="Schere Earring",
		right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		left_ring="Niqmaddu Ring",
		right_ring="Gere Ring",
		back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','Crit.hit rate+10','Phys. dmg. taken-10%',}},
	}

	sets.ws.ragingfists = {
	    head="Mpaca's Cap",
		body="Mpaca's Doublet",
		hands="Mpaca's Gloves",
		legs="Mpaca's Hose",
		feet="Mpaca's Boots",
		neck="Fotia Gorget",
		waist="Moonbow Belt +1",
		left_ear="Schere Earring",
		right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		left_ring="Niqmaddu Ring",
		right_ring="Gere Ring",
		back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','Crit.hit rate+10','Phys. dmg. taken-10%',}},
	}

	sets.ws.asuranfists = {
	    head="Kara. Cappello +3",
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs="Mpaca's Hose",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Schere Earring",
		right_ear={ name="Kara. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+15','Mag. Acc.+15','"Store TP"+5',}},
		left_ring="Niqmaddu Ring",
		right_ring="Sroda Ring",
		back={ name="Visucius's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+5','Crit.hit rate+10','Phys. dmg. taken-10%',}},
	}
	
-- Precast overload
	sets.ja.overload = {
		body="Kara. Farsetto +1",
		hands="Foire Dastanas +1",
		neck="Bfn. Collar +1",
		left_ear="Burana Earring",
		back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+5 Pet: Rng. Acc.+5','Pet: Haste+10','System: 1 ID: 1247 Val: 4',}},
	}

-- Precast individual spells
    sets.ja.optimization = {
		head={ name="Pitre Taj +3", augments={'Enhances "Optimization" effect',}},
	}
	sets.ja.overdrive = {
		body={ name="Pitre Tobe +3", augments={'Enhances "Overdrive" effect',}},
	}
	sets.ja.finetuning = {
		hands={ name="Pitre Dastanas +3", augments={'Enhances "Fine-Tuning" effect',}},
	}
	sets.ja.ventriloquy = {
		hands={ name="Pitre Dastanas +3", augments={'Enhances "Fine-Tuning" effect',}},
	}
	sets.ja.rolereversal = {
		feet={ name="Pitre Babouches +3", augments={'Enhances "Role Reversal" effect',}},
	}
	sets.ja.tacticalswitch = {
	    feet="Karagoz Scarpe +1",
	}
	sets.ja.repair = {
	    feet="Foire Bab. +1",
	}
	
-- Master Midcast
	sets.midcast.spelldamage = {
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Deviant Necklace",
		left_ear="Saviesa Pearl",
		right_ear="Friomisi Earring",
		left_ring="Defending Ring",
		right_ring="Stikini Ring",
	}

-- Midcast for trusts - want to have 119 gear in head,body,hands,legs,feet.
	sets.midcast.trust = {
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
	}

-- pet midcast BLM
	sets.midcast.nuke = {
--	    main="Sakpata's Fists",
--		range="Animator P II +1",
		ammo="Automat. Oil +3",
		head="Kara. Cappello +3",
		body="Kara. Farsetto +2",
		hands="Karagoz Guanti +3",
		legs="Kara. Pantaloni +2",
		feet="Mpaca's Boots",
		neck="Adad Amulet",
		waist="Incarnation Sash",
		left_ear="Crep. Earring",
		right_ear={ name="Kara. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+15','Mag. Acc.+15','"Store TP"+5',}},
		left_ring="Fickblix's Ring",
		right_ring="C. Palug Ring",
		back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+5 Pet: Rng. Acc.+5','Pet: Haste+10','System: 1 ID: 1247 Val: 4',}},
	}

-- pet midcast WHM
	sets.midcast.cure = {
		--main="Gnafron's Adargas",
		--range="Animator P II +1",
		ammo="Automat. Oil +3",
		head={ name="Naga Somen", augments={'Pet: MP+80','Automaton: "Cure" potency +4%','Automaton: "Fast Cast"+3',}},
		body={ name="Naga Samue", augments={'Pet: MP+80','Automaton: "Cure" potency +4%','Automaton: "Fast Cast"+3',}},
		hands={ name="Naga Tekko", augments={'Pet: MP+80','Automaton: "Cure" potency +4%','Automaton: "Fast Cast"+3',}},
		legs="Foire Churidars +1",
		feet={ name="Naga Kyahan", augments={'Pet: MP+80','Automaton: "Cure" potency +4%','Automaton: "Fast Cast"+3',}},
		waist="Incarnation Sash",
		right_ear="Burana Earring",
		right_ring="Thur. Ring +1",
	}

-- Pet midcast RDM
	sets.midcast.buff = {
	    --main="Sakpata's Fists",
		--range="Animator P II +1",
		ammo="Automat. Oil +3",
		head="Kara. Cappello +3",
		body="Kara. Farsetto +2",
		hands="Karagoz Guanti +3",
		legs="Kara. Pantaloni +2",
		feet="Mpaca's Boots",
		neck="Adad Amulet",
		waist="Incarnation Sash",
		right_ear="Burana Earring",
		left_ring="Fickblix's Ring",
		right_ring="Thur. Ring +1",
		back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+5 Pet: Rng. Acc.+5','Pet: Haste+10','System: 1 ID: 1247 Val: 4',}},
	}
end

-- DO NOT TOUCH BELOW --
function idle()
	if player.status == "Idle" and pet.status == "Engaged" and pet.head == "Soulsoother Head" and pet.frame == "Harlequin Frame" then
		equip(sets.idle.harle)
	elseif player.status == "Idle" and pet.status == "Engaged" and pet.head == "Spiritreaver Head" and pet.frame == "Stormwaker Frame" then
		equip(sets.idle.petfastcast)
	elseif player.status == "Idle" and pet.status == "Engaged" and pet.head == "Soulsoother Head" and pet.frame == "Stormwaker Frame" then
		equip(sets.idle.petfastcast)
	elseif player.status == "Idle" and pet.status == "Engaged" and pet.head == "Stormwaker Head" and pet.frame == "Stormwaker Frame" then
		equip(sets.idle.petfastcast)
	elseif player.status == "Idle" and pet.status == "Engaged" and pet.head == "Soulsoother Head" and pet.frame == "Valoredge Frame" then
		equip(sets.idle.turtle)
	elseif player.status == "Idle" and pet.status == "Idle" and pet.head == "Soulsoother Head" and pet.frame == "Valoredge Frame" then
		equip(sets.idle.turtle)
	elseif player.status == "Engaged" then
		if pet.head == "Soulsoother Head" and pet.frame == "Valoredge Frame" then
			equip(sets.idle.turtle)
		else
			if player.equipment.main == "Godhands" or player.equipment.main == "Xiucoatl" then
				equip(sets.idle.mastergodhands)
			else
				equip(sets.idle.master)
			end
		end
	else  
		equip(sets.idle.tank)
	end
end

function status_change(new,old)
	if new == "Engaged" then
		idle()
	elseif new == "Idle" then 
		idle()
	end
end

function pet_status_change(new,old)
	if new == "Engaged" then 
		idle()
	elseif new == "Idle" then 
		idle()
	end
end

function pet_midcast(spell)
	if pet.head == "Soulsoother Head" and pet.frame == "Harlequin Frame" then
		equip(sets.idle.harle)
	elseif pet.head == "Spiritreaver Head" and pet.frame == "Stormwaker Frame" then
		equip(sets.midcast.nuke)
	elseif pet.head == "Soulsoother Head" and pet.frame == "Stormwaker Frame" then
		equip(sets.midcast.cure)
	elseif pet.head == "Stormwaker Head" and pet.frame == "Stormwaker Frame" then
		equip(sets.midcast.buff)
	else
		idle()
	end
end

function pet_aftercast(spell)
	if pet.frame == "Stormwaker Frame" then
	--	send_command("@input /p Pet MP at <petmpp>")
		idle()
	else
		idle()
	end
end

function precast(spell)
	if spell.type == "BlueMagic" or spell.type == "BlackMagic" or spell.type == "WhiteMagic" or spell.type == "Trust" then 
		equip(sets.precast.fastcast)
	elseif spell.type == "WeaponSkill" then 
		if spell.english == "Stringing Pummel" then
			equip(sets.ws.stringingpummel)
		elseif spell.english == "Victory Smite" then
			equip(sets.ws.victorysmite)
		elseif spell.english == "Shijin Spiral" or spell.english == "Evisceration" then
			equip(sets.ws.shijinspiral)
		elseif spell.english == "Howling Fist" then
			equip(sets.ws.howlingfist)
		elseif spell.english == "Raging Fists" then
			equip(sets.ws.ragingfists)
		elseif spell.english == "Asuran Fists" then
			equip(sets.ws.asuranfists)
		else
			equip(sets.ws.weaponskill)
		end
	elseif spell.english == "Fire Maneuver" or spell.english == "Ice Maneuver" or 
	spell.english == "Wind Maneuver" or spell.english == "Earth Maneuver" or 
	spell.english == "Thunder Maneuver" or spell.english == "Water Maneuver" or 
	spell.english == "Light Maneuver" or spell.english == "Dark Maneuver" then
		equip(sets.ja.overload)
	elseif spell.english == "Tactical Switch" then
		equip(sets.ja.tacticalswitch)
	elseif spell.english == "Overdrive" then
		equip(sets.ja.overdrive)
	elseif spell.english == "Role Reversal" then
		equip(sets.ja.rolereversal)
	elseif spell.english == "Repair" or spell.english == "Maintenance" then
		equip(sets.ja.repair)
	elseif spell.english == "Ventriloquy" then
		equip(sets.ja.ventriloquy)
	else
		idle()
	end
end

function midcast(spell)
	if spell.type == "BlueMagic" or spell.type == "BlackMagic" or spell.type == "WhiteMagic" then 
		equip(sets.midcast.spelldamage)
	elseif spell.type == "Trust" then
		equip(sets.midcast.trust)
	elseif spell.type == "WeaponSkill" then 
		if spell.english == "Stringing Pummel" then
			equip(sets.ws.stringingpummel)
		elseif spell.english == "Victory Smite" then
			equip(sets.ws.victorysmite)
		elseif spell.english == "Shijin Spiral" or spell.english == "Evisceration" then
			equip(sets.ws.shijinspiral)
		elseif spell.english == "Howling Fist" then
			equip(sets.ws.howlingfist)
		elseif spell.english == "Raging Fists" then
			equip(sets.ws.ragingfists)
		elseif spell.english == "Asuran Fists" then
			equip(sets.ws.asuranfists)
		else
			equip(sets.ws.weaponskill)
		end
	elseif spell.english == "Fire Maneuver" or spell.english == "Ice Maneuver" or 
	spell.english == "Wind Maneuver" or spell.english == "Earth Maneuver" or 
	spell.english == "Thunder Maneuver" or spell.english == "Water Maneuver" or 
	spell.english == "Light Maneuver" or spell.english == "Dark Maneuver" then
		equip(sets.ja.overload)
	elseif spell.english == "Tactical Switch" then
		equip(sets.ja.tacticalswitch)
	elseif spell.english == "Overdrive" then
		equip(sets.ja.overdrive)
	elseif spell.english == "Role Reversal" then
		equip(sets.ja.rolereversal)
	elseif spell.english == "Repair" or spell.english == "Maintenance" then
		equip(sets.ja.repair)
	elseif spell.english == "Ventriloquy" then
		equip(sets.ja.ventriloquy)
	else
		idle()
	end
end

function aftercast(spell)
	idle()
end

function buff_change(name,gain)
	if name == "terror" and gain == "true" then
		equip(sets.idle.tank)
		end
	if name == "stun" and gain == "true" then
		equip(sets.idle.tank)
		end
	if name	== "petrification" and gain == "true" then
		equip(sets.idle.tank)
		end
end

