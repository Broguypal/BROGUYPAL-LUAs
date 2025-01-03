--  ____                                          _ _     
-- |  _ \                                        | ( )    
-- | |_) |_ __ ___   __ _ _   _ _   _ _ __   __ _| |/ ___ 
-- |  _ <| '__/ _ \ / _` | | | | | | | '_ \ / _` | | / __|
-- | |_) | | | (_) | (_| | |_| | |_| | |_) | (_| | | \__ \
-- |____/|_|  \___/ \__, |\__,_|\__, | .__/ \__,_|_| |___/
--                   __/ |       __/ | |                  
--                  |___/       |___/|_|    
-- 						RED MAGE LUA



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
	send_command('unbind f12')
    enable("main","sub","range","ammo","head","neck","ear1","ear2","body","hands","ring1","ring2","back","waist","legs","feet")
	send_command('console_displayactivity 1')
end
---------------- KEYBINDS -----------------------
send_command('bind numpad9 gs c ToggleMelee')
send_command('bind numpad8 gs c ToggleTank')
send_command('bind numpad7 gs c ToggleBurst')
send_command('bind numpad6 gs c ToggleEnfeeble')
send_command('bind numpad4 gs c ToggleMain')
send_command('bind numpad5 gs c ToggleSub')

send_command('bind f9 input /item "Remedy" <me>')
send_command('bind f10 input /item "Panacea" <me>')
send_command('bind f11 input /item "Holy Water" <me>')

----------------- MODES / UI TEXT BOX -----------------------------
Mode = "Melee"
Enfeeble = "Normal"
Magic = "Burst"

Modes = {'Melee','Enspell','ZeroTPEnspell','Tank','Caster'}
Enfeebles = {'Normal','Accuracy'}
Magics = {'Burst','Freecast'}

gearswap_box = function()
  str = '           \\cs(130,130,130)RED MAGE\\cr\n'
  str = str..' Offense Mode:\\cs(255,150,100)   '..Mode..'\\cr\n'
  str = str..' Casting Mode:\\cs(255,150,100)   '..Magic..'\\cr\n'
  str = str..' Enfeeble Mode:\\cs(255,150,100)   '..Enfeeble..'\\cr\n'
    return str
end

gearswap_box_config = {pos={x=1320,y=550},padding=8,text={font='sans-serif',size=10,stroke={width=2,alpha=255},Fonts={'sans-serif'},},bg={alpha=0},flags={}}
gearswap_jobbox = texts.new(gearswap_box_config)

function user_setup()
	gearswap_jobbox:text(gearswap_box())		
	gearswap_jobbox:show()
end

-----------------------GEAR SETS------------------------------

function get_sets()
    sets.idle = {}               	-- Leave this empty.   
	sets.engaged = {}				-- Leave this empty.
		sets.engaged.hybrid = {}
    sets.precast = {}               -- leave this empty 
	sets.ja = {}
    sets.midcast = {}               -- leave this empty    
    sets.aftercast = {}             -- leave this empty
	sets.ws = {}					-- Leave this empty
	sets.items = {}
 
 -------------- IDLE SETS ---------------------
    --Hybrid/DPS IDLE--
	sets.idle.hybrid = {
		ammo="Homiliary",
		head="Malignance Chapeau",
		body="Shamash Robe",
		hands="Malignance Gloves",
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
		feet="Malignance Boots",
		neck="Sibyl Scarf",
		waist="Carrier's Sash",
		left_ear="Infused Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Defending Ring",
		right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dual Wield"+10','Phys. dmg. taken-10%',}},
	}
	
	--Tank Idle
	sets.idle.tank = {
		ammo="Homiliary",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body="Shamash Robe",
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Sibyl Scarf",
		waist="Carrier's Sash",
		left_ear="Infused Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Defending Ring",
		right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dual Wield"+10','Phys. dmg. taken-10%',}},
	}
	
	sets.idle.enpell = set_combine(sets.idle.hybrid,{
		main={ name="Crocea Mors", augments={'Path: C',}},
		sub={ name="Pukulatmuj +1", augments={'Path: A',}},
	})


--------------- ENGAGED SETS ------------------

	sets.engaged.hybrid.normal = {
		ammo="Coiste Bodhar",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Anu Torque",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Sherida Earring",
		right_ear="Crep. Earring",
		left_ring="Fickblix's Ring",
		right_ring="Ilabrat Ring",
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dual Wield"+10','Phys. dmg. taken-10%',}},
	}

-- Normal Hybrid set dual wield
	sets.engaged.hybrid.dualwield = {
		ammo="Coiste Bodhar",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Anu Torque",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Sherida Earring",
		right_ear="Telos Earring",
		left_ring="Fickblix's Ring",
		right_ring="Chirich Ring +1",
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dual Wield"+10','Phys. dmg. taken-10%',}},
	}

-- Normal Hybrid set dual wield + shadows up
	sets.engaged.hybrid.dualwieldenspellshadows = set_combine(sets.engaged.hybrid.dualwield,{
		head="Umuthi Hat",
		hands="Aya. Manopolas +2",
		waist="Orpheus's Sash",
	})

-- Enspell mode
	sets.engaged.hybrid.enspell = {
		main={ name="Crocea Mors", augments={'Path: C',}},
		sub={ name="Pukulatmuj +1", augments={'Path: A',}},
		ammo="Coiste Bodhar",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Anu Torque",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Sherida Earring",
		right_ear="Telos Earring",
		left_ring="Fickblix's Ring",
		right_ring="Chirich Ring +1",
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dual Wield"+10','Phys. dmg. taken-10%',}},
	}

-- Enspell mode + shadows up
	
	sets.engaged.hybrid.enspellshadows = set_combine(sets.engaged.hybrid.dualwieldenspellshadows,{
		main={ name="Crocea Mors", augments={'Path: C',}},
		sub={ name="Pukulatmuj +1", augments={'Path: A',}},
	})

	sets.engaged.hybrid.zeroTPenspell = {}

--------------- PRECAST SETS ------------------
	--Fastcast Set
    sets.precast.fastcast = {
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		body={ name="Merlinic Jubbah", augments={'Mag. Acc.+26','"Fast Cast"+6','MND+6',}},
		legs={ name="Lengo Pants", augments={'INT+8','Mag. Acc.+14','"Mag.Atk.Bns."+13',}},
		feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+6','"Fast Cast"+6','Mag. Acc.+13',}},
		neck={ name="Unmoving Collar +1", augments={'Path: A',}},
		waist="Plat. Mog. Belt",
	}
	
---- JOB ABILITY SETS ----

--------------- MIDCAST SETS ------------------
	
	-- Midcast for trusts - want to have 119 gear in head,body,hands,legs,feet.
	sets.midcast.trust = {
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
	}

---- ENFEEBLE SETS ----
-- Max Accuracy
	sets.midcast.enfeebleMAXacc = {
		main={ name="Crocea Mors", augments={'Path: C',}},
		sub="Ammurapi Shield",
		range="Ullr",
		head={ name="Viti. Chapeau +3", augments={'Enfeebling Magic duration','Magic Accuracy',}},
		body="Lethargy Sayon +2",
		hands="Leth. Ganth. +2",
		legs={ name="Chironic Hose", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','MND+6','Mag. Acc.+13',}},
		feet={ name="Vitiation Boots +3", augments={'Immunobreak Chance',}},
		neck={ name="Dls. Torque +2", augments={'Path: A',}},
		waist="Luminary Sash",
		left_ear="Malignance Earring",
		right_ear="Snotra Earring",
		left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		right_ring="Stikini Ring +1",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','Weapon skill damage +10%','Spell interruption rate down-10%',}},
	}

--Frazzle or distract
	sets.midcast.FrazzleDistract = {
		main={ name="Crocea Mors", augments={'Path: C',}},
		sub="Ammurapi Shield",
		range="Ullr",
		head={ name="Viti. Chapeau +3", augments={'Enfeebling Magic duration','Magic Accuracy',}},
		body="Lethargy Sayon +2",
		hands="Leth. Ganth. +2",
		legs={ name="Chironic Hose", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','MND+6','Mag. Acc.+13',}},
		feet={ name="Vitiation Boots +3", augments={'Immunobreak Chance',}},
		neck={ name="Dls. Torque +2", augments={'Path: A',}},
		waist="Luminary Sash",
		left_ear="Malignance Earring",
		right_ear="Snotra Earring",
		left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		right_ring="Stikini Ring +1",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','Weapon skill damage +10%','Spell interruption rate down-10%',}},
	} 

--gravity/dispel
	sets.midcast.GravityDispel = {
		main={ name="Crocea Mors", augments={'Path: C',}},
		sub="Ammurapi Shield",
		range="Ullr",
		head={ name="Viti. Chapeau +3", augments={'Enfeebling Magic duration','Magic Accuracy',}},
		body="Lethargy Sayon +2",
		hands="Leth. Ganth. +2",
		legs={ name="Chironic Hose", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','MND+6','Mag. Acc.+13',}},
		feet={ name="Vitiation Boots +3", augments={'Immunobreak Chance',}},
		neck={ name="Dls. Torque +2", augments={'Path: A',}},
		waist="Luminary Sash",
		left_ear="Malignance Earring",
		right_ear="Snotra Earring",
		left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		right_ring="Stikini Ring +1",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','Weapon skill damage +10%','Spell interruption rate down-10%',}},
	}

-- Paralyze/Slow/Addle/poison
	sets.midcast.enfeeblePOTENCY = {
		ammo="Hydrocera",
		head="Leth. Chappel +2",
		body="Lethargy Sayon +2",
		hands="Leth. Ganth. +2",
		legs={ name="Chironic Hose", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','MND+6','Mag. Acc.+13',}},
		feet="Leth. Houseaux +2",
		neck={ name="Dls. Torque +2", augments={'Path: A',}},
		waist="Luminary Sash",
		left_ear="Malignance Earring",
		right_ear="Snotra Earring",
		left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		right_ring="Stikini Ring +1",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','Weapon skill damage +10%','Spell interruption rate down-10%',}},
	}

-- Silence/Sleep/Break/Bind
	sets.midcast.enfeebleDURATION = {
		range="Ullr",
		head="Leth. Chappel +2",
		body="Lethargy Sayon +2",
		hands="Leth. Ganth. +2",
		legs="Leth. Fuseau +2",
		feet="Leth. Houseaux +2",
		neck={ name="Dls. Torque +2", augments={'Path: A',}},
		waist="Obstin. Sash",
		left_ear="Malignance Earring",
		right_ear="Snotra Earring",
		left_ring="Kishar Ring",
		right_ring="Stikini Ring +1",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','Weapon skill damage +10%','Spell interruption rate down-10%',}},
	}

--Blind (int based)
	sets.midcast.blind = {
		sub="Ammurapi Shield",
		ammo="Ombre Tathlum +1",
		head="Ea Hat +1",
		body="Ea Houppe. +1",
		hands="Bunzi's Gloves",
		legs="Bunzi's Pants",
		feet={ name="Vitiation Boots +3", augments={'Immunobreak Chance',}},
		neck="Sibyl Scarf",
		waist="Channeler's Stone",
		left_ear="Malignance Earring",
		right_ear="Snotra Earring",
		left_ring="Kishar Ring",
		right_ring="Stikini Ring +1",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','Weapon skill damage +10%','Spell interruption rate down-10%',}},	}

	
--Dia/Inundation
	sets.midcast.enfeebleDIA = {
		main="Daybreak",
		head="Leth. Chappel +2",
		body="Lethargy Sayon +2",
		hands="Leth. Ganth. +2",
		legs="Leth. Fuseau +2",
		feet="Leth. Houseaux +2",
		neck="Sibyl Scarf",
		waist="Obstin. Sash",
		right_ear="Snotra Earring",
		left_ring="Kishar Ring",
		right_ring="Stikini Ring +1",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','Weapon skill damage +10%','Spell interruption rate down-10%',}},
	}

--Bio
	sets.midcast.enfeebleBIO = {
		sub="Ammurapi Shield",
		range="Ullr",
		head="Leth. Chappel +2",
		body="Lethargy Sayon +2",
		hands="Leth. Ganth. +2",
		legs={ name="Chironic Hose", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','MND+6','Mag. Acc.+13',}},
		feet={ name="Vitiation Boots +3", augments={'Immunobreak Chance',}},
		neck="Erra Pendant",
		waist="Luminary Sash",
		left_ear="Malignance Earring",
		right_ear="Snotra Earring",
		left_ring="Evanescence Ring",
		right_ring="Stikini Ring +1",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','Weapon skill damage +10%','Spell interruption rate down-10%',}},
	}

--Aspir / Drain
	sets.midcast.aspir = {
		sub="Ammurapi Shield",
		range="Ullr",
		head="Pixie Hairpin +1",
		body="Lethargy Sayon +2",
		hands="Leth. Ganth. +2",
		legs={ name="Chironic Hose", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','MND+6','Mag. Acc.+13',}},
		feet={ name="Vitiation Boots +3", augments={'Immunobreak Chance',}},
		neck="Erra Pendant",
		waist="Austerity Belt +1",
		left_ear="Malignance Earring",
		right_ear="Snotra Earring",
		left_ring="Evanescence Ring",
		left_ring="Archon Ring",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','Weapon skill damage +10%','Spell interruption rate down-10%',}},
	}

---- ENHANCING SETS ----
--Enspells / Temper
	sets.midcast.enhanceSKILL = {
		main="Secespita",
		sub={ name="Pukulatmuj +1", augments={'Path: A',}},
		ammo="Staunch Tathlum +1",
		head="Befouled Crown",
		body={ name="Viti. Tabard +3", augments={'Enhances "Chainspell" effect',}},
		hands={ name="Viti. Gloves +3", augments={'Enhancing Magic duration',}},
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
		feet="Leth. Houseaux +2",
		neck="Incanter's Torque",
		waist="Olympus Sash",
		left_ear="Mimir Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +10','Enha.mag. skill +10','Mag. Acc.+5','Enh. Mag. eff. dur. +17',}},
	}

--Haste/Flurry/Protect/Shell/Blink/Barspells (SELF)
	sets.midcast.enhanceDURATION = {
		sub="Ammurapi Shield",
		ammo="Staunch Tathlum +1",
		head={ name="Telchine Cap", augments={'Spell interruption rate down -10%','Enh. Mag. eff. dur. +10',}},
		body={ name="Viti. Tabard +3", augments={'Enhances "Chainspell" effect',}},
		hands="Atrophy Gloves +2",
		legs={ name="Telchine Braconi", augments={'Spell interruption rate down -10%','Enh. Mag. eff. dur. +10',}},
		feet="Leth. Houseaux +2",
		neck={ name="Dls. Torque +2", augments={'Path: A',}},
		waist="Olympus Sash",
		left_ear="Mimir Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
		right_ring="Defending Ring",
		back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +10','Enha.mag. skill +10','Mag. Acc.+5','Enh. Mag. eff. dur. +17',}},
	}
	
	sets.midcast.enhanceOTHERS = {
		sub="Ammurapi Shield",
		ammo="Staunch Tathlum +1",
		head="Leth. Chappel +2",
		body="Lethargy Sayon +2",
		hands="Atrophy Gloves +2",
		legs="Leth. Fuseau +2",
		feet="Leth. Houseaux +2",
		neck={ name="Dls. Torque +2", augments={'Path: A',}},
		waist="Olympus Sash",
		left_ear="Mimir Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
		right_ring="Defending Ring",
		back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +10','Enha.mag. skill +10','Mag. Acc.+5','Enh. Mag. eff. dur. +17',}},
	}

--Gain spells
	sets.midcast.enhanceGAIN = set_combine(sets.midcast.enhanceDURATION,{
		hands={ name="Viti. Gloves +3", augments={'Enhancing Magic duration',}},
	})

--Spikes spells
	sets.midcast.enhanceSPIKES = {}

	
	sets.midcast.aquaveil = {}
	
	sets.midcast.refresh = {}
	
	sets.midcast.stoneskin = {}
	
	sets.midcast.phalanxSELF = {
		main="Sakpata's Sword",
		sub="Ammurapi Shield",
		ammo="Staunch Tathlum +1",
		head="Leth. Chappel +2",
		body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
		hands={ name="Taeon Gloves", augments={'Spell interruption rate down -10%','Phalanx +3',}},
		legs={ name="Taeon Tights", augments={'Spell interruption rate down -10%','Phalanx +3',}},
		feet={ name="Taeon Boots", augments={'Spell interruption rate down -10%','Phalanx +3',}},
		neck="Incanter's Torque",
		waist="Olympus Sash",
		left_ear="Mimir Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back={ name="Ghostfyre Cape", augments={'Enfb.mag. skill +10','Enha.mag. skill +10','Mag. Acc.+5','Enh. Mag. eff. dur. +17',}},
	}
	
---- CURE SETS ----
	sets.midcast.cure = {
		main="Daybreak",
		sub="Ammurapi Shield",
		ammo="Staunch Tathlum +1",
		head={ name="Kaykaus Mitra +1", augments={'MP+80','"Cure" spellcasting time -7%','Enmity-6',}},
		body="Bunzi's Robe",
		hands={ name="Kaykaus Cuffs +1", augments={'MP+80','"Cure" spellcasting time -7%','Enmity-6',}},
		legs={ name="Kaykaus Tights +1", augments={'MP+80','"Cure" spellcasting time -7%','Enmity-6',}},
		feet={ name="Kaykaus Boots +1", augments={'MP+80','"Cure" spellcasting time -7%','Enmity-6',}},
		neck={ name="Loricate Torque +1", augments={'Path: A',}},
		waist="Plat. Mog. Belt",
		left_ear="Mendi. Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Defending Ring",
		right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','Weapon skill damage +10%','Spell interruption rate down-10%',}},
	}
	
	sets.midcast.cursna = {}
	

----Elemental sets ----
	sets.midcast.elementalFREECAST = {
		main="Bunzi's Rod",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head="Leth. Chappel +2",
		body="Lethargy Sayon +2",
		hands="Leth. Ganth. +2",
		legs="Leth. Fuseau +2",
		feet="Leth. Houseaux +2",
		neck="Sibyl Scarf",
		waist="Skrymir Cord",
		left_ear="Crematio Earring",
		right_ear="Malignance Earring",
		left_ring="Shiva Ring +1",
		right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','Weapon skill damage +10%','Spell interruption rate down-10%',}},
	}
	
	sets.midcast.elementalFREECASTobi = set_combine(sets.midcast.elementalFREECAST,{
		waist="Hachirin-no-Obi",
	})

	sets.midcast.elementalBURST = {
		main="Bunzi's Rod",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head="Ea Hat +1",
		body="Ea Houppe. +1",
		hands="Bunzi's Gloves",
		legs="Leth. Fuseau +2",
		feet="Leth. Houseaux +2",
		neck="Sibyl Scarf",
		waist="Skrymir Cord",
		left_ear="Crematio Earring",
		right_ear="Malignance Earring",
		left_ring="Shiva Ring +1",
		right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','Weapon skill damage +10%','Spell interruption rate down-10%',}},
	}
	
	sets.midcast.elementalBURSTobi = set_combine(sets.midcast.elementalBURST,{
		waist="Hachirin-no-Obi",
	})


	sets.midcast.fastcast = {
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		body={ name="Merlinic Jubbah", augments={'Mag. Acc.+26','"Fast Cast"+6','MND+6',}},
		legs={ name="Lengo Pants", augments={'INT+8','Mag. Acc.+14','"Mag.Atk.Bns."+13',}},
		feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+6','"Fast Cast"+6','Mag. Acc.+13',}},
		neck={ name="Unmoving Collar +1", augments={'Path: A',}},
		waist="Plat. Mog. Belt",
	}
		--Fastcast here.
	
	sets.midcast.bio = {}
		--Dark magic skill here
	
	sets.midcast.utsusemi = {}
	
--------------- Weaponskill SETS ------------------
	--undefined Weaponskills
	sets.ws.normal = {
		ammo="Oshasha's Treatise",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Sroda Ring",
		right_ring="Epaminondas's Ring",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','Weapon skill damage +10%','Spell interruption rate down-10%',}},
	}
	
	sets.ws.SavageBlade = {
		ammo="Oshasha's Treatise",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Rep. Plat. Medal",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Sherida Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Sroda Ring",
		right_ring="Epaminondas's Ring",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','Weapon skill damage +10%','Spell interruption rate down-10%',}},
	}
	
	sets.ws.ChantDuCygne = {
		ammo="Coiste Bodhar",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body="Ayanmo Corazza +2",
		hands="Malignance Gloves",
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet="Aya. Gambieras +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Mache Earring +1",
		right_ear="Sherida Earring",
		left_ring="Begrudging Ring",
		right_ring="Ilabrat Ring",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','Weapon skill damage +10%','Spell interruption rate down-10%',}},
	}
	
	sets.ws.DeathBlossom = {
		ammo="Crepuscular Pebble",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Rep. Plat. Medal",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Sherida Earring",
		right_ear="Malignance Earring",
		left_ring="Sroda Ring",
		right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','Weapon skill damage +10%','Spell interruption rate down-10%',}},
	}
	
	sets.ws.Requiscat = {
		ammo="Crepuscular Pebble",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Malignance Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Sroda Ring",
		right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','Weapon skill damage +10%','Spell interruption rate down-10%',}},
	}
	
	sets.ws.SanguineBlade = {
		ammo="Pemphredo Tathlum",
		head="Pixie Hairpin +1",
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands="Jhakri Cuffs +2",
		legs="Leth. Fuseau +2",
		feet="Leth. Houseaux +2",
		neck="Sibyl Scarf",
		waist="Orpheus's Sash",
		left_ear="Friomisi Earring",
		right_ear="Malignance Earring",
		left_ring="Archon Ring",
		right_ring="Epaminondas's Ring",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','Weapon skill damage +10%','Spell interruption rate down-10%',}},
	}
	
	sets.ws.SeraphBlade = {
		ammo="Pemphredo Tathlum",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands="Jhakri Cuffs +2",
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Fotia Gorget",
		waist="Orpheus's Sash",
		left_ear="Friomisi Earring",
		right_ear="Malignance Earring",
		left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		right_ring="Epaminondas's Ring",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','Weapon skill damage +10%','Spell interruption rate down-10%',}},
	}
	
	sets.ws.RedLotusBlade = {
		ammo="Pemphredo Tathlum",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands="Jhakri Cuffs +2",
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Sibyl Scarf",
		waist="Orpheus's Sash",
		left_ear="Friomisi Earring",
		right_ear="Malignance Earring",
		left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		right_ring="Epaminondas's Ring",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','Weapon skill damage +10%','Spell interruption rate down-10%',}},
	}
	
	sets.ws.Evisceration = {
		ammo="Coiste Bodhar",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Aya. Gambieras +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		right_ear="Sherida Earring",
		left_ring="Begrudging Ring",
		right_ring="Ilabrat Ring",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','Weapon skill damage +10%','Spell interruption rate down-10%',}},
	}
	
	sets.ws.BlackHalo = {
		ammo="Oshasha's Treatise",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Rep. Plat. Medal",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Malignance Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Sroda Ring",
		right_ring="Epaminondas's Ring",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','Weapon skill damage +10%','Spell interruption rate down-10%',}},
	}

	sets.ws.AeolianEdge = {
		ammo="Pemphredo Tathlum",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands="Jhakri Cuffs +2",
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Sibyl Scarf",
		waist="Orpheus's Sash",
		left_ear="Friomisi Earring",
		right_ear="Malignance Earring",
		left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		right_ring="Epaminondas's Ring",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','MND+10','Weapon skill damage +10%','Spell interruption rate down-10%',}},
	}

---------------------------	ITEM SETS	---------------------------
	sets.items.holywater = {
		neck="Nicander's Necklace",
		left_ring="Purity Ring",
		right_ring="Blenmot's Ring",
	}

end

--------------- LOGIC - DO NOT TOUCH BELOW ------------------

windower.register_event('gain buff', function(buff_id)
	if buff_id == 66 then
		idle()
	end
end)

windower.register_event('lose buff', function(buff_id)
	if buff_id == 66 then
		idle()
	end
end)


function status_change(new,old)
	if new == "Engaged" then
		idle()
		send_command('input //gs disable main; input //gs disable sub; input //gs disable range')
	else
		idle()
		send_command('input //gs enable main; input //gs enable sub; input //gs enable range')
	end
end


function idle()
	if Mode == "Melee" or Mode == "Enspell" then
		if player.status == "Engaged" then 
			if player.sub_job =='NIN' or player.sub_job =='DNC' then
				if buffactive["Enfire"] or buffactive["Enblizzard"] or buffactive["Enaero"] or buffactive["Enstone"] or buffactive["Enthunder"] or buffactive["Enwater"] or
				buffactive["Enfire II"] or buffactive["Enblizzard II"] or buffactive["Enaero II"] or buffactive["Enstone II"] or buffactive["Enthunder II"] or buffactive["Enwater II"] then
					if buffactive['Copy Image'] or buffactive['Copy Image (2)'] or buffactive['Copy Image (3)'] or buffactive['Copy Image (4+)'] then
						if Mode == "Melee" then
							equip(sets.engaged.hybrid.dualwieldenspellshadows)
						elseif Mode == "Enspell" then
							equip(sets.engaged.hybrid.enspellshadows)
						end
					else
						if Mode == "Melee" then
							equip(sets.engaged.hybrid.dualwield)
						elseif Mode == "Enspell" then
							equip(sets.engaged.hybrid.enspell)
						end
					end
				else 
					equip(sets.engaged.hybrid.dualwield)
				end
			else
				equip(sets.engaged.hybrid.normal)
			end
		else
			if Mode == "Melee" then
				equip(sets.idle.hybrid)
			elseif Mode == "Enspell" then
				equip(sets.idle.enpell)
			end
		end
	elseif Mode == "ZeroTPEnspell" then
		if player.status == "Engaged" then
			equip(sets.engaged.hybrid.zeroTPenspell)
		else
			equip(sets.idle.tank)
		end
	elseif Mode == "Tank" or Mode == "Caster" then
		equip(sets.idle.tank)
	end
end


function precast(spell)
	if spell.type == "BlueMagic" or spell.type == "BlackMagic" or spell.type == "WhiteMagic" or spell.type == "Ninjutsu" or spell.type == "Trust" then 
		equip(sets.precast.fastcast)
	elseif spell.type == "WeaponSkill" then 
		if spell.english == "Savage Blade" then
			equip(sets.ws.SavageBlade)
		elseif spell.english == "Chant du Cygne" then
			equip(sets.ws.ChantDuCygne)
		elseif spell.english == "Death Blossom" then
			equip(sets.ws.DeathBlossom)
		elseif spell.english == "Requiscat" then
			equip(sets.ws.Requiscat)
		elseif spell.english == "Sanguine Blade" then
			equip(sets.ws.SanguineBlade)
		elseif spell.english == "Seraph Blade" then
			equip(sets.ws.SeraphBlade)
		elseif spell.english == "Red Lotus Blade" then
			equip(sets.ws.RedLotusBlade)
		elseif spell.english == "Evisceration" then
			equip(sets.ws.Evisceration)
		elseif spell.english == "Black Halo" then
			equip(sets.ws.BlackHalo)
		elseif spell.english == "Aeolian Edge" then
			equip(sets.ws.AeolianEdge)
		else
			equip(sets.ws.normal)
		end
	elseif spell.english == "Holy Water" then
		equip(sets.items.holywater)
	else
		idle()
	end
end


function midcast(spell)
	if spell.skill == "Elemental Magic" then
		if spell.name:match('Fire') or spell.name:match('Blizzard') or spell.name:match('Aero') or spell.name:match('Stone') or spell.name:match('Thunder') or spell.name:match('Water') then
			if Magic == "Burst" then
				if spell.element == world.day_element or spell.element == world.weather_element then
					if spell.name:match('Fire') and world.day_element ~= "Water" and world.weather_element ~= "Water" then
						equip(sets.midcast.elementalBURSTobi)
					elseif spell.name:match('Water') and world.day_element ~= "Lightning" and world.weather_element ~= "Lightning" then
						equip(sets.midcast.elementalBURSTobi)
					elseif spell.name:match('Thunder') and world.day_element ~= "Earth" and world.weather_element ~= "Earth" then
						equip(sets.midcast.elementalBURSTobi)
					elseif spell.name:match('Stone') and world.day_element ~= "Wind" and world.weather_element ~= "Wind" then
						equip(sets.midcast.elementalBURSTobi)
					elseif spell.name:match('Aero') and world.day_element ~= "Ice" and world.weather_element ~= "Ice" then
						equip(sets.midcast.elementalBURSTobi)
					elseif spell.name:match('Blizzard') and world.day_element ~= "Fire" and world.weather_element ~= "Fire" then
						equip(sets.midcast.elementalBURSTobi)
					else
						equip(sets.midcast.elementalBURST)
					end
				else
					equip(sets.midcast.elementalBURST)
				end
			elseif Magic == "Freecast" then
				if spell.element == world.day_element or spell.element == world.weather_element then
					if spell.name:match('Fire') and world.day_element ~= "Water" and world.weather_element ~= "Water" then
						equip(sets.midcast.elementalFREECASTobi)
					elseif spell.name:match('Water') and world.day_element ~= "Lightning" and world.weather_element ~= "Lightning" then
						equip(sets.midcast.elementalFREECASTobi)
					elseif spell.name:match('Thunder') and world.day_element ~= "Earth" and world.weather_element ~= "Earth" then
						equip(sets.midcast.elementalFREECASTobi)
					elseif spell.name:match('Stone') and world.day_element ~= "Wind" and world.weather_element ~= "Wind" then
						equip(sets.midcast.elementalFREECASTobi)
					elseif spell.name:match('Aero') and world.day_element ~= "Ice" and world.weather_element ~= "Ice" then
						equip(sets.midcast.elementalFREECASTobi)
					elseif spell.name:match('Blizzard') and world.day_element ~= "Fire" and world.weather_element ~= "Fire" then
						equip(sets.midcast.elementalFREECASTobi)
					else
						equip(sets.midcast.elementalFREECAST)
					end
				else
					equip(sets.midcast.elementalFREECAST)
				end
			else
				idle()
			end
		end
	elseif spell.skill == "Enfeebling Magic" then
		if Enfeeble == "Accuracy" then
			if spell.name:match('Dia') or spell.name:match('Diaga') or spell.name:match('Inundation') then
				equip(sets.midcast.enfeebleDIA)
			else
				equip(sets.midcast.enfeebleMAXacc)
			end
		elseif Enfeeble == "Normal" then
			if spell.name:match('Sleep') or spell.name:match('Sleepga') or spell.name:match('Bind') or spell.name:match('Break') or spell.name:match('Silence') then
				equip(sets.midcast.enfeebleDURATION)
			elseif spell.name:match('Paralyze') or spell.name:match('Addle') or spell.name:match('Slow') or spell.name:match('Poison') then
				equip(sets.midcast.enfeeblePOTENCY)
			elseif spell.name:match('Distract') or spell.name:match('Frazzle') then
				equip(sets.midcast.FrazzleDistract)
			elseif spell.name:match('Gravity') or spell.name:match('Dispel') then
				equip(sets.midcast.GravityDispel)
			elseif spell.name:match('Blind') then
				equip(sets.midcast.blind)
			elseif spell.name:match('Dia') or spell.name:match('Diaga') or spell.name:match('Inundation') then
				equip(sets.midcast.enfeebleDIA)
			end
		end
	elseif spell.skill == "Dark Magic" then
		if spell.name:match('Drain') or spell.name:match('Aspir') then
			equip(sets.midcast.aspir)
		elseif spell.name:match('Bio') then
			if Enfeeble == "Accuracy" then
				equip(sets.midcast.enfeebleMAXacc)
			else
				equip (sets.midcast.enfeebleBIO)
			end
		end
	elseif spell.skill == "Enhancing Magic" then
		if spell.name:match('Haste') or spell.name:match('Flurry') or spell.name:match('Blink') or spell.name:match('Protect') or spell.name:match('Shell') or spell.english:startswith('Bar') then 
			if spell.target.type == 'SELF' then
				equip(sets.midcast.enhanceDURATION)
			else
				equip(sets.midcast.enhanceOTHERS)
			end
		elseif spell.name:match('Temper') or spell.name:match('Enfire') or spell.name:match('Enblizzard') or spell.name:match('Enaero') or spell.name:match('Enstone') or spell.name:match('Enthunder') or spell.name:match('Enwater') then
			equip(sets.midcast.enhanceSKILL)
		elseif spell.name:match('Blaze Spikes') or spell.name:match('Ice Spikes') or spell.name:match('Shock Spikes') then
			equip(sets.midcast.enhanceSPIKES)
		elseif spell.english:startswith('Gain') then
			equip(sets.midcast.enhanceGAIN)
		elseif spell.name:match('Aquaveil') then
			equip(sets.midcast.aquaveil)
		elseif spell.name:match('Refresh') then
			equip(sets.midcast.refresh)
		elseif spell.name:match('Stoneskin') then
			equip(sets.midcast.stoneskin)
		elseif spell.name:match('Phalanx') then
			if spell.target.type == 'SELF' then
				equip(sets.midcast.phalanxSELF)
			else
				equip(sets.midcast.enhanceOTHERS)
			end
		elseif spell.name:match('Invisible') or spell.name:match('Sneak') or spell.name:match('Deodorize') then
			equip(sets.midcast.fastcast)
		end
	elseif spell.skill == "Healing Magic" then
		if spell.name:match('Cure') or spell.name:match('Cura') or spell.name:match('Curaga') then
			equip(sets.midcast.cure)
		elseif spell.name:match('Cursna') then
			equip(sets.midcast.cursna)
		elseif spell.name:match('Raise') or spell.name:match('Reraise') then
			equip(sets.midcast.fastcast)
		end
	elseif spell.type == "WeaponSkill" then 
		if spell.english == "Savage Blade" then
			equip(sets.ws.SavageBlade)
		elseif spell.english == "Chant du Cygne" then
			equip(sets.ws.ChantDuCygne)
		elseif spell.english == "Death Blossom" then
			equip(sets.ws.DeathBlossom)
		elseif spell.english == "Requiscat" then
			equip(sets.ws.Requiscat)
		elseif spell.english == "Sanguine Blade" then
			equip(sets.ws.SanguineBlade)
		elseif spell.english == "Seraph Blade" then
			equip(sets.ws.SeraphBlade)
		elseif spell.english == "Red Lotus Blade" then
			equip(sets.ws.RedLotusBlade)
		elseif spell.english == "Evisceration" then
			equip(sets.ws.Evisceration)
		elseif spell.english == "Black Halo" then
			equip(sets.ws.BlackHalo)
		elseif spell.english == "Aeolian Edge" then
			equip(sets.ws.AeolianEdge)
		else
			equip(sets.ws.normal)
		end
	elseif spell.name:match('Utsusemi') then
		equip(sets.midcast.utsusemi)
	elseif spell.english == "Holy Water" then
		equip(sets.items.holywater)
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
	if command == "ToggleMelee" then
		if Mode == "Tank" or Mode == "ZeroTPEnspell" or Mode == "Caster" then
			Mode = "Melee"
			idle()
		elseif Mode == "Melee" then
			Mode = "Enspell"
			idle()
		elseif Mode == "Enspell" then
			Mode = "ZeroTPEnspell"
			idle()
		end
	end 
	if command == "ToggleTank" then
		if Mode == "Melee" or Mode == "ZeroTPEnspell" or Mode == "Enspell" or Mode == "Caster" then
			Mode = "Tank"
			idle()
		elseif Mode == "Tank" then
			Mode = "Caster"
			idle()
		end
	end
	if command == "ToggleEnfeeble" then
		if Enfeeble == "Normal" then
			Enfeeble = "Accuracy"
			if player.status == "Engaged" and (Mode == "Melee" or Mode == "Enspell") then
				send_command('input //gs enable main; input //gs enable sub; input //gs enable range')
			end
		elseif Enfeeble == "Accuracy" then
			Enfeeble = "Normal"
			if player.status == "Engaged" and (Mode == "Melee" or Mode == "Enspell") then
				send_command('input //gs disable main; input //gs disable sub; input //gs disable range')
			end
		end
	end 
	if command == "ToggleBurst" then
		if Magic == "Burst" then
			Magic = "Freecast"
		elseif Magic == "Freecast" then
			Magic = "Burst"
		end
	end
	if command == "ToggleMain" then
		if Mode == "Melee" or Mode == "Tank" then
			if player.equipment.main == "Crocea Mors" then
				send_command ('input /equip Main "Naegling"')
			end
			if player.equipment.main == "Naegling" then
				send_command ('input /equip Main "Tauret"')
			end
			if player.equipment.main == "Tauret" then 
				send_command ('input /equip Main "Crocea Mors"')
			end
			if player.equipment.main ~= "Tauret" and player.equipment.main ~= "Naegling" and player.equipment.main ~= "Crocea Mors" then
				send_command ('input /equip Main "Crocea Mors"')
			end
		end
		if Mode == "Caster" then
			if player.equipment.main == "Crocea Mors" then
				send_command ('input /equip Main "Daybreak"')
			end
			if player.equipment.main == "Daybreak" then
				send_command ('input /equip Main "Bunzi\'s Rod"')
			end
			if player.equipment.main == "Bunzi\'s Rod" then
				send_command ('input /equip Main "Crocea Mors"')
			end
			if player.equipment.main ~= "Daybreak" and player.equipment.main ~= "Bunzi\'s Rod" and player.equipment.main ~= "Crocea Mors" then
				send_command ('input /equip Main "Crocea Mors"')
			end
		end
		if Mode == "Enspell" then
			send_command ('input /equip Main "Crocea Mors"')
		end
	end
	if command == "ToggleSub" then
		if Mode == "Melee" or Mode == "Melee" or Mode == "Tank" then
			if player.sub_job =='NIN' or player.sub_job =='DNC' then
				if player.equipment.sub == "Daybreak" then
					send_command ('input /equip Sub "Thibron"')
				elseif player.equipment.sub == "Thibron" then
					send_command ('input /equip Sub "Bunzi\'s Rod"')
				elseif player.equipment.sub == "Bunzi\'s Rod" then
					send_command ('input /equip Sub "Daybreak"')
				else
					send_command ('input /equip Sub "Daybreak"')
				end
			else
				send_command ('input /equip Sub "Ammurapi shield"')
			end
		end
		if Mode == "Caster" or Mode == "CasterMagicBurst" then
			send_command ('input /equip Sub "Ammurapi shield"')
		end
		if Mode == "Enspell" then
			send_command ('input /equip Sub "Pukulatmuj +1"')
		end
	end
	gearswap_jobbox:text(gearswap_box())		
	gearswap_jobbox:show()
end

user_setup()