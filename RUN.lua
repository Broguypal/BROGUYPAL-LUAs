--  ____                                          _ _     
-- |  _ \                                        | ( )    
-- | |_) |_ __ ___   __ _ _   _ _   _ _ __   __ _| |/ ___ 
-- |  _ <| '__/ _ \ / _` | | | | | | | '_ \ / _` | | / __|
-- | |_) | | | (_) | (_| | |_| | |_| | |_) | (_| | | \__ \
-- |____/|_|  \___/ \__, |\__,_|\__, | .__/ \__,_|_| |___/
--                   __/ |       __/ | |                  
--                  |___/       |___/|_|    
--RUN LUA

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


function get_sets()
--Equipset toggles
send_command('bind numpad9 gs c ToggleHybrid')
send_command('bind numpad8 gs c ToggleTank')
send_command('bind numpad7 gs c ToggleMagic')

--weapon toggles
send_command('bind numpad6 gs c WeaponLion')
send_command('bind numpad5 gs c WeaponEpeo')
send_command('bind numpad4 gs c WeaponAettir')

--QOL commands
send_command ('bind numpad1 input /mount "Noble Chocobo"')
send_command ('bind numpad2 input /dismount')
send_command('bind f9 input /item "Remedy" <me>')
send_command('bind f10 input /item "Panacea" <me>')
send_command('bind f11 input /item "Holy Water" <me>')

-- Mode settings
Mode = "Hybrid"

Modes = {'Hybrid','DPS','AoETank','SingleTank','MagicEva','MagicAettir'}

-- Sets defined
    sets.idle = {}                  -- Leave this empty
	sets.engaged = {}
    sets.precast = {}               -- leave this empty    
    sets.midcast = {}               -- leave this empty    
    sets.aftercast = {}             -- leave this empty
	sets.ws = {}					-- Leave this empty

 ----			 Idle Sets				----
    sets.idle.normal = {
		sub="Utu Grip",
		ammo="Staunch Tathlum +1",
		head="Nyame Helm",
		body="Erilaz Surcoat +3",
		hands="Nyame Gauntlets",
		legs={ name="Carmine Cuisses +1", augments={'HP+80','STR+12','INT+12',}},
		feet="Erilaz Greaves +3",
		neck={ name="Loricate Torque +1", augments={'Path: A',}},
		waist="Flume Belt +1",
		left_ear="Tuisto Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Warden's Ring",
		right_ring="Moonlight Ring",
		back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
		}

	sets.idle.aoetank = {
		main={ name="Epeolatry", augments={'Path: A',}},
		sub={ name="Refined Grip +1", augments={'Path: A',}},
		ammo="Staunch Tathlum +1",
		head="Nyame Helm",
		body="Erilaz Surcoat +3",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Erilaz Greaves +3",
		neck={ name="Loricate Torque +1", augments={'Path: A',}},
		waist="Flume Belt +1",
		left_ear="Tuisto Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		 left_ring="Warden's Ring",
		right_ring="Moonlight Ring",
		back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	sets.idle.singletank = {
		main={ name="Epeolatry", augments={'Path: A',}},
		sub={ name="Refined Grip +1", augments={'Path: A',}},
		ammo="Staunch Tathlum +1",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body="Erilaz Surcoat +3",
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs="Eri. Leg Guards +3",
		feet="Erilaz Greaves +3",
		neck="Warder's Charm +1",
		waist="Flume Belt +1",
		left_ear="Tuisto Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Shadow Ring",
		right_ring="Moonlight Ring",
		back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Parrying rate+5%',}},
	}
	
	sets.idle.magic = {
		main={ name="Epeolatry", augments={'Path: A',}},
		sub="Irenic Strap",
		ammo="Staunch Tathlum +1",
		head="Nyame Helm",
		body="Runeist Coat +3",
		hands="Nyame Gauntlets",
		legs="Eri. Leg Guards +3",
		feet="Erilaz Greaves +3",
		neck="Warder's Charm +1",
		waist="Engraved Belt",
		left_ear="Tuisto Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Shadow Ring",
		right_ring="Moonlight Ring",
		back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
		}
	
	sets.idle.magicaettir = set_combine(sets.idle.magic,{
		main={ name="Aettir", augments={'Accuracy+70','Mag. Evasion+50','Weapon skill damage +10%',}},
		})
	

	sets.idle.dualwield = {
		main="Naegling",
		sub="Reikiko",
		ammo="Staunch Tathlum +1",
		head="Nyame Helm",
		body="Erilaz Surcoat +3",
		hands="Nyame Gauntlets",
		legs={ name="Carmine Cuisses +1", augments={'HP+80','STR+12','INT+12',}},
		feet="Erilaz Greaves +3",
		neck={ name="Loricate Torque +1", augments={'Path: A',}},
		waist="Flume Belt +1",
		left_ear="Tuisto Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Warden's Ring",
		right_ring="Moonlight Ring",
		back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
		}

 ----			 Engaged Sets				----	
	sets.engaged.hybrid = {
		sub="Utu Grip",
		ammo="Coiste Bodhar",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Anu Torque",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Telos Earring",
		right_ear="Sherida Earring",
		left_ring="Niqmaddu Ring",
		right_ring="Moonlight Ring",
		back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
		}
	
	sets.engaged.battuta = {
		sub={ name="Refined Grip +1", augments={'Path: A',}},
		ammo="Staunch Tathlum +1",
		head="Nyame Helm",
		body="Erilaz Surcoat +3",
		hands="Turms Mittens +1",
		legs="Eri. Leg Guards +3",
		feet="Turms Leggings +1",
		neck={ name="Futhark Torque +1", augments={'Path: A',}},
		waist="Engraved Belt",
		left_ear="Genmei Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
		right_ring="Moonlight Ring",
		back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Parrying rate+5%',}},
	}
	
	sets.engaged.dps = {
		sub="Utu Grip",
		ammo="Yamarang",
		head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
		body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet={ name="Herculean Boots", augments={'Accuracy+18 Attack+18','"Triple Atk."+4',}},
		neck={ name="Futhark Torque +1", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Sherida Earring",
		right_ear="Brutal Earring",
		left_ring="Epona's Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}

	sets.engaged.dualwield = {
		main="Naegling",
		sub="Reikiko",
		ammo="Staunch Tathlum +1",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs="Eri. Leg Guards +3",
		feet="Erilaz Greaves +3",
		neck="Warder's Charm +1",
		waist="Reiki Yotai",
		left_ear="Suppanomimi",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
		right_ring="Moonlight Ring",
		back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
		}
	
	sets.engaged.dualwielddps = {
		main="Naegling",
		sub="Reikiko",
		ammo="Yamarang",
		head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
		body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet={ name="Herculean Boots", augments={'Accuracy+18 Attack+18','"Triple Atk."+4',}},
		neck={ name="Futhark Torque +1", augments={'Path: A',}},
		waist="Reiki Yotai",
		left_ear="Sherida Earring",
		right_ear="Brutal Earring",
		left_ring="Epona's Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}

 ----			 Precast Sets				----	
    sets.precast.fastcast = {
		ammo="Sapience Orb",
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		body="Erilaz Surcoat +3",
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		legs="Agwu's Slops",
		feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+8','"Fast Cast"+6','INT+9',}},
		neck="Voltsurge Torque",
		waist="Plat. Mog. Belt",
		left_ear="Tuisto Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Kishar Ring",
		right_ring="Rahab Ring",
		back={ name="Ogma's Cape", augments={'HP+60','HP+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},
		}
		
	sets.precast.valiance = {
		ammo="Aqreqaq Bomblet",
		head="Nyame Helm",
		body="Runeist Coat +3",
		hands="Kurys Gloves",
		legs="Eri. Leg Guards +3",
		feet="Erilaz Greaves +3",
		neck="Moonlight Necklace",
		waist="Plat. Mog. Belt",
		left_ear="Genmei Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Eihwaz Ring",
		right_ring="Moonlight Ring",
		back={ name="Ogma's Cape", augments={'HP+60','Mag. Acc+20 /Mag. Dmg.+20','Enmity+10','Spell interruption rate down-10%',}},
		}	
		
	sets.precast.pulse = {
		head="Erilaz Galea +2",
		}
		
	sets.precast.battuta = {
		head={ name="Fu. Bandeau +2", augments={'Enhances "Battuta" effect',}},
		}
		
	sets.precast.enmity = {
		ammo="Aqreqaq Bomblet",
		head="Halitus Helm",
		body="Emet Harness +1",
		hands="Kurys Gloves",
		legs="Eri. Leg Guards +3",
		feet="Erilaz Greaves +3",
		neck="Moonlight Necklace",
		waist="Plat. Mog. Belt",
		left_ear="Genmei Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Moonlight Ring",
		right_ring="Eihwaz Ring",
		back={ name="Ogma's Cape", augments={'HP+60','Mag. Acc+20 /Mag. Dmg.+20','Enmity+10','Spell interruption rate down-10%',}},
		}
		
----			 Midcast Sets				----	
    sets.midcast.enmity = {
		ammo="Aqreqaq Bomblet",
		head="Halitus Helm",
		body="Emet Harness +1",
		hands="Kurys Gloves",
		legs="Eri. Leg Guards +3",
		feet="Erilaz Greaves +3",
		neck={ name="Futhark Torque +1", augments={'Path: A',}},
		waist="Flume Belt +1",
		left_ear="Genmei Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Eihwaz Ring",
		right_ring="Moonlight Ring",
		back={ name="Ogma's Cape", augments={'HP+60','Mag. Acc+20 /Mag. Dmg.+20','Enmity+10','Spell interruption rate down-10%',}},
		}
		
    sets.midcast.SIR = {
		ammo="Staunch Tathlum +1",
		head="Erilaz Galea +2",
		body="Nyame Mail",
		hands="Rawhide Gloves",
		legs="Eri. Leg Guards +3",
		feet="Erilaz Greaves +3",
		neck="Moonlight Necklace",
		waist="Audumbla Sash",
		left_ear="Magnetic Earring",
		right_ear="Halasz Earring",
		left_ring="Evanescence Ring",
		right_ring="Moonlight Ring",
		back={ name="Ogma's Cape", augments={'HP+60','Mag. Acc+20 /Mag. Dmg.+20','Enmity+10','Spell interruption rate down-10%',}},
		}
		
	sets.midcast.phalanx = {
		ammo="Staunch Tathlum +1",
		head={ name="Fu. Bandeau +2", augments={'Enhances "Battuta" effect',}},
		body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
		hands={ name="Taeon Gloves", augments={'Spell interruption rate down -10%','Phalanx +3',}},
		legs={ name="Taeon Tights", augments={'Spell interruption rate down -10%','Phalanx +3',}},
		feet={ name="Taeon Boots", augments={'Spell interruption rate down -10%','Phalanx +3',}},
		neck={ name="Futhark Torque +1", augments={'Path: A',}},
		waist="Flume Belt +1",
		left_ear="Genmei Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Defending Ring",
		right_ring="Moonlight Ring",
		back="Moonbeam Cape",
		}

----			 Weaponskill Sets				----	
	sets.ws.dimidiation = {
		ammo="Knobkierrie",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Fotia Gorget",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Sherida Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Epaminondas's Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Spell interruption rate down-10%',}},
		}
		
	sets.ws.resolution = {
		ammo="Knobkierrie",
		head={ name="Lustratio Cap +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
		body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
		hands={ name="Herculean Gloves", augments={'Accuracy+30','"Triple Atk."+4','Attack+13',}},
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet={ name="Lustra. Leggings +1", augments={'Attack+20','STR+8','"Dbl.Atk."+3',}},
		neck="Fotia Gorget",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		right_ear="Sherida Earring",
		left_ring="Sroda Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
		}
		
	sets.ws.savageblade = {
		ammo="Knobkierrie",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck={ name="Futhark Torque +1", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Epaminondas's Ring",
		right_ring="Sroda Ring",
		back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Spell interruption rate down-10%',}},
	}
end

----			 Internal Logic				----	
-- Idle() - the superhero of the .lua
function idle()
	if Mode == "Hybrid" or Mode == "DPS" then
		if player.status == "Engaged" then
			if player.sub_job == "NIN" or player.sub_job == "DNC" then 
				if Mode == "Hybrid" then
					equip(sets.engaged.dualwield)
				elseif Mode == "DPS" then
					equip(sets.engaged.dualwielddps)
				end
			else
				if Mode == "Hybrid" then
					equip(sets.engaged.hybrid)
				elseif Mode == "DPS" then
					equip(sets.engaged.dps)
				end
			end
		else
			if player.sub_job == "NIN" or player.sub_job == "DNC" then 
				equip(sets.idle.dualwield) 
			else
				equip(sets.idle.normal)
			end
		end
	elseif Mode == "AoETank" then
		if player.status == "Engaged" then
			if buffactive["Battuta"] then
				equip(sets.engaged.battuta)
			else
				equip(sets.idle.aoetank)
			end
		else
			equip (sets.idle.aoetank)
		end
	elseif Mode == "SingleTank" then
		if player.status == "Engaged" then
			if buffactive["Battuta"] then
				equip(sets.engaged.battuta)
			else
				equip(sets.idle.singletank)
			end
		else
			equip (sets.idle.singletank)
		end
	elseif Mode == "MagicEva" then
		equip(sets.idle.magic)
	elseif Mode == "MagicAettir" then
		equip(sets.idle.magicaettir)
	end
end

--Checks state when becoming engaged
function status_change(new,old)
	if new == "Engaged" then
		idle()
	else
		idle()
	end
end

--Precast rules
function precast(spell)
	if spell.type == "WeaponSkill" then 
		if spell.english == "Resolution" then
			equip (sets.ws.resolution) 
		elseif spell.english == "Dimidiation" then
			equip(sets.ws.dimidiation)	
		elseif spell.english == "Savage Blade" then
			equip(sets.ws.savageblade)
		else
			equip(sets.ws.dimidiation)
		end
	elseif spell.english == "Battuta" then
		equip(sets.precast.battuta)
	elseif spell.english == "Valiance" or spell.english == "Vallation" then
		equip(sets.precast.valiance)
	elseif spell.english == "Vivacious Pulse" then
		equip(sets.precast.pulse)
	elseif spell.type == "JobAbility" or spell.english == "Pflug" or spell.english == "Liement" or spell.english == "Battuta" then
		equip(sets.precast.enmity)
	elseif spell.type == "BlueMagic" or spell.type == "BlackMagic" or spell.type == "WhiteMagic" or spell.type == "Ninjutsu" then 
		equip(sets.precast.fastcast)
	else
		idle()
	end
end

--midcast rules
function midcast(spell)
	if spell.type == "WeaponSkill" then 
		if spell.english == "Resolution" then
			equip (sets.ws.resolution) 
		elseif spell.english == "Dimidiation" then
			equip(sets.ws.dimidiation)	
		elseif spell.english == "Savage Blade" then
			equip(sets.ws.savageblade)
		else
			equip(sets.ws.dimidiation)
		end
	elseif spell.english == "Foil" or spell.english == "Poisonga" or spell.english == "Stun" or spell.english == "Flash" or spell.english == "Jettatura" or spell.english == "Blank Gaze" then
		if Mode == "Hybrid" or Mode == "DPS" or MOde == "Single Tank" or Mode == "MagicEva" then
			equip(sets.midcast.enmity)
		elseif Mode == "AoETank" then
			equip(sets.midcast.SIR)
		end
	elseif spell.english == "Phalanx" then
		equip(sets.midcast.phalanx)
	elseif spell.type == "BlueMagic" or spell.type == "BlackMagic" or spell.type == "WhiteMagic" or spell.type == "Ninjutsu" then 
		equip(sets.midcast.SIR)
	else
		idle()
	end
end

--aftercast rules
function aftercast(spell)
	if spell.english == "Battuta" and player.status == "Engaged" then
		if Mode == "AoETank" or Mode == "SingleTank" then
			equip(sets.idle.battuta)
		else
			idle()
		end
	else	
		idle()
	end
end

-- rules for setting modes
function self_command(command)
	if command == "ToggleHybrid" then
		if Mode == "Hybrid" then
			Mode = "DPS"
			send_command('console_echo "DPS Mode"')
			idle()
		elseif Mode == "DPS" or Mode == "AoETank" or Mode == "SingleTank" or Mode == "MagicEva" or Mode == "MagicAettir" then
			Mode = "Hybrid"
			send_command('console_echo "Hybrid Mode"')
			idle()
		end
	elseif command == "ToggleTank" then
		if Mode == "AoETank" then
			Mode = "SingleTank"
			send_command('console_echo "Single Tank Mode"')
			idle()
		elseif Mode == "Hybrid" or Mode == "DPS" or Mode == "SingleTank" or Mode == "MagicEva" or Mode == "MagicAettir" then
			Mode = "AoETank"
			send_command('console_echo "AoE Tank Mode"')
			idle()
		end
	elseif command == "ToggleMagic" then
		if Mode == "MagicEva" then
			Mode = "MagicAettir"
			send_command('console_echo "Magic Evasion Mode (Aettir)"')
			idle()
		elseif Mode == "Hybrid" or Mode == "DPS" or Mode == "AoETank" or Mode == "SingleTank" or Mode == "MagicAettir" then
			Mode = "MagicEva"
			send_command('console_echo "Magic Evasion Mode"')
			idle()
		end
	elseif command == "WeaponLion" then
		send_command ('input /equip Main "Lionheart"')
		send_command('console_echo "Lionheart Equipped"')
	elseif command == "WeaponEpeo" then
		send_command ('input /equip Main "Epeolatry"')
		send_command('console_echo "Epeolatry Equipped"')
	elseif command == "WeaponAettir" then
		send_command ('input /equip Main "Aettir"')
		send_command('console_echo "Aettir Equipped"')
	end
end