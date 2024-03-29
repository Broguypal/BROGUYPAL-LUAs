--  ____                                          _ _     
-- |  _ \                                        | ( )    
-- | |_) |_ __ ___   __ _ _   _ _   _ _ __   __ _| |/ ___ 
-- |  _ <| '__/ _ \ / _` | | | | | | | '_ \ / _` | | / __|
-- | |_) | | | (_) | (_| | |_| | |_| | |_) | (_| | | \__ \
-- |____/|_|  \___/ \__, |\__,_|\__, | .__/ \__,_|_| |___/
--                   __/ |       __/ | |                  
--                  |___/       |___/|_|    
--MNK LUA

send_command ('bind numpad9 gs l MNK.lua')
send_command ('bind numpad8 gs l MNKc.lua')



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
 
 -------------------------------------DT Sets-----------------------------------------------------------
 -- Normal DT / Town set
    sets.idle.normal = {
		ammo="Amar Cluster",
		head="Bhikku Crown +2",
		body="Mpaca's Doublet",
		hands={ name="Rao Kote +1", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
		legs="Anch. Hose +2",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck={ name="Bathy Choker +1", augments={'Path: A',}},
		waist="Moonbow Belt +1",
		left_ear="Genmei Earring",
		right_ear={ name="Bhikku Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','"Store TP"+3',}},
		left_ring="Defending Ring",
		right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
		back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','System: 1 ID: 640 Val: 4',}},
	}

--------------------------------------TP Sets ----------------------------------------------------------
--Normal TP Set
	sets.idle.tp = {
		ammo="Amar Cluster",
		head="Bhikku Crown +2",
		body="Mpaca's Doublet",
		hands={ name="Rao Kote +1", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
		legs="Anch. Hose +2",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck={ name="Bathy Choker +1", augments={'Path: A',}},
		waist="Moonbow Belt +1",
		left_ear="Genmei Earring",
		right_ear={ name="Bhikku Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','"Store TP"+3',}},
		left_ring="Defending Ring",
		right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
		back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','System: 1 ID: 640 Val: 4',}},
	}


----------------------------------- Weaponskill sets----------------------------------------------------
--Victory Smite
	sets.ws.victorysmite = {
	    ammo="Knobkierrie",
		head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
		body="Ken. Samue +1",
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs="Mpaca's Hose",
		feet="Ken. Sune-Ate +1",
		neck="Fotia Gorget",
		waist="Moonbow Belt +1",
		left_ear="Schere Earring",
		right_ear="Sherida Earring",
		left_ring="Gere Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','System: 1 ID: 640 Val: 4',}},
	}

--Victory Smite (impetus up)
	sets.ws.victorysmiteimpetus = {
	    ammo="Coiste Bodhar",
		head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
		body="Bhikku Cyclas +2",
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs="Mpaca's Hose",
		feet="Ken. Sune-Ate +1",
		neck="Fotia Gorget",
		waist="Moonbow Belt +1",
		left_ear="Schere Earring",
		right_ear="Sherida Earring",
		left_ring="Gere Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','System: 1 ID: 640 Val: 4',}},
	}
	
-- Raging Fists
	sets.ws.ragingfists = {
		ammo="Coiste Bodhar",
		head="Mpaca's Cap",
		body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs="Mpaca's Hose",
		feet="Ken. Sune-Ate +1",
		neck="Fotia Gorget",
		waist="Moonbow Belt +1",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Sherida Earring",
		left_ring="Gere Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','System: 1 ID: 640 Val: 4',}},
	}

-- Shijin Spiral
	sets.ws.shijinspiral = {
	    ammo="Aurgelmir Orb",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Fotia Gorget",
		waist="Moonbow Belt +1",
		left_ear="Mache Earring +1",
		right_ear="Sherida Earring",
		left_ring="Gere Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Segomo's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}

-- Howling Fist
	sets.ws.howlingfist = {
	    ammo="Knobkierrie",
		head="Mpaca's Cap",
		body="Adamantite Armor",
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs="Mpaca's Hose",
		feet="Mpaca's Boots",
		neck="Fotia Gorget",
		waist="Moonbow Belt +1",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Sherida Earring",
		left_ring="Gere Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','System: 1 ID: 640 Val: 4',}},
	}

--Tornado Kick
	sets.ws.tornadokick = {
	    ammo="Coiste Bodhar",
		head="Mpaca's Cap",
		body="Bhikku Cyclas +2",
		hands="Mpaca's Gloves",
		legs="Bhikku Hose +2",
		feet="Anch. Gaiters +3",
		neck={ name="Mnk. Nodowa +2", augments={'Path: A',}},
		waist="Moonbow Belt +1",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Sherida Earring",
		left_ring="Gere Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','System: 1 ID: 640 Val: 4',}},
	}

--Final Heaven
	sets.ws.finalheaven = {
	    ammo="Knobkierrie",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Fotia Gorget",
		waist="Moonbow Belt +1",
		left_ear="Ishvara Earring",
		right_ear="Sherida Earring",
		left_ring="Gere Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','System: 1 ID: 640 Val: 4',}},
	}

--General Weaponskills
	sets.ws.weaponskill = {
	    ammo="Knobkierrie",
		head="Mpaca's Cap",
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Fotia Gorget",
		waist="Moonbow Belt +1",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Sherida Earring",
		left_ring="Gere Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','System: 1 ID: 640 Val: 4',}},
	}


------------------------------------ Job Ability Sets---------------------------------------------------
-- Hundred Fists
	sets.ja.hundredfists = {
	}

-- Boost
	sets.ja.boost = {
		waist="Ask Sash",
	}

-- Dodge
	sets.ja.dodge = {
	}

-- Focus
	sets.ja.focus= {
	}

-- Chakra
	sets.ja.chakra = {
		hands="Hes. Gloves +3",
	}

-- Chi Blast
	sets.ja.chiblast = {
	}

-- Counterstance
	sets.ja.counterstance = {
	}

-- Footwork
	sets.ja.footwork = {
		feet="Bhikku Gaiters +1",
	}

-- Mantra
	sets.ja.mantra = {
	}

-- Formless Strikes
	sets.ja.formlessstrikes = {
	}

-- Perfect Counter
	sets.ja.perfectcounter = {
	}

------------------------------------ Precast Set -------------------------------------------------------
    sets.precast.fastcast = {

	}

--------------------------------------Midcast set ------------------------------------------------------
    sets.midcast.spell = {
	}

-- Midcast for trusts - want to have 119 gear in head,body,hands,legs,feet.
	sets.midcast.trust = {
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
	}
end


function idle()
	if player.status == "Engaged" then
		equip(sets.idle.tp) 
	else
		equip(sets.idle.normal)
	end
end

function status_change(new,old)
	if new == "Engaged" then
		equip(sets.idle.tp) 
	else
		idle()
	end
end

function precast(spell)
	if spell.type == "WeaponSkill" then
		if spell.english == "Victory Smite" then
			if buffactive["Impetus"] then
				equip(sets.ws.victorysmiteimpetus) 
			else
				equip(sets.ws.victorysmite) 
			end
		elseif spell.english == "Raging Fists" then
			equip(sets.ws.ragingfists)
		elseif spell.english == "Shijin Spiral" then
			equip(sets.ws.shijinspiral)
		elseif spell.english == "Howling Fist" then
			equip(sets.ws.howlingfist)
		elseif spell.english == "Tornado Kick" then
			equip(sets.ws.tornadokick)
		elseif spell.english == "Final Heaven" then
			equip(sets.ws.finalheaven)
		else
			equip(sets.ws.weaponskill)
		end
	elseif spell.type == "JobAbility" then
		if spell.english == "Hundred Fists" then
			equip(sets.ja.hundredfists)
		elseif spell.english == "Boost" then
			equip(sets.ja.boost)
		elseif spell.english == "Dodge" then
			equip(sets.ja.dodge)
		elseif spell.english == "Focus" then
			equip(sets.ja.focus)
		elseif spell.english == "Chakra" then
			equip(sets.ja.chakra)
		elseif spell.english == "Chi Blast" then
			equip(sets.ja.chiblast)
		elseif spell.english == "Counterstance" then
			equip(sets.ja.counterstance)
		elseif spell.english == "Footwork" then
			equip(sets.ja.footwork)
		elseif spell.english == "Mantra" then
			equip(sets.ja.mantra)
		elseif spell.english == "Formless Strikes" then
			equip(sets.ja.formlessstrikes)
		elseif spell.english == "Perfect Counter" then
			equip(sets.ja.perfectcounter)
		else 
			idle()
		end
	elseif spell.type == "BlueMagic" or spell.type == "BlackMagic" or spell.type == "WhiteMagic" or spell.type == "Ninjutsu" or spell.type == "Trust" then 
		equip(sets.precast.fastcast)
	else
		idle()
	end
end

function midcast(spell)
	 if spell.type == "WeaponSkill" then
		if spell.english == "Victory Smite" then
			if buffactive["Impetus"] then
				equip(sets.ws.victorysmiteimpetus) 
			else
				equip(sets.ws.victorysmite) 
			end
		elseif spell.english == "Raging Fists" then
			equip(sets.ws.ragingfists)
		elseif spell.english == "Shijin Spiral" then
			equip(sets.ws.shijinspiral)
		elseif spell.english == "Howling Fist" then
			equip(sets.ws.howlingfist)
		elseif spell.english == "Tornado Kick" then
			equip(sets.ws.tornadokick)
		elseif spell.english == "Final Heaven" then
			equip(sets.ws.finalheaven)
		else
			equip(sets.ws.weaponskill)
		end
	elseif spell.type == "JobAbility" then
		if spell.english == "Hundred Fists" then
			equip(sets.ja.hundredfists)
		elseif spell.english == "Boost" then
			equip(sets.ja.boost)
		elseif spell.english == "Dodge" then
			equip(sets.ja.dodge)
		elseif spell.english == "Focus" then
			equip(sets.ja.focus)
		elseif spell.english == "Chakra" then
			equip(sets.ja.chakra)
		elseif spell.english == "Chi Blast" then
			equip(sets.ja.chiblast)
		elseif spell.english == "Counterstance" then
			equip(sets.ja.counterstance)
		elseif spell.english == "Footwork" then
			equip(sets.ja.footwork)
		elseif spell.english == "Mantra" then
			equip(sets.ja.mantra)
		elseif spell.english == "Formless Strikes" then
			equip(sets.ja.formlessstrikes)
		elseif spell.english == "Perfect Counter" then
			equip(sets.ja.perfectcounter)
		else 
			idle()
		end
	elseif spell.type == "Trust" then
		equip(sets.midcast.trust)
	else
		equip(sets.midcast.spell)
	end
end

function aftercast(spell)
	if spell.english == "Boost" then
		equip(sets.ja.boost)
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
