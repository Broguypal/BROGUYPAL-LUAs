--  ____                                          _ _     
-- |  _ \                                        | ( )    
-- | |_) |_ __ ___   __ _ _   _ _   _ _ __   __ _| |/ ___ 
-- |  _ <| '__/ _ \ / _` | | | | | | | '_ \ / _` | | / __|
-- | |_) | | | (_) | (_| | |_| | |_| | |_) | (_| | | \__ \
-- |____/|_|  \___/ \__, |\__,_|\__, | .__/ \__,_|_| |___/
--                   __/ |       __/ | |                  
--                  |___/       |___/|_|    
--  REGULAR PUP LUA - BRUISER TANK / PHYS DPS / HYBRID / RANGED DPS
                       


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


-- Keybinds for swaps
send_command ('bind numpad9 gs l PUP.lua')
send_command ('bind numpad8 gs l PUPo.lua')
send_command ('bind numpad7 gs l PUPm.lua')


--send_command ('bind numpad6 input //acon equipset bruiser')
send_command ('bind numpad6 input //acon equipset bruisertank')
send_command ('bind numpad5 input //acon equipset standard')
send_command ('bind numpad4 input //acon equipset ranged')
send_command ('bind numpad3 input //acon equipset boneslayer')


send_command ('bind numpad1 input /mount "Noble Chocobo"')
send_command ('bind numpad2 input /dismount')



-- General sets -- Do not change
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
	
--Bruiser tank no Ohtas equiped
	sets.idle.bruiser = {
		range="Animator P +1",
		ammo="Automat. Oil +3",
		head={ name="Taeon Chapeau", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		body={ name="Taeon Tabard", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		hands={ name="Taeon Gloves", augments={'Pet: Accuracy+23 Pet: Rng. Acc.+23','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		legs={ name="Taeon Tights", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		feet={ name="Taeon Boots", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		neck="Shulmanu Collar",
		waist="Klouskap Sash +1",
		left_ear="Rimeice Earring",
		right_ear={ name="Kara. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+15','Mag. Acc.+15','"Store TP"+5',}},
		left_ring="C. Palug Ring",
		right_ring="Thur. Ring +1",
		back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Haste+10','System: 1 ID: 1246 Val: 4',}},
	}

-- Bruiser tank with Ohtas
	sets.idle.bruiserohtas = {
		range="Animator P +1",
		ammo="Automat. Oil +3",
		head={ name="Taeon Chapeau", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		body={ name="Taeon Tabard", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		hands={ name="Taeon Gloves", augments={'Pet: Accuracy+23 Pet: Rng. Acc.+23','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		legs={ name="Taeon Tights", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		feet={ name="Taeon Boots", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		neck="Shulmanu Collar",
		waist="Incarnation Sash",
		left_ear="Rimeice Earring",
		right_ear={ name="Kara. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+15','Mag. Acc.+15','"Store TP"+5',}},
		left_ring="C. Palug Ring",
		right_ring="Thur. Ring +1",
		back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Haste+10','System: 1 ID: 1246 Val: 4',}},
	}


--General tp (only pet engaged)
	sets.idle.standard = {
	    range="Animator P +1",
		ammo="Automat. Oil +3",
		head={ name="Taeon Chapeau", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		body={ name="Pitre Tobe +3", augments={'Enhances "Overdrive" effect',}},
		hands={ name="Taeon Gloves", augments={'Pet: Accuracy+23 Pet: Rng. Acc.+23','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		legs={ name="Taeon Tights", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		feet="Mpaca's Boots",
		neck="Shulmanu Collar",
		waist="Klouskap Sash +1",
		left_ear="Crep. Earring",
		right_ear={ name="Kara. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+15','Mag. Acc.+15','"Store TP"+5',}},
		left_ring="C. Palug Ring",
		right_ring="Thur. Ring +1",
		back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Haste+10','System: 1 ID: 1246 Val: 4',}},
	}

--Genderal tp (only pet engaged) Ohtas equiped
	sets.idle.standardohtas = {
	    range="Animator P +1",
		ammo="Automat. Oil +3",
		head={ name="Taeon Chapeau", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		body={ name="Pitre Tobe +3", augments={'Enhances "Overdrive" effect',}},
		hands={ name="Taeon Gloves", augments={'Pet: Accuracy+23 Pet: Rng. Acc.+23','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		legs={ name="Taeon Tights", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		feet="Mpaca's Boots",
		neck="Shulmanu Collar",
		waist="Incarnation Sash",
		left_ear="Crep. Earring",
		right_ear={ name="Kara. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+15','Mag. Acc.+15','"Store TP"+5',}},
		left_ring="C. Palug Ring",
		right_ring="Thur. Ring +1",
		back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Haste+10','System: 1 ID: 1246 Val: 4',}},
	}


-- ranged dps (use xiucoatl)
	sets.idle.ranged = {
		--range="Animator P II +1",
		ammo="Automat. Oil +3",
		head={ name="Pitre Taj +3", augments={'Enhances "Optimization" effect',}},
		body={ name="Pitre Tobe +3", augments={'Enhances "Overdrive" effect',}},
		hands="Mpaca's Gloves",
		legs="Kara. Pantaloni +2",
		feet="Mpaca's Boots",
		neck="Shulmanu Collar",
		waist="Klouskap Sash +1",
		left_ear="Crep. Earring",
		right_ear={ name="Kara. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+15','Mag. Acc.+15','"Store TP"+5',}},
		left_ring="Fickblix's Ring",
		right_ring="Thur. Ring +1",
		back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Haste+10','System: 1 ID: 1246 Val: 4',}},
	}


-- Master only TP Set
	sets.idle.master = {
        range="Animator P +1",
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

--Master only TP - Godhands/xiucoatle
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
	
-- Hybrid sets - pet and master
	sets.idle.hybrid = {
	    range="Animator P +1",
		ammo="Automat. Oil +3",
		head="Heyoka Cap +1",
		body="Mpaca's Doublet",
		hands="Karagoz Guanti +3",
		legs="Heyoka Subligar +1",
		feet="Mpaca's Boots",
		neck="Shulmanu Collar",
		waist="Moonbow Belt +1",
		left_ear="Crep. Earring",
		right_ear={ name="Kara. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+15','Mag. Acc.+15','"Store TP"+5',}},
		left_ring="Niqmaddu Ring",
		right_ring="Fickblix's Ring",
		back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Haste+10','System: 1 ID: 1246 Val: 4',}},
	}

--Hybrid sets - Godhands/Xiucoatl equipped
	sets.idle.hybridgodhands = {
	    range="Animator P +1",
		ammo="Automat. Oil +3",
		head="Heyoka Cap +1",
		body="Mpaca's Doublet",
		hands="Karagoz Guanti +3",
		legs="Heyoka Subligar +1",
		feet="Mpaca's Boots",
		neck="Shulmanu Collar",
		waist="Moonbow Belt +1",
		left_ear="Mache Earring +1",
		right_ear={ name="Kara. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+15','Mag. Acc.+15','"Store TP"+5',}},
		left_ring="Niqmaddu Ring",
		right_ring="Fickblix's Ring",
		back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Haste+10','System: 1 ID: 1246 Val: 4',}},
	}

--Hybrid tank
	sets.idle.hybridtank = {
		range="Animator P +1",
		ammo="Automat. Oil +3",
		head="Heyoka Cap +1",
		body="Mpaca's Doublet",
		hands="Karagoz Guanti +3",
		legs="Heyoka Subligar +1",
		feet="Mpaca's Boots",
		neck={ name="Loricate Torque +1", augments={'Path: A',}},
		waist="Moonbow Belt +1",
		left_ear="Crep. Earring",
		right_ear={ name="Kara. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+15','Mag. Acc.+15','"Store TP"+5',}},
		left_ring="Fickblix's Ring",
		right_ring="Defending Ring",
		back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Haste+10','System: 1 ID: 1246 Val: 4',}},
	}

-- Precast fastcast
	sets.precast.fastcast = {
		head={ name="Herculean Helm", augments={'Attack+5','"Triple Atk."+3','Accuracy+6',}},
		body={ name="Taeon Tabard", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		left_ring="Lebeche Ring",
		right_ring="Prolix Ring",
		back="Swith Cape",
	}

--  weaponskills
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

--  overload
	sets.ja.overload = {
		body="Kara. Farsetto +2",
		hands="Foire Dastanas +1",
		neck="Bfn. Collar +1",
		left_ear="Burana Earring",
		back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+5 Pet: Rng. Acc.+5','Pet: Haste+10','System: 1 ID: 1247 Val: 4',}},
	}

--  individual spells
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
		left_ring="Evanescence Ring",
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

-- pet Enmity - Flashbulb/strobe 
	sets.midcast.petenmity = {
		head="Heyoka Cap +1",
		body="Heyoka Harness",
		hands="Heyoka Mittens",
		legs="Heyoka Subligar +1",
		feet="Heyoka Leggings",
		left_ear="Rimeice Earring",
	}

-- pet Arcubalista / Daze Weaponskill set
	sets.midcast.petdaze = {
		head="Kara. Cappello +3",
		body={ name="Pitre Tobe +3", augments={'Enhances "Overdrive" effect',}},
		hands="Mpaca's Gloves",
		legs="Kara. Pantaloni +2",
		feet="Mpaca's Boots",
		neck="Shulmanu Collar",
		waist="Klouskap Sash +1",
		left_ear="Burana Earring",
		right_ear={ name="Kara. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+15','Mag. Acc.+15','"Store TP"+5',}},
		left_ring="Fickblix's Ring",
		right_ring="Thur. Ring +1",
		back={ name="Dispersal Mantle", augments={'STR+2','DEX+4','Pet: TP Bonus+500',}},
	}

-- pet Bonecrusher Weaponskill set
	sets.midcast.petbone = {
		--head="Kara. Cappello +3",
		head={ name="Taeon Chapeau", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		body={ name="Taeon Tabard", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		hands="Mpaca's Gloves",
		legs={ name="Taeon Tights", augments={'Pet: Accuracy+20 Pet: Rng. Acc.+20','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		feet="Mpaca's Boots",
		neck="Shulmanu Collar",
		waist="Incarnation Sash",
		left_ear="Burana Earring",
		right_ear={ name="Kara. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+15','Mag. Acc.+15','"Store TP"+5',}},
		left_ring="C. Palug Ring",
		right_ring="Fickblix's Ring",
		back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+5 Pet: Rng. Acc.+5','Pet: Haste+10','System: 1 ID: 1247 Val: 4',}},
	}
end

-- Registering event for pet change -- Essentially, this checks the Pet TP every second, and if it reaches 850+ it automatically swaps to the appropriate pet weaponskill set.
windower.register_event('time change', function(new, old)
	if new > old and pet.isvalid and pet.status == "Engaged" then 
		if pet.tp >= 850 and player.tp <= 400 then
			if pet.frame == "Sharpshot Frame" then
				equip(sets.midcast.petdaze)
			end
			if pet.frame == "Valoredge Frame" or pet.frame == "Harlequin Frame" then
				equip(sets.midcast.petbone)
			end
		end
	end
end)


-- How swaps are calculated --
function idle()
	if player.status == "Idle" and pet.status == "Engaged" and pet.head == "Soulsoother Head" and pet.frame == "Valoredge Frame" then
		if player.equipment.main == "Ohtas" then
			equip(sets.idle.bruiserohtas)
		else
			equip(sets.idle.bruiser)
		end
	elseif player.status == "Idle" and pet.status == "Engaged" and pet.head == "Valoredge Head" and pet.frame == "Valoredge Frame" then
		if player.equipment.main == "Ohtas" then
			equip(sets.idle.bruiserohtas)
		else
			equip(sets.idle.bruiser)
		end
	elseif player.status == "Idle" and pet.status == "Engaged" and pet.frame == "Harlequin Frame" then
		if player.equipment.main == "Ohtas" then
			equip(sets.idle.bruiserohtas)
		else
			equip(sets.idle.bruiser)
		end
	elseif player.status == "Idle" and pet.status == "Engaged" and pet.head == "Valoredge Head" and pet.frame == "Sharpshot Frame" then
		if player.equipment.main == "Ohtas" then
			equip(sets.idle.standardohtas)
		else
			equip(sets.idle.standard)
		end
	elseif player.status == "Idle" and pet.status == "Engaged" and pet.head == "Sharpshot Head" and pet.frame == "Sharpshot Frame" then
		equip(sets.idle.ranged)
	elseif player.status == "Engaged" and pet.status == "Engaged" and pet.head == "Sharpshot Head" and pet.frame == "Sharpshot Frame" then
		if player.equipment.main == "Godhands" or player.equipment.main == "Xiucoatl" then
			equip(sets.idle.hybridgodhands)
		else
			equip(sets.idle.hybrid)
		end
	elseif player.status == "Engaged" and pet.status == "Engaged" and pet.head == "Valoredge Head" and pet.frame == "Sharpshot Frame" then
		if player.equipment.main == "Godhands" or player.equipment.main == "Xiucoatl" then
			equip(sets.idle.hybridgodhands)
		else
			equip(sets.idle.hybrid)
		end
	elseif player.status == "Engaged" and pet.status == "Engaged" and pet.head == "Valoredge Head" and pet.frame == "Valoredge Frame" then
		if player.equipment.main == "Godhands" or player.equipment.main == "Xiucoatl" then
			equip(sets.idle.hybridgodhands)
		else
			equip(sets.idle.hybrid)
		end
	elseif player.status == "Engaged" and pet.status == "Engaged" and pet.head == "Soulsoother Head" and pet.frame == "Valoredge Frame" then
		--equip(sets.idle.hybridtank)
		if player.equipment.main == "Godhands" or player.equipment.main == "Xiucoatl" then
			equip(sets.idle.hybridgodhands)
		else
			equip(sets.idle.hybrid)
		end
	elseif player.status == "Engaged" and pet.status == "Idle" then
		if player.equipment.main == "Godhands" or player.equipment.main == "Xiucoatl" then
			equip(sets.idle.mastergodhands)
		else
			equip(sets.idle.master)
		end
	elseif player.status == "Engaged" and pet.isvalid == false then
		if player.equipment.main == "Godhands" or player.equipment.main == "Xiucoatl" then
			equip(sets.idle.mastergodhands)
		else
			equip(sets.idle.master)
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
		if buffactive["Overdrive"] then
			idle()
		else
			equip(sets.ja.overload)
		end
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
		if buffactive["Overdrive"] then
			idle()
		else
			equip(sets.ja.overload)
		end
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

--[[ -- Pet mid cast is really only useful for when pets cast spells. Pats do weaponskills server side, so cant use for that (weapon skill is already initiated at time this event is captured)
function pet_midcast(spell)
	if pet.frame == "Sharpshot Frame" then
		equip(sets.midcast.petdaze)
	elseif pet.frame == "Valoredge Frame" then
		equip(sets.midcast.petbone)
	else
		idle()
	end
end 
]]

function pet_aftercast(spell)
	idle()
end

--[[  -- TO screw with later. Dont really see point at this time since cant swap sets while these buff changes are active regardless.
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
]]