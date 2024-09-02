--  ____                                          _ _     
-- |  _ \                                        | ( )    
-- | |_) |_ __ ___   __ _ _   _ _   _ _ __   __ _| |/ ___ 
-- |  _ <| '__/ _ \ / _` | | | | | | | '_ \ / _` | | / __|
-- | |_) | | | (_) | (_| | |_| | |_| | |_) | (_| | | \__ \
-- |____/|_|  \___/ \__, |\__,_|\__, | .__/ \__,_|_| |___/
--                   __/ |       __/ | |                  
--                  |___/       |___/|_|    
--PLD LUA



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

-- Equipset toggles
send_command('bind numpad9 gs c ToggleHybrid')
send_command('bind numpad8 gs c ToggleTank')
send_command('bind numpad7 gs c ToggleMagic')

-- Weapon/shield togles
send_command('bind numpad6 gs c ToggleShield')
send_command('bind numpad5 gs c ToggleWeapon')
send_command('bind numpad4 gs c ToggleOpen')


--[[ NOTE:
^ = Ctrl
! = Alt Key
@ = Windows Key
]]

--QOL commands
send_command ('bind numpad1 input /mount "Noble Chocobo"')
send_command ('bind numpad2 input /dismount')
send_command('bind f9 input /item "Remedy" <me>')
send_command('bind f10 input /item "Panacea" <me>')
send_command('bind f11 input /item "Holy Water" <me>')

-- Mode/Stance settings
Mode = "Hybrid"
Modes = {'Hybrid','DPS','AoETank','BlockTank','SingleTank','MagicEva','MPAbsorb'}

Shield = "Aegis"
Shields = {'Aegis','Ochain','Blurred','Open'}

Sword = "Sakpata"
Swords = {'Sakpata','Malignance','Naegling','Open'}


    sets.idle = {}                  -- Leave this empty
	sets.engaged = {}				-- leave this empty   
    sets.precast = {}               -- leave this empty  
	sets.ja = {}					-- leave this empty
    sets.midcast = {}               -- leave this empty    
    sets.aftercast = {}             -- leave this empty
	sets.ws = {}					-- Leave this empty
	sets.items = {}					-- Leave this empty

 
 ---- IDLE SETS ----
 
 --Normal Idle set - Movement speed
    sets.idle.normal = {
		ammo="Staunch Tathlum +1",
		head="Chev. Armet +2",
		body="Sakpata's Plate",
		hands="Sakpata's Gauntlets",
		legs={ name="Carmine Cuisses +1", augments={'HP+80','STR+12','INT+12',}},
		feet="Sakpata's Leggings",
		neck={ name="Unmoving Collar +1", augments={'Path: A',}},
		waist="Flume Belt +1",
		left_ear="Hearty Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Moonbeam Ring",
		right_ring="Moonlight Ring",
		back={ name="Rudianos's Mantle", augments={'Damage taken-5%',}},
		}

	sets.idle.aoetank = {
		ammo="Staunch Tathlum +1",
		head="Chev. Armet +2",
		body="Sakpata's Plate",
		hands="Sakpata's Gauntlets",
		legs="Chev. Cuisses +2",
		feet="Sakpata's Leggings",
		neck="Warder's Charm +1",
		waist="Plat. Mog. Belt",
		left_ear="Tuisto Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Shadow Ring",
		right_ring="Fortified Ring",
		back={ name="Rudianos's Mantle", augments={'Damage taken-5%',}},
	}
	
	sets.idle.singletank = {
		ammo="Staunch Tathlum +1",
		head="Chev. Armet +2",
		body="Sakpata's Plate",
		hands="Sakpata's Gauntlets",
		legs="Chev. Cuisses +2",
		feet="Sakpata's Leggings",
		neck={ name="Unmoving Collar +1", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Tuisto Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Moonbeam Ring",
		right_ring="Moonlight Ring",
		back={ name="Rudianos's Mantle", augments={'Damage taken-5%',}},
	}
	
	sets.idle.block = {
		ammo="Staunch Tathlum +1",
		head="Chev. Armet +2",
		body="Sakpata's Plate",
		hands={ name="Souv. Handsch. +1", augments={'HP+65','Shield skill +15','Phys. dmg. taken -4',}},
		legs="Chev. Cuisses +2",
		feet="Rev. Leggings +1",
		neck={ name="Unmoving Collar +1", augments={'Path: A',}},
		waist="Plat. Mog. Belt",
		left_ear="Thureous Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Moonbeam Ring",
		right_ring="Moonlight Ring",
		back={ name="Rudianos's Mantle", augments={'Damage taken-5%',}},
	}
	
	sets.idle.magiceva = {
		ammo="Staunch Tathlum +1",
		head="Chev. Armet +2",
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs="Chev. Cuisses +2",
		feet="Rev. Leggings +1",
		neck="Warder's Charm +1",
		waist="Plat. Mog. Belt",
		left_ear="Eabani Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Shadow Ring",
		right_ring="Moonlight Ring",
		back={ name="Rudianos's Mantle", augments={'Damage taken-5%',}},
	}
	
	sets.idle.mpabsorb = {
		ammo="Homiliary",
		head="Chev. Armet +2",
		body="Sakpata's Plate",
		hands="Sakpata's Gauntlets",
		legs="Chev. Cuisses +2",
		feet="Rev. Leggings +1",
		neck="Sibyl Scarf",
		waist="Flume Belt +1",
		left_ear="Tuisto Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Moonbeam Ring",
		right_ring="Moonlight Ring",
		back={ name="Rudianos's Mantle", augments={'Damage taken-5%',}},
	}

---- ENGAGED SETS ----
	sets.engaged.hybrid = {
		ammo="Coiste Bodhar",
		head="Sakpata's Helm",
		body="Sakpata's Plate",
		hands="Sakpata's Gauntlets",
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		neck="Sanctity Necklace",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Mache Earring +1",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Moonbeam Ring",
		right_ring="Moonlight Ring",
		back={ name="Rudianos's Mantle", augments={'Damage taken-5%',}},
	}
	
	sets.engaged.DPS = {
		ammo="Coiste Bodhar",
		head="Sakpata's Helm",
		body="Sakpata's Plate",
		hands="Sakpata's Gauntlets",
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		neck="Clotharius Torque",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Mache Earring +1",
		right_ear="Crep. Earring",
		left_ring="Fickblix's Ring",
		right_ring="Moonlight Ring",
		back={ name="Rudianos's Mantle", augments={'Damage taken-5%',}},
	}
	

---- PRECAST SETS ----
	sets.precast.fastcast = {
		ammo="Sapience Orb",
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		body={ name="Odyss. Chestplate", augments={'"Mag.Atk.Bns."+16','"Fast Cast"+4','STR+11','Mag. Acc.+8',}},
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		legs="Chev. Cuisses +2",
		feet={ name="Odyssean Greaves", augments={'"Mag.Atk.Bns."+21','"Fast Cast"+3','INT+12','Mag. Acc.+11',}},
		neck="Voltsurge Torque",
		waist="Plat. Mog. Belt",
		left_ear="Tuisto Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Kishar Ring",
		right_ring="Rahab Ring",
		back="Moonbeam Cape",
	}
	
	sets.precast.cure = set_combine(sets.precast.fastcast,{
		body={ name="Jumalik Mail", augments={'HP+35','Attack+7',}},
		left_ear="Mendi. Earring",
		right_ear="Tuisto Earring",
	})

---- JOB ABILITY SETS ----
	sets.ja.sentinel = {
	}
	
	sets.ja.shieldbash = {
		left_ear="Knightly Earring",
	}
	
	sets.ja.cover = {
	}
	
	sets.ja.rampart = {
	}
	
	sets.ja.fealty = {
	}
	
	sets.ja.chivalry = {
	}
	
	sets.ja.divineemblem = {
	}
	
	sets.ja.invincible = {
	}
	
	sets.ja.holycircle = {
	}

---- MIDCAST SETS ----
	sets.midcast.cure = {
		ammo="Staunch Tathlum +1",
		head="Chev. Armet +2",
		body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		hands="Sakpata's Gauntlets",
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet="Sakpata's Leggings",
		neck="Sacro Gorget",
		waist="Sroda Belt",
		left_ear="Mendi. Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Sirona's Ring",
		right_ring="Moonlight Ring",
		back="Moonbeam Cape",
	}
	
	sets.midcast.cureSIR = set_combine(sets.midcast.cure,{
		legs={ name="Founder's Hose", augments={'MND+8','Mag. Acc.+7','Breath dmg. taken -3%',}},
		feet={ name="Odyssean Greaves", augments={'"Mag.Atk.Bns."+21','"Fast Cast"+3','INT+12','Mag. Acc.+11',}},
		neck="Moonlight Necklace",
		waist="Audumbla Sash",
		right_ear="Knightly Earring",
		left_ring="Evanescence Ring",
	})
	
	sets.midcast.enmity = {
		ammo="Sapience Orb",
		head="Chev. Armet +2",
		body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		hands="Sakpata's Gauntlets",
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet="Sakpata's Leggings",
		neck="Moonlight Necklace",
		waist="Plat. Mog. Belt",
		left_ear="Friomisi Earring",
		right_ear="Trux Earring",
		left_ring="Petrov Ring",
		right_ring="Begrudging Ring",
		back="Moonbeam Cape",
	}
	
	sets.midcast.enmitySIR = set_combine(sets.midcast.enmity,{
		ammo="Staunch Tathlum +1",
		legs={ name="Founder's Hose", augments={'MND+8','Mag. Acc.+7','Breath dmg. taken -3%',}},
		feet={ name="Odyssean Greaves", augments={'"Mag.Atk.Bns."+21','"Fast Cast"+3','INT+12','Mag. Acc.+11',}},
		neck="Moonlight Necklace",
		waist="Audumbla Sash",
		left_ear="Knightly Earring",
		left_ring="Evanescence Ring",
	})
	
	sets.midcast.phalanx = {
		main="Sakpata's Sword",
		sub={ name="Priwen", augments={'HP+50','Mag. Evasion+50','Damage Taken -3%',}},
	    ammo="Staunch Tathlum +1",
		head={ name="Yorium Barbuta", augments={'Spell interruption rate down -10%','Phalanx +3',}},
		body={ name="Yorium Cuirass", augments={'Spell interruption rate down -10%','Phalanx +3',}},
		hands={ name="Souv. Handsch. +1", augments={'HP+65','Shield skill +15','Phys. dmg. taken -4',}},
		legs="Sakpata's Cuisses",
		feet={ name="Souveran Schuhs +1", augments={'HP+65','Attack+25','Magic dmg. taken -4',}},
		neck={ name="Loricate Torque +1", augments={'Path: A',}},
		waist="Audumbla Sash",
		left_ear="Knightly Earring",
		right_ear="Magnetic Earring",
		left_ring="Defending Ring",
		right_ring="Moonlight Ring",
	}  
	
	sets.midcast.phalanxSIR = set_combine(sets.midcast.phalanx,{
		ammo="Staunch Tathlum +1",
		legs={ name="Founder's Hose", augments={'MND+8','Mag. Acc.+7','Breath dmg. taken -3%',}},
		feet={ name="Odyssean Greaves", augments={'"Mag.Atk.Bns."+21','"Fast Cast"+3','INT+12','Mag. Acc.+11',}},
		neck="Moonlight Necklace",
		waist="Audumbla Sash",
		left_ear="Knightly Earring",
		left_ring="Evanescence Ring",
	})

-- No weapon/shield swaps
	sets.midcast.phalanxOpen = {
		ammo="Staunch Tathlum +1",
		head={ name="Yorium Barbuta", augments={'Spell interruption rate down -10%','Phalanx +3',}},
		body={ name="Yorium Cuirass", augments={'Spell interruption rate down -10%','Phalanx +3',}},
		hands={ name="Souv. Handsch. +1", augments={'HP+65','Shield skill +15','Phys. dmg. taken -4',}},
		legs="Sakpata's Cuisses",
		feet={ name="Souveran Schuhs +1", augments={'HP+65','Attack+25','Magic dmg. taken -4',}},
		neck={ name="Loricate Torque +1", augments={'Path: A',}},
		waist="Audumbla Sash",
		left_ear="Knightly Earring",
		right_ear="Magnetic Earring",
		left_ring="Defending Ring",
		right_ring="Moonlight Ring",
	}

-- No weapon/shield swaps
	sets.midcast.phalanxSIROpen = set_combine(sets.midcast.phalanxOpen,{
		ammo="Staunch Tathlum +1",
		legs={ name="Founder's Hose", augments={'MND+8','Mag. Acc.+7','Breath dmg. taken -3%',}},
		feet={ name="Odyssean Greaves", augments={'"Mag.Atk.Bns."+21','"Fast Cast"+3','INT+12','Mag. Acc.+11',}},
		neck="Moonlight Necklace",
		waist="Audumbla Sash",
		left_ear="Knightly Earring",
		left_ring="Evanescence Ring",
	})
	
	sets.midcast.reprisal = {
	}
	

---- ITEM SETS ----
	sets.items.holywater = {
		neck="Nicander's Necklace",
		left_ring="Purity Ring",
		right_ring="Blenmot's Ring",
	}

---- WEAPONSKILL SETS ----
	sets.ws.normal = {
		ammo="Oshasha's Treatise",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		right_ear="Thrud Earring",
		left_ring="Sroda Ring",
		right_ring="Epaminondas's Ring",
		back={ name="Rudianos's Mantle", augments={'Damage taken-5%',}},
	}
	
	sets.ws.savageblade = {
		ammo="Oshasha's Treatise",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Rep. Plat. Medal",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		right_ear="Thrud Earring",
		left_ring="Sroda Ring",
		right_ring="Epaminondas's Ring",
		back={ name="Rudianos's Mantle", augments={'Damage taken-5%',}},
	}
	
	sets.ws.atonement = {
		ammo="Sapience Orb",
		head="Chev. Armet +2",
		body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		hands="Sakpata's Gauntlets",
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet="Sakpata's Leggings",
		neck="Moonlight Necklace",
		waist="Plat. Mog. Belt",
		left_ear="Friomisi Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Petrov Ring",
		right_ring="Begrudging Ring",
		back="Moonbeam Cape",
	}
	
	sets.ws.requiescat = {
		ammo="Coiste Bodhar",
		head="Flam. Zucchetto +2",
		body="Sakpata's Plate",
		hands="Sakpata's Gauntlets",
		legs="Sakpata's Cuisses",
		feet="Flam. Gambieras +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		right_ear="Mache Earring +1",
		left_ring="Flamma Ring",
		right_ring="Fickblix's Ring",
		back={ name="Rudianos's Mantle", augments={'Damage taken-5%',}},
	}

	sets.ws.chantducygne = {
		ammo="Aurgelmir Orb",
		head="Flam. Zucchetto +2",
		body="Flamma Korazin +2",
		hands="Flam. Manopolas +2",
		legs="Flamma Dirs +2",
		feet="Flam. Gambieras +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		right_ear="Mache Earring +1",
		left_ring="Flamma Ring",
		right_ring="Apate Ring",
		back={ name="Rudianos's Mantle", augments={'Damage taken-5%',}},
	}
	
	sets.ws.torcleaver = {
		ammo="Oshasha's Treatise",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Rep. Plat. Medal",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		right_ear="Thrud Earring",
		left_ring="Sroda Ring",
		right_ring="Epaminondas's Ring",
		back={ name="Rudianos's Mantle", augments={'Damage taken-5%',}},
	}
	

end




function idle()
	if Mode == "Hybrid" then
		if player.status == "Engaged" then
			equip(sets.engaged.hybrid)
		else
			equip(sets.idle.normal)
		end
	elseif Mode == "DPS" then
		if player.status == "Engaged" then
			equip(sets.engaged.DPS)
		else
			equip(sets.idle.normal)
		end
	elseif Mode == "AoETank" then
		
		
		equip(sets.idle.aoetank)
	elseif Mode == "SingleTank" then
		equip(sets.idle.singletank)
	elseif Mode == "BlockTank" then
		equip(sets.idle.block)
	elseif Mode == "MagicEva" then
		equip(sets.idle.magiceva)
	elseif Mode == "MPAbsorb" then
		equip(sets.idle.mpabsorb)
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
	if spell.type == "WhiteMagic" then
		if spell.english:startswith('Cure') then
			equip(sets.precast.cure)
		else
			equip(sets.precast.fastcast)
		end
	elseif spell.type == "BlueMagic" or spell.type == "BlackMagic" or spell.type == "Ninjutsu" then 
		equip(sets.precast.fastcast)
	elseif spell.type == "WeaponSkill" then 
		if spell.english == "Savage Blade" then
			equip(sets.ws.savageblade)
		elseif spell.english == "Atonement" then
			equip(sets.ws.atonement)
		elseif spell.english == "Requiescat" then
			equip(sets.ws.requiescat)
		elseif spell.english == "Chant du Cygne" then
			equip(sets.ws.chantducygne)
		elseif spell.english == "Torcleaver" then
			equip(sets.ws.torcleaver)
		else
			equip(sets.ws.normal)
		end
	elseif spell.type == "JobAbility" then
		if spell.english == "Sentinel" then
			equip(sets.ja.sentinel)
		elseif spell.english == "Shield Bash" then
			equip(sets.ja.shieldbash)
		elseif spell.english == "Cover" then
			equip(sets.ja.cover)
		elseif spell.english == "Rampart" then
			equip(sets.ja.rampart)
		elseif spell.english == "Fealty" then
			equip(sets.ja.fealty)
		elseif spell.english == "Chivalry" then
			equip(sets.ja.chivalry)
		elseif spell.english == "Divine Emblem" then
			equip(sets.ja.divineemblem)
		elseif spell.english == "Invincible" then
			equip(sets.ja.invincible)
		elseif spell.english == "Holy Circle" then
			equip(sets.ja.holycircle)
		else
			idle()
		end
	elseif spell.english == "Holy Water" then
		equip(sets.items.holywater)
	else
		idle()
	end
end

function midcast(spell)
	if spell.type == "WhiteMagic" then
		if spell.english:startswith('Cure') then
			if Mode == "AoETank" then
				equip(sets.midcast.cureSIR)
			elseif Mode ~= "AoETank" and player.hp <= 1200 then
				equip(sets.midcast.cureSIR)
			else
				equip(sets.midcast.cure)
			end
		elseif spell.english == "Flash" then
			equip(sets.midcast.enmity)
		elseif spell.english:startswith('Phalanx') then
			if Mode == "AoETank" and player.status == "Engaged" then
				if buffactive(116) then
					if Sword == "Open" or Shield == "Open" then
						equip(sets.midcast.phalanxOpen)
					else
						equip(sets.midcast.phalanx)
					end
				else
					if Sword == "Open" or Shield == "Open" then
						equip(sets.midcast.phalanxSIROpen)
					else
						equip(sets.midcast.phalanxSIR)
					end
				end
			else
				if Sword == "Open" or Shield == "Open" then
					equip(sets.midcast.phalanxOpen)
				else
					equip(sets.midcast.phalanx)
				end
			end
		elseif spell.english == "Reprisal" then
			equip(sets.midcast.reprisal)
		else
			if Mode == "AoETank" then
				equip(sets.midcast.enmitySIR)
			else
				equip(sets.midcast.enmity)
			end
		end
	elseif spell.type == "BlueMagic" or spell.english == "Foil" or spell.english == "Poisonga" or spell.english == "Stun" then
		if Mode == "AoETank" then
			equip(sets.midcast.enmitySIR)
		else
			equip(sets.midcast.enmity)
		end
	elseif spell.type == "BlackMagic" or spell.type == "Ninjutsu" then
		idle()
	end
end

function aftercast(spell)
	if spell.english:startswith('Phalanx') then
		if Sword == "Sakpata" and Shield == "Aegis" then
			send_command('input /equip Sub "Aegis"; wait 1; input /equip Main "Sakpata\'s Sword"')
			idle()
		elseif Sword == "Sakpata" and Shield == "Ochain" then
			send_command('input /equip Sub "Ochain"; wait 1; input /equip Main "Sakpata\'s Sword"')
			idle()
		elseif Sword == "Sakpata" and Shield == "Blurred" then
			send_command('input /equip Sub "Blurred Shield +1"; wait 1; input /equip Main "Sakpata\'s Sword"')
			idle()
		elseif Sword == "Malignance" and Shield == "Aegis" then
			send_command('input /equip Sub "Aegis"; wait 1; input /equip Main "Malignance Sword"')
			idle()
		elseif Sword == "Malignance" and Shield == "Ochain" then
			send_command('input /equip Sub "Ochain"; wait 1; input /equip Main "Malignance Sword"')
			idle()
		elseif Sword == "Malignance" and Shield == "Blurred" then
			send_command('input /equip Sub "Blurred Shield +1"; wait 1; input /equip Main "Malignance Sword"')
			idle()
		elseif Sword == "Naegling" and Shield == "Aegis" then
			send_command('input /equip Sub "Aegis"; wait 1; input /equip Main "Naegling"')
			idle()
		elseif Sword == "Naegling" and Shield == "Ochain" then
			send_command('input /equip Sub "Ochain"; wait 1; input /equip Main "Naegling"')
			idle()
		elseif Sword == "Naegling" and Shield == "Blurred" then 
			send_command('input /equip Sub "Blurred Shield +1"; wait 1; input /equip Main "Naegling"')
			idle()
		else
			idle()
		end
	else
		idle()
	end
end

function self_command(command)
	if command == "ToggleHybrid" then
		if Mode == "DPS" or Mode == "AoETank" or Mode == "BlockTank" or Mode == "SingleTank" or Mode == "MagicEva" or Mode == "MPAbsorb" then
			Mode = "Hybrid"
			send_command('console_echo "Hybrid Mode"')
			idle()
		elseif Mode == "Hybrid" then
			Mode = "DPS"
			send_command('console_echo "DPS Mode"')
			idle()
		end
	elseif command == "ToggleTank" then
		if Mode == "Hybrid" or Mode == "DPS" or Mode == "SingleTank" or Mode == "MagicEva" or Mode == "MPAbsorb" then
			Mode = "AoETank"
			send_command('console_echo "AoE Tank Mode"')
			idle()
		elseif Mode == "AoETank" then
			Mode = "BlockTank"
			send_command('console_echo "Block Tank Mode"')
			idle()
		elseif Mode == "BlockTank" then
			Mode = "SingleTank"
			send_command('console_echo "Single Tank Mode"')
			idle()
		end
	elseif command == "ToggleMagic" then
		if Mode == "Hybrid" or Mode == "DPS" or Mode == "AoETank" or Mode == "BlockTank" or Mode == "SingleTank" or Mode == "MagicEva" then
			Mode = "MPAbsorb"
			send_command('console_echo "MP Absorb Mode"')
			idle()
		elseif Mode == "MPAbsorb" then
			Mode = "MagicEva"
			send_command('console_echo "Magic Evasion Mode"')
			idle()
		end
	elseif command == "ToggleShield" then
		if Shield == "Aegis" then
			Shield = "Ochain"
			send_command('input /equip Sub "Ochain"')
			send_command('console_echo "Ochain Locked"')
			idle()
		elseif Shield == "Ochain" then
			Shield = "Blurred"
			send_command('input /equip Sub "Blurred Shield +1"')
			send_command('console_echo "Blurred Locked"')
			idle()
		elseif Shield == "Blurred" or Shield == "Open" then
			Shield = "Aegis"
			send_command('input /equip Sub "Aegis"')
			send_command('console_echo "Aegis Locked"')
			idle()
		end
	elseif command == "ToggleWeapon" then
		if Sword == "Sakpata" then
			Sword = "Malignance"
			send_command('input /equip Main "Malignance Sword"')
			send_command('console_echo "Malignance Locked"')
			idle()
		elseif Sword == "Malignance" then
			Sword = "Naegling"
			send_command('input /equip Main "Naegling"')
			send_command('console_echo "Naegling Locked"')
			idle()
		elseif Sword == "Naegling" or Sword == "Open" then
			Sword = "Sakpata"
			send_command('input /equip Main "Sakpata\'s Sword"')
			send_command('console_echo "Sakpata Locked"')
			idle()
		end
	elseif command == "ToggleOpen" then
		Sword = "Open"
		Shield = "Open"
		send_command('console_echo "Weapons/Shields unlocked"')
		idle()
	end
end