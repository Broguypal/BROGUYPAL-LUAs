--  ____                                          _ _     
-- |  _ \                                        | ( )    
-- | |_) |_ __ ___   __ _ _   _ _   _ _ __   __ _| |/ ___ 
-- |  _ <| '__/ _ \ / _` | | | | | | | '_ \ / _` | | / __|
-- | |_) | | | (_) | (_| | |_| | |_| | |_) | (_| | | \__ \
-- |____/|_|  \___/ \__, |\__,_|\__, | .__/ \__,_|_| |___/
--                   __/ |       __/ | |                  
--                  |___/       |___/|_|    
--BLU LUA


function file_unload()
	send_command('unbind f10')
    send_command('unbind numpad9')
    send_command('unbind numpad8')
    send_command('unbind numpad7')
    send_command('unbind numpad6')
	send_command('unbind numpad5')
	send_command('unbind numpad4')
	send_command('unbind numpad3')
	send_command('unbind f8')
	send_command('unbind f9')
	send_command('unbind f10')
	send_command('unbind f11')
	send_command('unbind f12')
    enable("main","sub","range","ammo","head","neck","ear1","ear2","body","hands","ring1","ring2","back","waist","legs","feet")
end

--[[
^ = Ctrl
! = Alt Key
@ = Windows Key
]]

function get_sets()
send_command('bind numpad9 gs c ToggleHybrid')
send_command('bind numpad8 gs c ToggleTank')
send_command('bind numpad7 gs c ToggleDPS')
send_command('bind numpad6 gs c ToggleTreasure')

send_command ('bind numpad5 input //aset set treasure')
send_command ('bind !numpad5 input //aset set tpdrain')
send_command ('bind ^numpad5 input //aset set omen')

send_command ('bind numpad4 input //aset set aoe')
send_command ('bind ^numpad4 input //aset set odyssey')

send_command ('bind ^numpad6 input //aset set melee')

send_command ('bind numpad3 input //aset set tank')

--QOL commands
send_command ('bind numpad1 input /mount "Noble Chocobo"')
send_command ('bind numpad2 input /dismount')
send_command('bind f9 input /item "Remedy" <me>')
send_command('bind f10 input /item "Panacea" <me>')
send_command('bind f11 input /item "Holy Water" <me>')
send_command('bind f12 input //fillmode')

Mode = "Hybrid"

Modes = {'Hybrid','HybridHaste1','DPS','DPSHaste1','TreasureHunter','OmenTank'}


send_command('bind f10 input //fillmode')


    sets.idle = {}                  -- Leave this empty
	sets.engaged = {}				-- Leave this empty
		sets.engaged.dps = {}
		sets.engaged.hybrid = {}
    sets.precast = {}               -- leave this empty   
		sets.precast.tank = {}
    sets.midcast = {}               -- leave this empty
		sets.midcast.tank = {}
    sets.aftercast = {}             -- leave this empty
	sets.ws = {}					-- Leave this empty
	sets.items = {}
 
 
 ---- IDLE SETS ----
    sets.idle.hybrid = {
		ammo="Staunch Tathlum +1",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body="Hashishin Mintan +2",
		hands="Hashi. Bazu. +2",
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Sibyl Scarf",
		waist="Carrier's Sash",
		left_ear="Genmei Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Shadow Ring",
		right_ring="Defending Ring",
		back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10','Phys. dmg. taken-10%',}},
	}
	
	sets.idle.tank = {
		main="Naegling",
		sub="Sakpata's Sword",
		ammo="Amar Cluster",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck={ name="Bathy Choker +1", augments={'Path: A',}},
		waist="Svelt. Gouriz +1",
		left_ear="Eabani Earring",
		right_ear="Infused Earring",
		left_ring="Defending Ring",
		right_ring="Ilabrat Ring",
		back={ name="Rosmerta's Cape", augments={'AGI+20','Eva.+20 /Mag. Eva.+20','Evasion+10','"Fast Cast"+10','Evasion+15',}},
	}
	
---- ENGAGED SETS ---- (NOTE - DPS Sets assume Dual Wield 3)
--Tank engaged
	sets.engaged.tank = {
		main="Naegling",
		sub={ name="Thibron", augments={'TP Bonus +1000',}},
		ammo="Amar Cluster",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck={ name="Bathy Choker +1", augments={'Path: A',}},
		waist="Reiki Yotai",
		left_ear="Eabani Earring",
		right_ear="Infused Earring",
		left_ring="Defending Ring",
		right_ring="Ilabrat Ring",
		back={ name="Rosmerta's Cape", augments={'AGI+20','Eva.+20 /Mag. Eva.+20','Evasion+10','"Fast Cast"+10','Evasion+15',}},
	}

--Treasure hunter engaged.
	sets.engaged.treasure = {
		ammo="Per. Lucky Egg",
		head="Malignance Chapeau",
		body={ name="Herculean Vest", augments={'CHR+1','Attack+6','"Treasure Hunter"+2','Mag. Acc.+13 "Mag.Atk.Bns."+13',}},
		hands="Malignance Gloves",
		legs={ name="Herculean Trousers", augments={'"Drain" and "Aspir" potency +1','Pet: Accuracy+27 Pet: Rng. Acc.+27','"Treasure Hunter"+2','Accuracy+12 Attack+12','Mag. Acc.+13 "Mag.Atk.Bns."+13',}},
		feet={ name="Herculean Boots", augments={'Pet: Phys. dmg. taken -1%','STR+4','"Treasure Hunter"+2','Accuracy+18 Attack+18',}},
		neck="Mirage Stole +1",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Suppanomimi",
		right_ear={ name="Hashi. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+13','Mag. Acc.+13','"Dbl.Atk."+4',}},
		left_ring="Epona's Ring",
		right_ring="Defending Ring",
		back={ name="Rosmerta's Cape", augments={'Accuracy+20 Attack+20','Accuracy+5','"Store TP"+10',}},
	}

----HYBRID ENGAGED SETS ----

--[[ Key DW pieces:
-- Suppanomimi - 5 DW
-- Eabani earring - 4 DW
-- Ambu Cape - 10 DW
-- Adhemar Jacket +1 - 6 DW
-- Reiki Yotai - 7 DW
-- Taeon Boots - 9DW
-- Carmine Cuisses +1 - 6DW
-- Max = 48 DW
]]
----NOTE ** all sets asume DW3
-- Capped Haste (11 DW to Cap with DW3)
	sets.engaged.hybrid.hastecap = {
		ammo="Aurgelmir Orb",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Mirage Stole +1",
		waist="Reiki Yotai",
		left_ear="Suppanomimi",
		right_ear="Telos Earring",
		left_ring="Defending Ring",
		right_ring="Fickblix's Ring",
		back={ name="Rosmerta's Cape", augments={'Accuracy+20 Attack+20','Accuracy+5','"Store TP"+10',}},
	}

--35 Magic Haste (22 DW to cap with DW3)
	sets.engaged.hybrid.haste35 = set_combine(sets.engaged.hybrid.hastecap,{
		waist="Reiki Yotai", --7DW
		left_ear="Suppanomimi", -- 5DW
		back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10','Phys. dmg. taken-10%',}}, --10DW
	})

--30 Magic Haste (31DW to cap with DW3)
	sets.engaged.hybrid.haste30 = set_combine(sets.engaged.hybrid.hastecap,{
		body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}}, -- 6DW
		waist="Reiki Yotai", --7DW
		left_ear="Suppanomimi", -- 5DW
		right_ear="Eabani Earring", -- 4 DW
		back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10','Phys. dmg. taken-10%',}}, --10DW

	})

-- 15 Magic Haste (42DW to cap with DW 3)
	sets.engaged.hybrid.haste15 = set_combine(sets.engaged.hybrid.hastecap,{
		body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}}, -- 6DW
		feet={ name="Taeon Boots", augments={'Accuracy+25','"Dual Wield"+5','DEX+10',}}, --9 DW
		waist="Reiki Yotai", --7DW
		left_ear="Suppanomimi", -- 5DW
		right_ear="Eabani Earring", -- 4 DW
		back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10','Phys. dmg. taken-10%',}}, --10DW
	})

-- 0 Magic Haste (49DW to cap with DW3)
	
	sets.engaged.hybrid.haste0 = set_combine(sets.engaged.hybrid.hastecap,{
		body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}}, -- 6DW
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}}, --6DW
		feet={ name="Taeon Boots", augments={'Accuracy+25','"Dual Wield"+5','DEX+10',}}, --9 DW
		waist="Reiki Yotai", --7DW
		left_ear="Suppanomimi", -- 5DW
		right_ear="Eabani Earring", -- 4 DW
		back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10','Phys. dmg. taken-10%',}}, --10DW
	})

---- DPS ENGAGED SETS ----

-- Capped Haste (11 DW to Cap with DW3/ 6 DW to cap with DW4)
	sets.engaged.dps.hastecap = {
	    ammo="Aurgelmir Orb",
		head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
		body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}}, --6DW
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet={ name="Herculean Boots", augments={'Accuracy+18 Attack+18','"Triple Atk."+4',}},
		neck="Mirage Stole +1",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Suppanomimi", -- 5DW
		right_ear="Telos Earring",
		left_ring="Epona's Ring",
		right_ring="Fickblix's Ring",
		back={ name="Rosmerta's Cape", augments={'Accuracy+20 Attack+20','Accuracy+5','"Store TP"+10',}},
	}

--35 Magic Haste(22 DW to cap with DW3)
	sets.engaged.dps.haste35 = set_combine(sets.engaged.dps.hastecap,{
		body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}}, -- 6DW
		waist="Reiki Yotai", --7DW
		left_ear="Suppanomimi", -- 5DW
		right_ear="Eabani Earring", -- 4 DW
	})

--30 Magic Haste or lower (31DW to cap with DW3
 
	sets.engaged.dps.haste30 = set_combine(sets.engaged.dps.hastecap,{
		body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}}, -- 6DW
		waist="Reiki Yotai", --7DW
		left_ear="Suppanomimi", -- 5DW
		right_ear="Eabani Earring", -- 4 DW
		feet={ name="Taeon Boots", augments={'Accuracy+25','"Dual Wield"+5','DEX+10',}}, --9 DW
	})

-- 15 Magic Haste (42DW to cap with DW 3)
	sets.engaged.dps.haste15 = set_combine(sets.engaged.dps.hastecap,{
		body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}}, -- 6DW
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}}, --6DW
		feet={ name="Taeon Boots", augments={'Accuracy+25','"Dual Wield"+5','DEX+10',}}, --9 DW
		waist="Reiki Yotai", --7DW
		left_ear="Suppanomimi", -- 5DW
		back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10','Phys. dmg. taken-10%',}}, --10DW
	})

-- 0 Magic Haste (49DW to cap with DW3)
	
	sets.engaged.dps.haste0 = set_combine(sets.engaged.dps.hastecap,{
		body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}}, -- 6DW
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}}, --6DW
		feet={ name="Taeon Boots", augments={'Accuracy+25','"Dual Wield"+5','DEX+10',}}, --9 DW
		waist="Reiki Yotai", --7DW
		left_ear="Suppanomimi", -- 5DW
		right_ear="Eabani Earring", -- 4 DW
		back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10','Phys. dmg. taken-10%',}}, --10DW
	})


---- PRECAST SETS ----
    sets.precast.fastcast = {
		ammo="Amar Cluster",
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		body={ name="Adhemar Jacket +1", augments={'HP+105','"Fast Cast"+10','Magic dmg. taken -4',}},
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+8','"Fast Cast"+6','INT+4',}},
		feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+8','"Fast Cast"+6','INT+9',}},
		neck="Voltsurge Torque",
		waist="Witful Belt",
		left_ring="Kishar Ring",
		right_ring="Rahab Ring",
		back={ name="Rosmerta's Cape", augments={'AGI+20','Eva.+20 /Mag. Eva.+20','Evasion+10','"Fast Cast"+10','Evasion+15',}},
	}
	
	sets.precast.bluemagic = set_combine(sets.precast.fastcast,{ 
		body="Hashishin Mintan +2",
	})
	
	sets.precast.diffusion = {
		feet="Luhlaza Charuqs +1",
	}

---- TANK PRECAST SETS----
	sets.precast.tank.dreamflower = {
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
	
---- MIDCAST SETS ----
	sets.midcast.tpdrain = {
	    ammo="Pemphredo Tathlum",
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		body="Hashishin Mintan +2",
		hands="Hashi. Bazu. +2",
		legs="Hashishin Tayt +2",
		feet="Malignance Boots",
		neck="Mirage Stole +1",
		waist="Witful Belt",
		left_ear="Digni. Earring",
		right_ear={ name="Hashi. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+13','Mag. Acc.+13','"Dbl.Atk."+4',}},
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back={ name="Rosmerta's Cape", augments={'AGI+20','Eva.+20 /Mag. Eva.+20','Evasion+10','"Fast Cast"+10','Evasion+15',}},
	}

    sets.midcast.spelldamage = {
		ammo="Staunch Tathlum +1",
		head="Hashishin Kavuk +2",
		body="Hashishin Mintan +2",
		hands="Hashi. Bazu. +2",
		legs="Hashishin Tayt +2",
		feet="Hashi. Basmak +2",
		neck="Sibyl Scarf",
		waist="Orpheus's Sash",
		left_ear="Friomisi Earring",
		right_ear="Hecate's Earring",
		left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		right_ring="Shiva Ring +1",
		back="Moonbeam Cape",
		}
	
	sets.midcast.magicaccuracy = {
		ammo="Pemphredo Tathlum",
		head="Hashishin Kavuk +2",
		body="Hashishin Mintan +2",
		hands="Hashi. Bazu. +2",
		legs="Hashishin Tayt +2",
		feet="Hashi. Basmak +2",
		neck="Mirage Stole +1",
		waist="Eschan Stone",
		left_ear="Crep. Earring",
		right_ear={ name="Hashi. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+13','Mag. Acc.+13','"Dbl.Atk."+4',}},
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back={ name="Rosmerta's Cape", augments={'AGI+20','Eva.+20 /Mag. Eva.+20','Evasion+10','"Fast Cast"+10','Evasion+15',}},
	}

	sets.midcast.phalanx = {
		ammo="Staunch Tathlum +1",
		head="Malignance Chapeau",
		body={ name="Taeon Tabard", augments={'Phalanx +3',}},
		hands={ name="Taeon Gloves", augments={'Phalanx +3',}},
		legs={ name="Taeon Tights", augments={'Phalanx +3',}},
		feet={ name="Taeon Boots", augments={'Phalanx +3',}},
		neck={ name="Loricate Torque +1", augments={'Path: A',}},
		waist="Aswang Sash",
		left_ear="Magnetic Earring",
		right_ear="Halasz Earring",
		left_ring="Defending Ring",
		right_ring="Evanescence Ring",
		back="Moonbeam Cape",
	}
	
	sets.midcast.treasurehunter = {
		ammo="Per. Lucky Egg",
		head="Hashishin Kavuk +2",
		body={ name="Herculean Vest", augments={'CHR+1','Attack+6','"Treasure Hunter"+2','Mag. Acc.+13 "Mag.Atk.Bns."+13',}},
		hands="Hashi. Bazu. +2",
		legs={ name="Herculean Trousers", augments={'"Drain" and "Aspir" potency +1','Pet: Accuracy+27 Pet: Rng. Acc.+27','"Treasure Hunter"+2','Accuracy+12 Attack+12','Mag. Acc.+13 "Mag.Atk.Bns."+13',}},
		feet={ name="Herculean Boots", augments={'Pet: Phys. dmg. taken -1%','STR+4','"Treasure Hunter"+2','Accuracy+18 Attack+18',}},
		neck="Sibyl Scarf",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear="Hecate's Earring",
		left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		right_ring="Shiva Ring +1",
		back="Moonbeam Cape",
	}
	
	sets.midcast.aquaveil = {
	}

---- Tank Midcast Sets ----
	sets.midcast.tank.phalanx = {
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
	sets.midcast.tank.magicaccuracy = {
	    ammo="Ombre Tathlum +1",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Hashishin Tayt +2",
		feet="Malignance Boots",
		neck="Mirage Stole +1",
		waist="Austerity Belt +1",
		left_ear="Magnetic Earring",
		right_ear={ name="Hashi. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+13','Mag. Acc.+13','"Dbl.Atk."+4',}},
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back="Moonbeam Cape",
	}
	sets.midcast.tank.defence = {
		ammo="Staunch Tathlum +1",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck={ name="Bathy Choker +1", augments={'Path: A',}},
		waist="Svelt. Gouriz +1",
		left_ear="Eabani Earring",
		right_ear="Infused Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back={ name="Rosmerta's Cape", augments={'AGI+20','Eva.+20 /Mag. Eva.+20','Evasion+10','"Fast Cast"+10','Evasion+15',}},
	}

---- WEAPONSKILL SETS ----
	sets.ws.normal = {
		ammo="Oshasha's Treatise",
		head="Hashishin Kavuk +2",
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Rep. Plat. Medal",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Sroda Ring",
		right_ring="Fickblix's Ring",
		back={ name="Rosmerta's Cape", augments={'Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}
	
	sets.ws.expiacion = {
	    ammo="Coiste Bodhar",
		head="Hashishin Kavuk +2",
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Mirage Stole +1",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Sroda Ring",
		right_ring="Epaminondas's Ring",
		back={ name="Rosmerta's Cape", augments={'Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}
	
	sets.ws.chantducygne = {
	    ammo="Coiste Bodhar",
		head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
		body="Gleti's Cuirass",
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs="Gleti's Breeches",
		feet="Gleti's Boots",
		neck="Mirage Stole +1",
		waist="Fotia Belt",
		left_ear="Mache Earring +1",
		right_ear={ name="Hashi. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+13','Mag. Acc.+13','"Dbl.Atk."+4',}},
		left_ring="Begrudging Ring",
		right_ring="Epona's Ring",
		back={ name="Rosmerta's Cape", augments={'Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}
	
	sets.ws.requiescat = {
	    ammo="Coiste Bodhar",
		head="Hashishin Kavuk +2",
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Persis Ring",
		right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		back={ name="Rosmerta's Cape", augments={'Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}
	
	sets.ws.savageblade = {
		ammo="Coiste Bodhar",
		head="Hashishin Kavuk +2",
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Mirage Stole +1",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Sroda Ring",
		right_ring="Epaminondas's Ring",
		back={ name="Rosmerta's Cape", augments={'Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}
	
	sets.ws.sanguineblade = {
	    ammo="Pemphredo Tathlum",
		head="Pixie Hairpin +1",
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands="Jhakri Cuffs +2",
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Sibyl Scarf",
		waist="Orpheus's Sash",
		left_ear="Crematio Earring",
		right_ear="Friomisi Earring",
		left_ring="Epaminondas's Ring",
		right_ring="Archon Ring",
		back={ name="Rosmerta's Cape", augments={'Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}
	
	sets.ws.blackhalo = {
		ammo="Coiste Bodhar",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Rep. Plat. Medal",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Epaminondas's Ring",
		right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		back={ name="Rosmerta's Cape", augments={'Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}
	
---------------------------	ITEM SETS	---------------------------
	sets.items.holywater = {
		neck="Nicander's Necklace",
		left_ring="Purity Ring",
		right_ring="Blenmot's Ring",
	}
end


windower.register_event('lose buff', function(buff_id)
	if buff_id == 66 then
		idle()
	end
	if buff_id == 33 then
		idle()
	end
	if buff_id == 580 then
		idle()
	end
	if buff_id == 604 then
		idle()
	end
	if buff_id == 214 then
		idle()
	end
	if buff_id == 228 then
		idle()
	end
end)

windower.register_event('gain buff', function(buff_id)
	if buff_id == 66 then
		idle()
	end
	if buff_id == 33 then
		idle() 
	end
	if buff_id == 580 then
		idle()
	end
	if buff_id == 604 then
		idle()
	end
	if buff_id == 214 then
		idle()
	end
	if buff_id == 228 then
		idle()
	end
end)


function idle()
	if Mode == "OmenTank" then
		if player.status == "Engaged" then 
			equip(sets.engaged.tank) 
		else
			equip(sets.idle.tank)
		end
	elseif Mode == "TreasureHunter" then
		if player.status == "Engaged" then 
			equip(sets.engaged.treasure) 
		else
			equip(sets.idle.hybrid)
		end
	elseif Mode == "Hybrid" or Mode == "DPS" then
		if player.status == "Engaged" then 
			if ( ( (buffactive[33] or buffactive[580] or buffactive.embrava) and (buffactive.march or buffactive[604]) ) or
            ( buffactive[33] and (buffactive[580] or buffactive.embrava) ) or
            ( buffactive.march == 2 and buffactive[604] ) ) then
				if Mode == "Hybrid" then
					equip(sets.engaged.hybrid.hastecap)
				elseif Mode == "DPS" then
					equip(sets.engaged.dps.hastecap)
				end
			elseif ( (buffactive[33] or buffactive.march == 2 or buffactive[580]) and buffactive['haste samba'] ) then
				if Mode == "Hybrid" then
					equip(sets.engaged.hybrid.haste35)
				elseif Mode == "DPS" then
					equip(sets.engaged.dps.haste35)
				end
			elseif ( ( buffactive[580] or buffactive[33] or buffactive.march == 2 ) or
            ( buffactive.march == 1 and buffactive[604] ) ) then
				if Mode == "Hybrid" then
					equip(sets.engaged.hybrid.haste30)
				elseif Mode == "DPS" then
					equip(sets.engaged.dps.haste30)
				end
			elseif ( buffactive.march == 1 or buffactive[604] ) then
				if Mode == "Hybrid" then
					equip(sets.engaged.hybrid.haste15)
				elseif Mode == "DPS" then
					equip(sets.engaged.dps.haste15)
				end
			else
				if Mode == "Hybrid" then
					equip(sets.engaged.hybrid.haste0)
				elseif Mode == "DPS" then
					equip(sets.engaged.dps.haste0)
				end
			end
		else
			equip(sets.idle.hybrid)
		end 
	elseif Mode == "HybridHaste1" or Mode == "DPSHaste1" then
		if player.status == "Engaged" then 
			if ( buffactive[580] and ( buffactive.march or buffactive[33] or buffactive.embrava or buffactive[604]) ) or  -- geo haste + anything
			( buffactive.embrava and (buffactive.march or buffactive[33] or buffactive[604]) ) or  -- embrava + anything
			( buffactive.march == 2 and (buffactive[33] or buffactive[604]) ) or  -- two marches + anything
			( buffactive[33] and buffactive[604] and buffactive.march ) then -- haste + mighty guard + any marches
				if Mode == "HybridHaste1" then
					equip(sets.engaged.hybrid.hastecap)
				elseif Mode == "DPSHaste1" then
					equip(sets.engaged.dps.hastecap)
				end
			elseif ( (buffactive[604] or buffactive[33]) and buffactive['haste samba'] and buffactive.march == 1) or -- MG or haste + samba with 1 march
            ( buffactive.march == 2 and buffactive['haste samba'] ) or
            ( buffactive[580] and buffactive['haste samba'] ) then 
				if Mode == "HybridHaste1" then
					equip(sets.engaged.hybrid.haste35)
				elseif Mode == "DPSHaste1" then
					equip(sets.engaged.dps.haste35)
				end
			elseif ( buffactive.march == 2 ) or -- two marches from ghorn
            ( (buffactive[33] or buffactive[604]) and buffactive.march == 1 ) or  -- MG or haste + 1 march
            ( buffactive[580] ) or  -- geo haste
            ( buffactive[33] and buffactive[604] ) then -- haste with MG
				if Mode == "HybridHaste1" then
					equip(sets.engaged.hybrid.haste30)
				elseif Mode == "DPSHaste1" then
					equip(sets.engaged.dps.haste30)
				end
			elseif buffactive[33] or buffactive[604] or buffactive.march == 1 then
				if Mode == "HybridHaste1" then
					equip(sets.engaged.hybrid.haste15)
				elseif Mode == "DPSHaste1" then
					equip(sets.engaged.dps.haste15)
				end
			else
				if Mode == "HybridHaste1" then
					equip(sets.engaged.hybrid.haste0)
				elseif Mode == "DPSHaste1" then
					equip(sets.engaged.dps.haste0)
				end
			end
		else
			equip(sets.idle.hybrid)
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

function precast(spell)
	if spell.name == "Diffusion" then
		equip(sets.precast.diffusion)
	elseif spell.english == "Holy Water" then
		equip(sets.items.holywater)
	elseif spell.type == "BlueMagic" then
		if spell.english == "Dream Flower" or spell.english == "Sheep Song" then
			if Mode == "OmenTank" then
				equip(sets.precast.tank.dreamflower)
			else
				equip(sets.precast.bluemagic)
			end
		else
			equip(sets.precast.bluemagic)
		end
	elseif spell.type == "BlackMagic" or spell.type == "WhiteMagic" or spell.type == "Ninjutsu" then 
		equip(sets.precast.fastcast)
	elseif spell.type == "WeaponSkill" then 
		if spell.english == "Expiacion" then
			equip(sets.ws.expiacion)
		elseif spell.english == "Chant du Cygne" then
			equip(sets.ws.chantducygne)
		elseif spell.english == "Requiescat" then
			equip(sets.ws.requiescat)
		elseif spell.english == "Savage Blade" then
			equip(sets.ws.savageblade)
		elseif spell.english == "Sanguine Blade" then
			equip(sets.ws.sanguineblade)
		elseif spell.english == "Black Halo" then
			equip(sets.ws.blackhalo)
		else
			equip(sets.ws.normal)	
		end
	end
end

function midcast(spell)
	if spell.type == "WeaponSkill" then 
		if spell.english == "Expiacion" then
			equip(sets.ws.expiacion)
		elseif spell.english == "Chant du Cygne" then
			equip(sets.ws.chantducygne)
		elseif spell.english == "Requiescat" then
			equip(sets.ws.requiescat)
		elseif spell.english == "Savage Blade" then
			equip(sets.ws.savageblade)
		elseif spell.english == "Sanguine Blade" then
			equip(sets.ws.sanguineblade)
		elseif spell.english == "Black Halo" then
			equip(sets.ws.blackhalo)
		else
			equip(sets.ws.normal)	
		end
	elseif spell.english == "Holy Water" then
		equip(sets.items.holywater)
	elseif Mode == "OmenTank" then
		if spell.english == "Phalanx" then
			equip(sets.midcast.tank.phalanx)
		elseif spell.english == "Aquaveil" then
			equip(sets.midcast.aquaveil)
		elseif spell.english == "Dream Flower" or spell.english == "Sheep Song" then
			equip(sets.midcast.tank.defence)
		elseif spell.english == "Cruel Joke" then
			equip(sets.midcast.tank.magicaccuracy)
		elseif spell.english == "Reaving Wind" or spell.english == "Feather Tickle" then
			equip(sets.midcast.tpdrain)
		else
			equip(sets.idle.tank)
		end
	elseif Mode == "TreasureHunter" then
		if spell.english == "Phalanx" then
			equip(sets.midcast.phalanx)
		elseif spell.english == "Aquaveil" then
			equip(sets.midcast.aquaveil)
		else 
			equip(sets.midcast.treasurehunter)
		end
	else
		if spell.english == "Phalanx" then
			equip(sets.midcast.phalanx)
		elseif spell.english == "Aquaveil" then
			equip(sets.midcast.aquaveil)
		elseif spell.english == "Reaving Wind" or spell.english == "Feather Tickle" then
			equip(sets.midcast.tpdrain)
		elseif spell.english == "Dream Flower" or spell.english == "Sheep Song" or spell.english == "Sudden Lunge" then
			equip(sets.midcast.magicaccuracy)
		else
			equip(sets.midcast.spelldamage)
		end
	end
end


function aftercast(spell)
	idle()
end

function self_command(command)
	if command == "ToggleHybrid" then
		if Mode == "OmenTank" or Mode == "TreasureHunter" or Mode == "DPS" or Mode == "DPSHaste1" or Mode == "HybridHaste1" then
			Mode = "Hybrid"
			send_command('console_echo "Hybrid"')
			idle()
		elseif Mode == "Hybrid" then
			Mode = "HybridHaste1"
			send_command('console_echo "HybridHaste1"')
			idle()
		end
	elseif command == "ToggleTank" then
		if Mode == "Hybrid" or Mode == "OmenTank" or Mode == "TreasureHunter" or Mode == "DPS" or Mode == "DPSHaste1" or Mode == "HybridHaste1" then
			Mode = "OmenTank"
			send_command('console_echo "OmenTank"')
			idle()
		end
	elseif command == "ToggleDPS" then
		if Mode == "Hybrid" or Mode == "OmenTank" or Mode == "TreasureHunter" or Mode == "DPSHaste1" or Mode == "HybridHaste1" then
			Mode = "DPS"
			send_command('console_echo "DPS"')
			idle()
		elseif Mode == "DPS" then
			Mode = "DPSHaste1"
			send_command('console_echo "DPSHaste1"')
			idle()
		end
	elseif command == "ToggleTreasure" then
		if Mode == "Hybrid" or Mode == "OmenTank" or Mode == "DPS" or Mode == "DPSHaste1" or Mode == "TreasureHunter" or Mode == "HybridHaste1" then
			Mode = "TreasureHunter"
			send_command('console_echo "TreasureHunter"')
			idle()
		end
	end
end