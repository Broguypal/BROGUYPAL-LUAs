--  ____                                          _ _     
-- |  _ \                                        | ( )    
-- | |_) |_ __ ___   __ _ _   _ _   _ _ __   __ _| |/ ___ 
-- |  _ <| '__/ _ \ / _` | | | | | | | '_ \ / _` | | / __|
-- | |_) | | | (_) | (_| | |_| | |_| | |_) | (_| | | \__ \
-- |____/|_|  \___/ \__, |\__,_|\__, | .__/ \__,_|_| |___/
--                   __/ |       __/ | |                  
--                  |___/       |___/|_|    
-- 						NINJA LUA
-- Requires Gearswap Addon - "Cancel"
-- requires Dressup (to stop blinking "//du blinking self combat on")


function file_unload()
    send_command('unbind numpad9')
    send_command('unbind numpad8')
    send_command('unbind numpad7')
    send_command('unbind numpad6')
	send_command('unbind numpad5')
	send_command('unbind numpad4')
	send_command('unbind numpad3')
	send_command('unbind f9')
	send_command('unbind f10')
	send_command('unbind f11')
    enable("main","sub","range","ammo","head","neck","ear1","ear2","body","hands","ring1","ring2","back","waist","legs","feet")
end

function get_sets()
send_command('bind numpad9 gs c ToggleHybrid')
send_command('bind numpad8 gs c ToggleTank')
send_command('bind numpad7 gs c ToggleDPS')
send_command('bind numpad6 gs c ToggleMalignance')
send_command('bind numpad5 gs c ToggleEvasion')
send_command('bind f9 input /item "Remedy" <me>')
send_command('bind f10 input /item "Panacea" <me>')
send_command('bind f11 input /item "Holy Water" <me>')

Mode = "Hybrid"

Modes = {'Hybrid','HybridHaste1','Malignance','MalignanceHaste1','AoETank','EvasionTank','DPS','DPSHaste1'}

    sets.idle = {}               	-- Leave this empty.   
	sets.engaged = {}				-- Leave this empty.
		sets.engaged.hybrid = {}
		sets.engaged.malignance = {}
		sets.engaged.DPS = {}
		sets.engaged.tank = {}
		sets.engaged.evasion = {}
    sets.precast = {}               -- leave this empty    
    sets.midcast = {}               -- leave this empty    
    sets.aftercast = {}             -- leave this empty
	sets.ws = {}					-- Leave this empty
 
 -------------- IDLE SETS ---------------------
    --Hybrid/DPS IDLE--
	sets.idle.normal = {
		ammo="Date Shuriken",
		head="Mpaca's Cap",
		body="Mpaca's Doublet",
		hands="Mpaca's Gloves",
		legs="Mpaca's Hose",
		feet="Danzo Sune-Ate",
		neck={ name="Bathy Choker +1", augments={'Path: A',}},
		waist="Engraved Belt",
		left_ear="Eabani Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
		right_ring="Defending Ring",
		back={ name="Andartia's Mantle", augments={'AGI+20','Eva.+20 /Mag. Eva.+20','Evasion+2','"Store TP"+10','Evasion+15',}},
	}
	--Night Idle set w/ movement speed
	sets.idle.night = set_combine(sets.idle.normal,{
		feet="Hachi. Kyahan +1",
	})
	
	--Malignance IDLE--
	sets.idle.malignance = {
		ammo="Date Shuriken",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Danzo Sune-Ate",
		neck={ name="Bathy Choker +1", augments={'Path: A',}},
		waist="Kasiri Belt",
		left_ear="Eabani Earring",
		right_ear="Infused Earring",
		left_ring="Ilabrat Ring",
		right_ring="Hizamaru Ring",
		back={ name="Andartia's Mantle", augments={'AGI+20','Eva.+20 /Mag. Eva.+20','Evasion+2','"Store TP"+10','Evasion+15',}},
	}
	--Night Idle set w/ movement speed
	sets.idle.malignancenight = set_combine(sets.idle.malignance,{
		feet="Hachi. Kyahan +1",
	})
	
	--AoE Tank Idle
	sets.idle.AOEtank = {
		ammo="Date Shuriken",
		head="Mpaca's Cap",
		body="Mpaca's Doublet",
		hands="Mpaca's Gloves",
		legs="Mpaca's Hose",
		feet="Mpaca's Boots",
		neck={ name="Bathy Choker +1", augments={'Path: A',}},
		waist="Engraved Belt",
		left_ear="Eabani Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
		right_ring="Defending Ring",
		back={ name="Andartia's Mantle", augments={'AGI+20','Eva.+20 /Mag. Eva.+20','Evasion+2','"Store TP"+10','Evasion+15',}},
		}

	--Evasion Tank Idle
	sets.idle.evasion = {
		ammo="Date Shuriken",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck={ name="Bathy Choker +1", augments={'Path: A',}},
		waist="Kasiri Belt",
		left_ear="Eabani Earring",
		right_ear="Infused Earring",
		left_ring="Ilabrat Ring",
		right_ring="Hizamaru Ring",
		back={ name="Andartia's Mantle", augments={'AGI+20','Eva.+20 /Mag. Eva.+20','Evasion+2','"Store TP"+10','Evasion+15',}},
		}

--------------- ENGAGED SETS ------------------
---- TANK Engaged Sets ----
	sets.engaged.tank.normal = {
		ammo="Date Shuriken",
		head="Mpaca's Cap",
		body="Mpaca's Doublet",
		hands="Mpaca's Gloves",
		legs="Mpaca's Hose",
		feet="Mpaca's Boots",
		neck={ name="Bathy Choker +1", augments={'Path: A',}},
		waist="Engraved Belt",
		left_ear="Eabani Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
		right_ring="Defending Ring",
		back={ name="Andartia's Mantle", augments={'AGI+20','Eva.+20 /Mag. Eva.+20','Evasion+2','"Store TP"+10','Evasion+15',}},
		}
-- 0 shadows
	sets.engaged.tank.counter = set_combine(sets.engaged.tank.normal,{
		ammo="Amar Cluster",
		waist="Cornelia's Belt",
		back={ name="Andartia's Mantle", augments={'AGI+20','Eva.+20 /Mag. Eva.+20','Evasion+10','"Store TP"+10','System: 1 ID: 640 Val: 4',}},
		})
-- 0 Shadows + Yonin Active
	sets.engaged.tank.yonin = set_combine(sets.engaged.tank.counter,{
		legs="Hattori Hakama +2",
		})

----Evasion Engaged Sets ----
	sets.engaged.evasion.normal = {
		ammo="Date Shuriken",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck={ name="Bathy Choker +1", augments={'Path: A',}},
		waist="Kasiri Belt",
		left_ear="Eabani Earring",
		right_ear="Infused Earring",
		left_ring="Ilabrat Ring",
		right_ring="Hizamaru Ring",
		back={ name="Andartia's Mantle", augments={'AGI+20','Eva.+20 /Mag. Eva.+20','Evasion+2','"Store TP"+10','Evasion+15',}},
	}
-- 0 shadows
	sets.engaged.evasion.counter = set_combine(sets.engaged.evasion.normal,{
		ammo="Amar Cluster",
		body="Mpaca's Doublet",
		legs="Mpaca's Hose",
		waist="Cornelia's Belt",
		left_ear="Genmei Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		right_ring="Defending Ring",
		back={ name="Andartia's Mantle", augments={'AGI+20','Eva.+20 /Mag. Eva.+20','Evasion+10','"Store TP"+10','System: 1 ID: 640 Val: 4',}},
		})
-- 0 Shadows + Yonin Active
	sets.engaged.evasion.yonin = set_combine(sets.engaged.evasion.counter,{
		legs="Hattori Hakama +2",
		})

----Hybrid / Malignance / DPS engaged sets ----
------ 0 Haste (need 39 DW) -------------------
	sets.engaged.hybrid.haste0 = {
		ammo="Date Shuriken",
		head={ name="Ryuo Somen +1", augments={'HP+65','"Store TP"+5','"Subtle Blow"+8',}},
		body="Mpaca's Doublet",
		hands="Malignance Gloves",
		legs="Mpaca's Hose",
		feet="Hiza. Sune-Ate +2",
		neck={ name="Ninja Nodowa +2", augments={'Path: A',}},
		waist="Reiki Yotai",
		left_ear="Telos Earring",
		right_ear="Suppanomimi",
		left_ring="Gere Ring",
		right_ring="Fickblix's Ring",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dual Wield"+10','Damage taken-5%',}},
		}
	-- 0 haste 0 shadows
	sets.engaged.hybrid.haste0def = set_combine(sets.engaged.hybrid.haste0,{
		head="Malignance Chapeau",
		body="Mpaca's Doublet",
		hands="Malignance Gloves",
		legs="Mpaca's Hose",
		feet="Malignance Boots",
    	})
	--yonin swap
	sets.engaged.hybrid.haste0yonin = set_combine(sets.engaged.hybrid.haste0def,{
		neck={ name="Bathy Choker +1", augments={'Path: A',}},
		legs="Hattori Hakama +2",
		back={ name="Andartia's Mantle", augments={'AGI+20','Eva.+20 /Mag. Eva.+20','Evasion+10','"Store TP"+10','System: 1 ID: 640 Val: 4',}},
		})
	
	---- Malignance ----
	sets.engaged.malignance.haste0 = set_combine(sets.engaged.hybrid.haste0, {
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
	})
	sets.engaged.malignance.haste0def = set_combine(sets.engaged.malignance.haste0,{
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
    	})
	---- DPS ----
	sets.engaged.DPS.haste0 = {
		ammo="Date Shuriken",
		head="Ken. Jinpachi +1",
		body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
		hands="Ken. Tekko +1",
		legs="Ken. Hakama +1",
		feet="Hiza. Sune-Ate +2",
		neck={ name="Ninja Nodowa +2", augments={'Path: A',}},
		waist="Reiki Yotai",
		left_ear="Eabani Earring",
		right_ear="Suppanomimi",
		left_ring="Gere Ring",
		right_ring="Fickblix's Ring",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dual Wield"+10','Damage taken-5%',}},
	}
	
----- 15 Haste (need 32 DW) ----
	sets.engaged.hybrid.haste15 = {
		ammo="Date Shuriken",
		head={ name="Ryuo Somen +1", augments={'HP+65','"Store TP"+5','"Subtle Blow"+8',}},
		body="Mpaca's Doublet",
		hands="Malignance Gloves",
		legs="Mpaca's Hose",
		feet="Malignance Boots",
		neck={ name="Ninja Nodowa +2", augments={'Path: A',}},
		waist="Reiki Yotai",
		left_ear="Telos Earring",
		right_ear="Suppanomimi",
		left_ring="Gere Ring",
		right_ring="Fickblix's Ring",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dual Wield"+10','Damage taken-5%',}},
		}
	-- 15 haste 0 shadows
	sets.engaged.hybrid.haste15def = set_combine(sets.engaged.hybrid.haste15,{
		head="Malignance Chapeau",
		body="Mpaca's Doublet",
		hands="Malignance Gloves",
		legs="Mpaca's Hose",
		feet="Malignance Boots",
		})
	--yonin swap
	sets.engaged.hybrid.haste15yonin = set_combine(sets.engaged.hybrid.haste15def,{
		neck={ name="Bathy Choker +1", augments={'Path: A',}},
		legs="Hattori Hakama +2",
		back={ name="Andartia's Mantle", augments={'AGI+20','Eva.+20 /Mag. Eva.+20','Evasion+10','"Store TP"+10','System: 1 ID: 640 Val: 4',}},
		})
	
	---- Malignance ----
	sets.engaged.malignance.haste15 = set_combine(sets.engaged.hybrid.haste15, {
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		})
	sets.engaged.malignance.haste15def = set_combine(sets.engaged.malignance.haste15,{
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
    	})
	---- DPS ----
	sets.engaged.DPS.haste15 = {
		ammo="Date Shuriken",
		head="Ken. Jinpachi +1",
		body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
		hands="Ken. Tekko +1",
		legs="Ken. Hakama +1",
		feet="Ken. Sune-Ate +1",
		neck={ name="Ninja Nodowa +2", augments={'Path: A',}},
		waist="Reiki Yotai",
		left_ear="Eabani Earring",
		right_ear="Suppanomimi",
		left_ring="Gere Ring",
		right_ring="Fickblix's Ring",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dual Wield"+10','Damage taken-5%',}},
	}

---- 30 Haste (need 21 DW) ----
		sets.engaged.hybrid.haste30 = {
		head="Malignance Chapeau",
		body="Mpaca's Doublet",
		hands="Malignance Gloves",
		legs="Mpaca's Hose",
		feet="Malignance Boots",
		neck={ name="Ninja Nodowa +2", augments={'Path: A',}},
		waist="Reiki Yotai",
		left_ear="Telos Earring",
		right_ear="Suppanomimi",
		left_ring="Gere Ring",
		right_ring="Fickblix's Ring",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dual Wield"+10','Damage taken-5%',}},
		}
	-- 30 haste 0 shadows
	sets.engaged.hybrid.haste30def = set_combine(sets.engaged.hybrid.haste30,{
		head="Malignance Chapeau",
		body="Mpaca's Doublet",
		hands="Malignance Gloves",
		legs="Mpaca's Hose",
		feet="Malignance Boots",
		})
	--yonin swap
	sets.engaged.hybrid.haste30yonin = set_combine(sets.engaged.hybrid.haste30def,{
		neck={ name="Bathy Choker +1", augments={'Path: A',}},
		legs="Hattori Hakama +2",
		back={ name="Andartia's Mantle", augments={'AGI+20','Eva.+20 /Mag. Eva.+20','Evasion+10','"Store TP"+10','System: 1 ID: 640 Val: 4',}},
		})
	---- Malignance ----
	sets.engaged.malignance.haste30 = set_combine(sets.engaged.hybrid.haste30,{
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		})
	sets.engaged.malignance.haste30def = set_combine(sets.engaged.malignance.haste30,{
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		})
	---- DPS ----
	sets.engaged.DPS.haste30 = {
		ammo="Date Shuriken",
		head="Ken. Jinpachi +1",
		body="Ken. Samue +1",
		hands="Ken. Tekko +1",
		legs="Ken. Hakama +1",
		feet="Ken. Sune-Ate +1",
		neck={ name="Ninja Nodowa +2", augments={'Path: A',}},
		waist="Reiki Yotai",
		left_ear="Telos Earring",
		right_ear="Suppanomimi",
		left_ring="Gere Ring",
		right_ring="Fickblix's Ring",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dual Wield"+10','Damage taken-5%',}},
	}

---- 35 Haste (need 12 DW) ----
	sets.engaged.hybrid.haste35 = {
		ammo="Date Shuriken",
		head="Malignance Chapeau",
		body="Mpaca's Doublet",
		hands="Malignance Gloves",
		legs="Mpaca's Hose",
		feet="Malignance Boots",
		neck={ name="Ninja Nodowa +2", augments={'Path: A',}},
		waist="Reiki Yotai",
		left_ear="Telos Earring",
		right_ear="Suppanomimi",
		left_ring="Gere Ring",
		right_ring="Fickblix's Ring",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
		}
	-- 35 haste 0 shadows
	sets.engaged.hybrid.haste35def = set_combine(sets.engaged.hybrid.haste35,{
		head="Malignance Chapeau",
		body="Mpaca's Doublet",
		hands="Malignance Gloves",
		legs="Mpaca's Hose",
		feet="Malignance Boots",
		})
	--yonin swap
	sets.engaged.hybrid.haste35yonin = set_combine(sets.engaged.hybrid.haste35def,{
		neck={ name="Bathy Choker +1", augments={'Path: A',}},
		legs="Hattori Hakama +2",
		back={ name="Andartia's Mantle", augments={'AGI+20','Eva.+20 /Mag. Eva.+20','Evasion+10','"Store TP"+10','System: 1 ID: 640 Val: 4',}},
		})
	---- Malignance ----
	sets.engaged.malignance.haste35 = set_combine(sets.engaged.hybrid.haste35,{
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		})
	sets.engaged.malignance.haste35def = set_combine(sets.engaged.malignance.haste35,{
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		})
	----DPS---- 	
	sets.engaged.DPS.haste35 = {
		ammo="Date Shuriken",
		head="Ken. Jinpachi +1",
		body="Ken. Samue +1",
		hands="Ken. Tekko +1",
		legs="Ken. Hakama +1",
		feet="Ken. Sune-Ate +1",
		neck={ name="Ninja Nodowa +2", augments={'Path: A',}},
		waist="Reiki Yotai",
		left_ear="Telos Earring",
		right_ear="Suppanomimi",
		left_ring="Gere Ring",
		right_ring="Fickblix's Ring",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
	}


---- Capped Haste (need 1 DW - negligible) ----
	sets.engaged.hybrid.hastecap = {
		ammo="Date Shuriken",
		head="Malignance Chapeau",
		body="Mpaca's Doublet",
		hands="Malignance Gloves",
		legs="Mpaca's Hose",
		feet="Malignance Boots",
		neck={ name="Ninja Nodowa +2", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Telos Earring",
		right_ear="Crep. Earring",
		left_ring="Gere Ring",
		right_ring="Fickblix's Ring",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
		}
	-- Cap haste 0 shadows
	sets.engaged.hybrid.hastecapdef = set_combine(sets.engaged.hybrid.hastecap,{
		head="Malignance Chapeau",
		body="Mpaca's Doublet",
		hands="Malignance Gloves",
		legs="Mpaca's Hose",
		feet="Malignance Boots",
		})
	--yonin swap
	sets.engaged.hybrid.hastecapyonin = set_combine(sets.engaged.hybrid.hastecapdef,{
		neck={ name="Bathy Choker +1", augments={'Path: A',}},
		legs="Hattori Hakama +2",
		back={ name="Andartia's Mantle", augments={'AGI+20','Eva.+20 /Mag. Eva.+20','Evasion+10','"Store TP"+10','System: 1 ID: 640 Val: 4',}},
		})
	---- Malignance ----
	sets.engaged.malignance.hastecap = set_combine(sets.engaged.hybrid.hastecap,{
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		})
	sets.engaged.malignance.hastecapdef = set_combine(sets.engaged.malignance.hastecao,{
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		})
	---- DPS ----
	sets.engaged.DPS.hastecap = {
		ammo="Date Shuriken",
		head="Ken. Jinpachi +1",
		body="Ken. Samue +1",
		hands="Ken. Tekko +1",
		legs="Ken. Hakama +1",
		feet="Ken. Sune-Ate +1",
		neck={ name="Ninja Nodowa +2", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Telos Earring",
		right_ear="Brutal Earring",
		left_ring="Gere Ring",
		right_ring="Fickblix's Ring",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
	}

--------------- PRECAST SETS ------------------
	--Fastcast Set
    sets.precast.fastcast = {
	    ammo="Sapience Orb",
		head={ name="Herculean Helm", augments={'"Fast Cast"+5','"Mag.Atk.Bns."+14',}},
		body={ name="Adhemar Jacket +1", augments={'HP+105','"Fast Cast"+10','Magic dmg. taken -4',}},
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+8','"Fast Cast"+6','INT+4',}},
		feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+8','"Fast Cast"+6','INT+9',}},
		neck="Moonlight Necklace",
		waist="Audumbla Sash",
		left_ear="Tuisto Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Rahab Ring",
		right_ring="Kishar Ring",
		back={ name="Andartia's Mantle", augments={'"Fast Cast"+10',}},
	}
	--Utsusemi Precast
	sets.precast.utsusemi = set_combine(sets.precast.fastcast,{
	})
	
	sets.precast.enmity = {
	    ammo="Aqreqaq Bomblet",
		body="Emet Harness +1",
		hands="Kurys Gloves",
		feet="Ahosi Leggings",
		neck="Moonlight Necklace",
		waist="Kasiri Belt",
		left_ear="Friomisi Earring",
		right_ear="Trux Earring",
		left_ring="Begrudging Ring",
		right_ring="Eihwaz Ring",
	}
--------------- MIDCAST SETS ------------------
	--Utsusemi Midcast
    sets.midcast.utsusemi = set_combine(sets.precast.fastcast,{
		feet="Hattori Kyahan +3",
	})
	
	--Enfeeble Midcast
    sets.midcast.enfeeble = {
	    ammo="Pemphredo Tathlum",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Hermetic Earring",
		right_ear="Digni. Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back={ name="Andartia's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10','Damage taken-5%',}},
		}

	--Elemental Midcast
    sets.midcast.elemental = {
	    ammo="Pemphredo Tathlum",
		head={ name="Mochi. Hatsuburi +3", augments={'Enhances "Yonin" and "Innin" effect',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Mochi. Kyahan +3", augments={'Enh. Ninj. Mag. Acc/Cast Time Red.',}},
		neck="Sibyl Scarf",
		waist="Skrymir Cord",
		left_ear="Crematio Earring",
		right_ear="Friomisi Earring",
		left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		right_ring="Shiva Ring +1",
		back={ name="Andartia's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10','Damage taken-5%',}},
		}
	-- Midcast elemental - Futae up
	sets.midcast.elementalfutae = set_combine(sets.midcast.elemental, {
		hands="Hattori Tekko +2",
	})
	
	
	-- Midcast for trusts - want to have 119 gear in head,body,hands,legs,feet.
	sets.midcast.trust = {
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
	}
--------------- Weaponskill SETS ------------------
	--undefined Weaponskills
	sets.ws.normal = {
		ammo="Coiste Bodhar",
		head="Mpaca's Cap",
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet="Hattori Kyahan +3",
		neck="Fotia Gorget",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Mache Earring +1",
		left_ring="Gere Ring",
		right_ring="Sroda Ring",
		back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Damage taken-5%',}},
		}
	
	--shun Weaponskill
	sets.ws.shun = {
	    ammo="Coiste Bodhar",
		head="Mpaca's Cap",
		body="Malignance Tabard",
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs="Mpaca's Hose",
		feet="Hattori Kyahan +3",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Mache Earring +1",
		left_ring="Gere Ring",
		right_ring="Fickblix's Ring",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
		}

	--metsu Weaponskill
	sets.ws.metsu = {
	    ammo="Coiste Bodhar",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet="Hattori Kyahan +3",
		neck={ name="Ninja Nodowa +2", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Telos Earring",
		right_ear="Mache Earring +1",
		left_ring="Gere Ring",
		right_ring="Ilabrat Ring",
		back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Damage taken-5%',}},
		}
	
	--ten Weaponskill
	sets.ws.ten = {
	    ammo="Coiste Bodhar",
		head="Mpaca's Cap",
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet="Hattori Kyahan +3",
		neck="Rep. Plat. Medal",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Telos Earring",
		left_ring="Gere Ring",
		right_ring="Sroda Ring",
		back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Damage taken-5%',}},
		}
	
	--Ku Weaponskill
	sets.ws.ku = {
		ammo="Coiste Bodhar",
		head="Mpaca's Cap",
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands="Malignance Gloves",
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet="Hattori Kyahan +3",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Brutal Earring",
		right_ear="Mache Earring +1",
		left_ring="Gere Ring",
		right_ring="Fickblix's Ring",
		back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Damage taken-5%',}},
	}
	
	--Hi Weaponskill
	sets.ws.hi = {
		ammo="C. Palug Stone",
		head="Ken. Jinpachi +1",
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet="Hattori Kyahan +3",
		neck={ name="Ninja Nodowa +2", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Telos Earring",
		right_ear="Mache Earring +1",
		left_ring="Gere Ring",
		right_ring="Ilabrat Ring",
		back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Damage taken-5%',}},
	}
	
	--Kamu Weaponskill
	sets.ws.kamu = {
		ammo="Coiste Bodhar",
		head="Mpaca's Cap",
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck={ name="Ninja Nodowa +2", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Gere Ring",
		right_ring="Sroda Ring",
		back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Damage taken-5%',}},
	}
	
	--Ei Weaponskill
	sets.ws.ei = {
		ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
		head={ name="Mochi. Hatsuburi +3", augments={'Enhances "Yonin" and "Innin" effect',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Sibyl Scarf",
		waist="Skrymir Cord",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Friomisi Earring",
		left_ring="Gere Ring",
		right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Damage taken-5%',}},
	}
	
	--chi/teki/to Weaponskill
	sets.ws.elemental = {
	    ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
		head={ name="Mochi. Hatsuburi +3", augments={'Enhances "Yonin" and "Innin" effect',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Fotia Gorget",
		waist="Skrymir Cord",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Friomisi Earring",
		left_ring="Gere Ring",
		right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Damage taken-5%',}},
	}
	
	--savageblade Weaponskill
	sets.ws.savageblade = {
		ammo="Crepuscular Pebble",
		head="Mpaca's Cap",
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet="Hattori Kyahan +3",
		neck="Rep. Plat. Medal",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Gere Ring",
		right_ring="Sroda Ring",
		back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Damage taken-5%',}},
	}
end

--------------- LOGIC - DO NOT TOUCH BELOW ------------------

--Automatically switch sets for time
    -- world.time is given in minutes into each day
    -- 7:00 AM would be 420 minutes
    -- 17:00 PM would be 1020 minutes

windower.register_event('time change', function(new, old)
	if new > (7*60) and old <= (7*60) then
		idle()
	end
	if new > (17*60) and old <= (17*60) then
		idle()
	end
end)

-- Recognizing when losing utsusemi or haste related buffs to trigger automatic equipment change
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

-- Recognizing when gaining utsusemi or haste related buffs to trigger automatic equipment change
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


function status_change(new,old)
	if new == "Engaged" then
		idle()
	else
		idle()
	end
end


function idle()
	if Mode == "Hybrid" or Mode == "Malignance" or Mode == "DPS" then
		if player.status == "Engaged" then 
			if ( ( (buffactive[33] or buffactive[580] or buffactive.embrava) and (buffactive.march or buffactive[604]) ) or ( buffactive[33] and (buffactive[580] or buffactive.embrava) ) or ( buffactive.march == 2 and buffactive[604] ) ) then
				if Mode == "DPS" then
					equip(sets.engaged.DPS.hastecap)
				elseif buffactive['Copy Image'] or buffactive['Copy Image (2)'] or buffactive['Copy Image (3)'] or buffactive['Copy Image (4+)'] then
					if Mode == "Hybrid" then
						equip(sets.engaged.hybrid.hastecap)
					elseif Mode == "Malignance" then
						equip(sets.engaged.malignance.hastecap)
					end
				else
					if Mode == "Malignance" then
						equip(sets.engaged.malignance.hastecapdef)
					elseif Mode == "Hybrid" then
						if buffactive['Yonin'] then
							equip(sets.engaged.hybrid.hastecapyonin)
						else
							equip(sets.engaged.hybrid.hastecapdef)
						end
					end
				end
			elseif ( (buffactive[33] or buffactive.march == 2 or buffactive[580]) and buffactive['haste samba'] ) then
				if Mode == "DPS" then
						equip(sets.engaged.DPS.haste35)
				elseif buffactive['Copy Image'] or buffactive['Copy Image (2)'] or buffactive['Copy Image (3)'] or buffactive['Copy Image (4+)'] then
					if Mode == "Hybrid" then
						equip(sets.engaged.hybrid.haste35)
					elseif Mode == "Malignance" then
						equip(sets.engaged.malignance.haste35)
					end
				else
					if Mode == "Malignance" then
						equip(sets.engaged.malignance.haste35def)
					elseif Mode == "Hybrid" then
						if buffactive['Yonin'] then
							equip(sets.engaged.hybrid.haste35yonin)
						else
							equip(sets.engaged.hybrid.haste35def)
						end
					end
				end
			elseif ( ( buffactive[580] or buffactive[33] or buffactive.march == 2 ) or ( buffactive.march == 1 and buffactive[604] ) ) then
				if Mode == "DPS" then
					equip(sets.engaged.DPS.haste30)
				elseif buffactive['Copy Image'] or buffactive['Copy Image (2)'] or buffactive['Copy Image (3)'] or buffactive['Copy Image (4+)'] then
					if Mode == "Hybrid" then
						equip(sets.engaged.hybrid.haste30)
					elseif Mode == "Malignance" then
						equip(sets.engaged.malignance.haste30)
					end
				else
					if Mode == "Malignance" then
						equip(sets.engaged.malignance.haste30)
					elseif Mode == "Hybrid" then
						if buffactive['Yonin'] then
							equip(sets.engaged.hybrid.haste30yonin)
						else
							equip(sets.engaged.hybrid.haste30def)
						end
					end
				end
			elseif ( buffactive.march == 1 or buffactive[604] ) then
				if Mode == "DPS" then
					equip(sets.engaged.DPS.haste15)
				elseif buffactive['Copy Image'] or buffactive['Copy Image (2)'] or buffactive['Copy Image (3)'] or buffactive['Copy Image (4+)'] then
					if Mode == "Hybrid" then
						equip(sets.engaged.hybrid.haste15)
					elseif Mode == "Malignance" then
						equip(sets.engaged.malignance.haste15)
					end
				else
					if Mode == "Malignance" then
						equip(sets.engaged.malignance.haste15def)
					elseif Mode == "Hybrid" then
						if buffactive['Yonin'] then
							equip(sets.engaged.hybrid.haste15yonin)
						else
							equip(sets.engaged.hybrid.haste15def)
						end
					end
				end
			else
				if Mode == "DPS" then
					equip(sets.engaged.DPS.haste0)
				elseif buffactive['Copy Image'] or buffactive['Copy Image (2)'] or buffactive['Copy Image (3)'] or buffactive['Copy Image (4+)'] then
					if Mode == "Hybrid" then
						equip(sets.engaged.hybrid.haste0)
					elseif Mode == "Malignance" then
						equip(sets.engaged.malignance.haste0)
					end
				else
					if Mode == "Malignance" then
						equip(sets.engaged.malignance.haste0def)
					elseif Mode == "Hybrid" then
						if buffactive['Yonin'] then
							equip(sets.engaged.hybrid.haste0yonin)
						else
							equip(sets.engaged.hybrid.haste0def)
						end
					end
				end
			end
		else
			if world.time >= (17*60) or world.time < (7*60) then
				if Mode == "Hybrid" or Mode == "DPS" then
					equip(sets.idle.night)
				elseif Mode == "Malignance" then
					equip(sets.idle.malignancenight)
				end
			else
				if Mode == "Hybrid" or Mode == "DPS" then
					equip(sets.idle.normal)
				elseif Mode == "Malignance" then
					equip(sets.idle.malignance)
				end
			end
		end
	elseif Mode == "HybridHaste1" or Mode == "MalignanceHaste1" or Mode == "DPSHaste1" then
		if player.status == "Engaged" then 
			if ( ( (buffactive[33] or buffactive[580] or buffactive.embrava) and (buffactive.march or buffactive[604]) ) or ( buffactive[33] and (buffactive[580] or buffactive.embrava) ) or ( buffactive.march == 2 and buffactive[604] ) ) then
				if Mode == "DPSHaste1" then
					equip(sets.engaged.DPS.hastecap)
				elseif buffactive['Copy Image'] or buffactive['Copy Image (2)'] or buffactive['Copy Image (3)'] or buffactive['Copy Image (4+)'] then
					if Mode == "HybridHaste1" then
						equip(sets.engaged.hybrid.hastecap)
					elseif Mode == "MalignanceHaste1" then
						equip(sets.engaged.malignance.hastecap)
					end
				else
					if Mode == "MalignanceHaste1" then
						equip(sets.engaged.malignance.hastecapdef)
					elseif Mode == "HybridHaste1" then
						if buffactive['Yonin'] then
							equip(sets.engaged.hybrid.hastecapyonin)
						else
							equip(sets.engaged.hybrid.hastecapdef)
						end
					end
				end
			elseif ( (buffactive[33] or buffactive.march == 2 or buffactive[580]) and buffactive['haste samba'] ) then
				if Mode == "DPSHaste1" then
					equip(sets.engaged.DPS.haste35)
				elseif buffactive['Copy Image'] or buffactive['Copy Image (2)'] or buffactive['Copy Image (3)'] or buffactive['Copy Image (4+)'] then
					if Mode == "HybridHaste1" then
						equip(sets.engaged.hybrid.haste35)
					elseif Mode == "MalignanceHaste1" then
						equip(sets.engaged.malignance.haste35)
					end
				else
					if Mode == "MalignanceHaste1" then
						equip(sets.engaged.malignance.haste35def)
					elseif Mode == "HybridHaste1" then
						if buffactive['Yonin'] then
							equip(sets.engaged.hybrid.haste35yonin)
						else
							equip(sets.engaged.hybrid.haste35def)
						end
					end
				end
			elseif ( ( buffactive[580] or buffactive[33] or buffactive.march == 2 ) or ( buffactive.march == 1 and buffactive[604] ) ) then
				if Mode == "DPSHaste1" then
					equip(sets.engaged.DPS.haste30)
				elseif buffactive['Copy Image'] or buffactive['Copy Image (2)'] or buffactive['Copy Image (3)'] or buffactive['Copy Image (4+)'] then
					if Mode == "HybridHaste1" then
						equip(sets.engaged.hybrid.haste30)
					elseif Mode == "MalignanceHaste1" then
						equip(sets.engaged.malignance.haste30)
					end
				else
					if Mode == "MalignanceHaste1" then
						equip(sets.engaged.malignance.haste30)
					elseif Mode == "HybridHaste1" then
						if buffactive['Yonin'] then
							equip(sets.engaged.hybrid.haste30yonin)
						else
							equip(sets.engaged.hybrid.haste30def)
						end
					end
				end
			elseif ( buffactive.march == 1 or buffactive[604] ) then
				if Mode == "DPSHaste1" then
					equip(sets.engaged.DPS.haste15)
				elseif buffactive['Copy Image'] or buffactive['Copy Image (2)'] or buffactive['Copy Image (3)'] or buffactive['Copy Image (4+)'] then
					if Mode == "HybridHaste1" then
						equip(sets.engaged.hybrid.haste15)
					elseif Mode == "MalignanceHaste1" then
						equip(sets.engaged.malignance.haste15)
					end
				else
					if Mode == "MalignanceHaste1" then
						equip(sets.engaged.malignance.haste15def)
					elseif Mode == "HybridHaste1" then
						if buffactive['Yonin'] then
							equip(sets.engaged.hybrid.haste15yonin)
						else
							equip(sets.engaged.hybrid.haste15def)
						end
					end
				end
			else
				if Mode == "DPSHaste1" then
						equip(sets.engaged.DPS.haste0)
				elseif buffactive['Copy Image'] or buffactive['Copy Image (2)'] or buffactive['Copy Image (3)'] or buffactive['Copy Image (4+)'] then
					if Mode == "HybridHaste1" then
						equip(sets.engaged.hybrid.haste0)
					elseif Mode == "MalignanceHaste1" then
						equip(sets.engaged.malignance.haste0)
					end
				else
					if Mode == "MalignanceHaste1" then
						equip(sets.engaged.malignance.haste0def)
					elseif Mode == "HybridHaste1" then
						if buffactive['Yonin'] then
							equip(sets.engaged.hybrid.haste0yonin)
						else
							equip(sets.engaged.hybrid.haste0def)
						end
					end
				end
			end
		else
			if world.time >= (17*60) or world.time < (7*60) then
				if Mode == "Hybrid" or Mode == "DPSHaste1" then
					equip(sets.idle.night)
				elseif Mode == "Malignance" then
					equip(sets.idle.malignancenight)
				end
			else
				if Mode == "Hybrid" or Mode == "DPSHaste1" then
					equip(sets.idle.normal)
				elseif Mode == "Malignance" then
					equip(sets.idle.malignance)
				end
			end
		end
	elseif Mode == "AoETank" or Mode == "EvasionTank" then
		if player.status == "Engaged" then
			if buffactive['Copy Image'] or buffactive['Copy Image (2)'] or buffactive['Copy Image (3)'] or buffactive['Copy Image (4+)'] then
				if Mode == "AoETank" then
					equip(sets.engaged.tank.normal)
				elseif Mode == "EvasionTank" then
					equip(sets.engaged.evasion.normal)
				end
			else
				if buffactive['Yonin'] then	
					if Mode == "AoETank" then
						equip(sets.engaged.tank.yonin)
					elseif Mode == "EvasionTank" then
						equip(sets.engaged.evasion.yonin)
					end
				else
					if Mode == "AoETank" then
						equip(sets.engaged.tank.counter)
					elseif Mode == "EvasionTank" then
						equip(sets.engaged.evasion.counter)
					end
				end	
			end
		else
			if Mode == "AoETank" then
				equip(sets.idle.AOEtank)
			elseif Mode == "EvasionTank" then
				equip(sets.idle.evasion)
			end
		end
	end
end


function precast(spell)
	if spell.name:match('Utsusemi') then
		equip(sets.precast.utsusemi)
	elseif spell.english == "Provoke" or spell.english =="Dodge" or spell.english =="Focus" or spell.english == "Chi Blast" or spell.english =="Counterstance" then
		equip(sets.precast.enmity)
	elseif spell.type == "BlueMagic" or spell.type == "BlackMagic" or spell.type == "WhiteMagic" or spell.type == "Ninjutsu" or spell.type == "Trust" then 
		equip(sets.precast.fastcast)
	elseif spell.type == "WeaponSkill" then 
		if spell.english == "Blade: Shun" then
			equip(sets.ws.shun)
		elseif spell.english == "Blade: Metsu" then
			equip(sets.ws.metsu)
		elseif spell.english == "Blade: Ten" then
			equip(sets.ws.ten)
		elseif spell.english == "Blade: Ku" then
			equip(sets.ws.ku)
		elseif spell.english == "Blade: Hi" then
			equip(sets.ws.hi)
		elseif spell.english == "Blade: Kamu" then
			equip(sets.ws.kamu)
		elseif spell.english == "Blade: Ei" then
			equip(sets.ws.ei)
		elseif spell.english == "Blade: Chi" or spell.english == "Blade: Teki" or spell.english == "Blade: To" then
			equip(sets.ws.elemental)
		elseif spell.english == "Savage Blade" then
			equip(sets.ws.savageblade)
		else
			equip(sets.ws.normal)
		end
	else
		idle()
	end
end

function midcast(spell)
	if spell.name:match('Utsusemi') then
		if buffactive['Copy Image'] then
			send_command('cancel Copy Image')
			equip(sets.midcast.utsusemi)
		elseif buffactive['Copy Image (2)'] then
			send_command('cancel 444')
			equip(sets.midcast.utsusemi)
		elseif buffactive['Copy Image (3)'] then
			send_command('cancel 445')
			equip(sets.midcast.utsusemi)
		elseif buffactive['Copy Image (4+)'] then
			send_command('cancel 446')
			equip(sets.midcast.utsusemi)
		else
			equip(sets.midcast.utsusemi)
		end
	elseif spell.name:match('Kurayami') or spell.name:match('Hojo') or spell.name:match('Dokumori') or spell.name:match('Jubaku') or spell.name:match('Yurin') or spell.name:match('Aisha') then
		equip(sets.midcast.enfeeble)
	elseif spell.name:match('Katon') or spell.name:match('Suiton') or spell.name:match('Raiton') or spell.name:match('Doton') or spell.name:match('Huton') or spell.name:match('Hyoton') then
		if buffactive['Futae'] then
			equip(sets.midcast.elementalfutae)
		else
			equip(sets.midcast.elemental)
		end
	elseif spell.type == "WeaponSkill" then 
		if spell.english == "Blade: Shun" then
			equip(sets.ws.shun)
		elseif spell.english == "Blade: Metsu" then
			equip(sets.ws.metsu)
		elseif spell.english == "Blade: Ten" then
			equip(sets.ws.ten)
		elseif spell.english == "Blade: Ku" then
			equip(sets.ws.ku)
		elseif spell.english == "Blade: Hi" then
			equip(sets.ws.hi)
		elseif spell.english == "Blade: Kamu" then
			equip(sets.ws.kamu)
		elseif spell.english == "Blade: Ei" then
			equip(sets.ws.ei)
		elseif spell.english == "Blade: Chi" or spell.english == "Blade: Teki" or spell.english == "Blade: To" then
			equip(sets.ws.elemental)
		elseif spell.english == "Savage Blade" then
			equip(sets.ws.savageblade)
		else
			equip(sets.ws.normal)
		end
	elseif spell.english == "Provoke" or spell.english == "Foil" or spell.english == "Poisonga" or spell.english == "Stun" or spell.english == "Flash" or spell.english == "Jettatura" or spell.english == "Blank Gaze" then
		equip(sets.precast.enmity)
	elseif spell.type == "Trust" then
		equip(sets.midcast.trust)
	else
		idle()
	end
end

function aftercast(spell)
	idle()
end


function self_command(command)
	if command == "ToggleHybrid" then
		if Mode == "Hybrid" then
			Mode = "HybridHaste1"
			send_command('console_echo "HybridHaste1"')
			idle()
		elseif Mode == "HybridHaste1" or Mode == "Malignance" or Mode == "MalignanceHaste1" or Mode == "AoETank" or Mode == "EvasionTank" or Mode == "DPS" or Mode == "DPSHaste1" then
			Mode = "Hybrid"
			send_command('console_echo "Hybrid"')
			idle()
		end
	elseif command == "ToggleTank" then
		if Mode == "Hybrid" or Mode == "HybridHaste1" or Mode == "Malignance" or Mode == "MalignanceHaste1" or Mode == "EvasionTank" or Mode == "DPS" or Mode == "DPSHaste1" then
			Mode = "AoETank"
			send_command('console_echo "AoETank"')
			idle()
		end
	elseif command == "ToggleEvasion" then
		if Mode == "Hybrid" or Mode == "HybridHaste1" or Mode == "Malignance" or Mode == "MalignanceHaste1" or Mode == "AoETank" or Mode == "DPS" or Mode == "DPSHaste1" then
			Mode = "EvasionTank"
			send_command('console_echo "EvasionTank"')
			idle()
		end
	elseif command == "ToggleMalignance" then
		if Mode == "Malignance" then
			Mode = "MalignanceHaste1"
			send_command('console_echo "MalignanceHaste1"')
			idle()
		elseif Mode == "Hybrid" or Mode == "HybridHaste1" or Mode == "MalignanceHaste1" or Mode == "AoETank" or Mode == "EvasionTank" or Mode == "DPS" or Mode == "DPSHaste1" then
			Mode = "Malignance"
			send_command('console_echo "Malignance"')
			idle()
		end
	elseif command == "ToggleDPS" then
		if Mode == "DPS" then
			Mode = "DPSHaste1"
			send_command('console_echo "DPSHaste1"')
			idle()
		elseif Mode == "Hybrid" or Mode == "HybridHaste1" or Mode == "Malignance" or Mode == "MalignanceHaste1" or Mode == "AoETank" or Mode == "EvasionTank" or Mode == "DPSHaste1" then
			Mode = "DPS"
			send_command('console_echo "DPS"')
			idle()
		end
	end
end