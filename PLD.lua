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
	}
	
	sets.engaged.DPS = {
	}
	

---- PRECAST SETS ----
	sets.precast.fastcast = {
	}
	
	sets.precast.cure = {
	}

---- JOB ABILITY SETS ----
	sets.ja.sentinel = {
	}
	
	sets.ja.shieldbash = {
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
	}
	
	sets.midcast.cureSIR = {
	}
	
	sets.midcast.enmity = {
	}
	
	sets.midcast.enmitySIR = {
	}
	
	sets.midcast.phalanx = {
		main="Sakpata's Sword",
	}
	
	sets.midcast.phalanxSIR = {
	}

-- No weapon/shield swaps
	sets.midcast.phalanxOpen = {
	}

-- No weapon/shield swaps
	sets.midcast.phalanxSIROpen = {
	}
	
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
	}
	
	sets.ws.savageblade = {
	}
	
	sets.ws.atonement = {
	}
	
	sets.ws.requiescat = {
	}

	sets.ws.chantducygne = {
	}
	
	sets.ws.torcleaver = {
	}
	
	sets.ws.impulsedrive = {
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
			equip(sets.engaged.dps)
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
		elseif spell.english == "Impulse Drive" then
			equip(sets.ws.impulsedrive)
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