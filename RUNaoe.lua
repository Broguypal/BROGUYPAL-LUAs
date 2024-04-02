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
    enable("main","sub","range","ammo","head","neck","ear1","ear2","body","hands","ring1","ring2","back","waist","legs","feet")
end


send_command ('bind numpad9 gs l RUN.lua')
send_command ('bind numpad8 gs l RUNaoe.lua')
send_command ('bind numpad6 gs l RUNa.lua')
send_command ('bind numpad7 gs l RUNm.lua')
send_command ('bind numpad5 gs l RUNsingle.lua')
send_command ('bind numpad4 gs l RUNma.lua')

--RUN is standard everday use. -DT capped but good dps gear
--RUNaoe is defence mode for AoE Pulls. Spell interruption is capped at a sacrifice to enmity generation. Parry set is swapped while Battuta is active.
--RUNsingle is defence mode for single target. enmity generation takes priority over SIR. Ideal for tanking individual mobs.
--RUNm / RUNma is for fights where magic damage is the concern. High M-EVA and elemental resistances. (RUNme is aettir variant where more MEVA is needed)
--RUNa is purely for DPS where you're not afraid to take damage.

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
 
    sets.idle.normal = {
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
	sets.idle.attack = {
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
	sets.idle.battuta = {
		main={ name="Epeolatry", augments={'Path: A',}},
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
    sets.precast.fastcast = {
		ammo="Sapience Orb",
		head={ name="Herculean Helm", augments={'"Fast Cast"+5','"Mag.Atk.Bns."+14',}},
		body="Erilaz Surcoat +3",
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		legs="Agwu's Slops",
		feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+8','"Fast Cast"+6','INT+9',}},
		neck={ name="Unmoving Collar +1", augments={'Path: A',}},
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
		right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		left_ring="Ilabrat Ring",
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
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Sherida Earring",
		left_ring="Epona's Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
		}
end


function idle()
	if player.status == "Engaged" then 
		if buffactive["Battuta"] then
			equip(sets.idle.battuta)
		else
			equip(sets.idle.attack)
		end
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
	if spell.type == "WeaponSkill" then 
		if spell.english == "Resolution" then
			equip (sets.ws.resolution) 
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

function midcast(spell)
	if spell.english == "Phalanx" then
		equip(sets.midcast.phalanx)
	elseif spell.type == "BlueMagic" or spell.type == "BlackMagic" or spell.type == "WhiteMagic" or spell.type == "Ninjutsu" then 
		equip(sets.midcast.SIR)
	else
		idle()
	end
end

function aftercast(spell)
	if spell.english == "Battuta" and player.status == "Engaged" then
		equip(sets.idle.battuta)
	else
		idle()
	end
end