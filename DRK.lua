--  ____                                          _ _     
-- |  _ \                                        | ( )    
-- | |_) |_ __ ___   __ _ _   _ _   _ _ __   __ _| |/ ___ 
-- |  _ <| '__/ _ \ / _` | | | | | | | '_ \ / _` | | / __|
-- | |_) | | | (_) | (_| | |_| | |_| | |_) | (_| | | \__ \
-- |____/|_|  \___/ \__, |\__,_|\__, | .__/ \__,_|_| |___/
--                   __/ |       __/ | |                  
--                  |___/       |___/|_|    
--DRK LUA


function file_unload()
	send_command('unbind f10')
    send_command('unbind numpad9')
    send_command('unbind numpad8')
    send_command('unbind numpad7')
    send_command('unbind numpad6')
	send_command('unbind numpad5')
	send_command('unbind numpad4')
	send_command('unbind numpad3')
    enable("main","sub","range","ammo","head","neck","ear1","ear2","body","hands","ring1","ring2","back","waist","legs","feet")
end


function get_sets()
send_command('bind f9 input /item "Remedy" <me>')
send_command('bind f10 input /item "Panacea" <me>')
send_command('bind f11 input /item "Holy Water" <me>')

send_command('bind f12 gs c ToggleHybrid')

Mode = "Hybrid"

Modes = {'Hybrid', 'Tank'}
 
    sets.idle = {}                  -- Leave this empty
	sets.engaged = {}				-- Leave this empty
    sets.precast = {}               -- leave this empty    
    sets.midcast = {}               -- leave this empty    
	sets.ws = {}					-- Leave this empty
	sets.ja = {}					-- Leave this empty
	sets.items = {}					-- Leave this empty

 
 
 ---- IDLE SETS - NOT ENGAGED ----
 -- Normal Idle set. Equip your movement speed items here
	sets.idle.normal = {
	}
 
 -- Tank Idle set. Pure -DT set here. 
	sets.idle.tank = {
	}
 
  ---- ENGAGED SETS ----
 
 -- Normal Hybrid Engaged set
	sets.engaged.normal = {
	}
 
 
 ---- PRECAST SETS ----
 
 --Fastcast set
	sets.precast.fastcast = {
	}

--impact
	sets.precast.impact = set_combine(sets.precast.fastcast, {
	-- Put impact cloak here only
	})

---- MIDCAST SETS ----
-- Midcast spell damage
	sets.midcast.spelldamage = {
	}

-- Midcast enfeebles (Spell accuracy focus)
	sets.midcast.enfeeble = {
	}

-- Endark
	sets.midcast.endark = {
	}

-- Stun
	sets.midcast.stun = {
	}

-- Drain
	sets.midcast.drain = {
	}
	
--Absorb Spells
	sets.midcast.absorb = {
	}

-- Dreadspikes
	sets.midcast.dreadspikes = {
	}

-- impact
	sets.midcast.impact = {
	}

-- Trusts
	sets.midcast.trust = {
	--put all 119 gear in here to prevent trusts from being underleveled.
	}

---- JOB ABILITY SETS ----
	sets.ja.bloodweapon = {
	--fallen's cuirass
	}
	
	sets.ja.arcanecircle = {
	--ignominy sollerets
	}
	
	sets.ja.lastresort = {
	--fallen sollerets and ankou's mantle
	}
	
	sets.ja.weaponbash = {
	--ignominy gauntlets
	}
	
	sets.ja.souleater = {
	--ignominy Burgeonet
	}
	
	sets.ja.darkseal = {
	-- Fallen's Burgeonet
	}
	
	sets.ja.diaboliceye = {
	--Fallen's finger gauntlets
	}
	
	sets.ja.nethervoid = {
	-- Heathen's flanchard
	}

 ---- WEAPON SKILL SETS ----
 --Greatsword:
	sets.ws.torcleaver = {
	}
	
	sets.ws.resolution = {
	}
	
	sets.ws.scourge = {
	}
	
	sets.ws.groundstrike = {
	}
	
	sets.ws.shockwave = {
	}
	
	sets.ws.herculeanslash = {
	}
	
--Scythe:
	sets.ws.crossreaper = {
	}
	
	sets.ws.insurgency = {
	}
	
	sets.ws.quietus = {
	}
	
	sets.ws.catastrophe = {
	}
	
	sets.ws.entropy = {
	}
	
	sets.ws.guillotine = {
	}
	
	sets.ws.shadowofdeath = {
	}
	
	sets.ws.infernalscythe = {
	}
	
	sets.ws.origin = {
	}
	
--Sword:
	sets.ws.savageblade = {
	}
	
	sets.ws.requiescat = {
	}
	
	sets.ws.sanguineblade = {
	}
	
--Axe:
	sets.ws.decimation = {
	}
	
	sets.ws.mistralaxe = {
	}
	
--Greataxe:
	sets.ws.upheaval = {
	}
	
	sets.ws.armorbreak = {
	}
	
--club:
	sets.ws.judgement = {
	}
	
--general:
	sets.ws.general = {
	}

---- ITEM SETS ----
	sets.items.holywater = {
		neck="Nicander's Necklace",
		left_ring="Purity Ring",
		right_ring="Blenmot's Ring",
	}
end



------------------ DO NOT TOUCH BELOW -------------------------


function idle()
	if Mode == "Tank" then
		equip(sets.idle.tank)
	elseif Mode == "Hybrid" then
		if player.status == "Engaged" then 
			equip(sets.engaged.normal) 
		else
			equip(sets.idle.normal)
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
	if spell.english == "Impact" then
		equip(sets.precast.impact)
	elseif spell.type == "BlueMagic" or spell.type == "BlackMagic" or spell.type == "WhiteMagic" or spell.type == "Ninjutsu" or spell.type == "Trust" then 
		equip(sets.precast.fastcast)
	elseif spell.type == "JobAbility" then
		if spell.english == "Blood Weapon" then
			equip(sets.ja.bloodweapon)
		elseif spell.english == "Arcane Circle" then
			equip(sets.ja.arcanecircle)
		elseif spell.english == "Last Resort" then
			equip(sets.ja.lastresort)
		elseif spell.english == "Weapon Bash" then
			equip(sets.ja.weaponbash)
		elseif spell.english == "Souleater" then
			equip(sets.ja.souleater)
		elseif spell.english == "Dark Seal" then
			equip(sets.ja.darkseal)
		elseif spell.english == "Diabolic Eye" then
			equip(sets.ja.diaboliceye)
		elseif spell.english == "Nether Void" then
			equip(sets.ja.nethervoid)
		end
	elseif spell.type == "WeaponSkill" then
		if spell.english == "Torcleaver" then
			equip(sets.ws.torcleaver)
		elseif spell.english == "Resolution" then
			equip(sets.ws.resolution)
		elseif spell.english == "Scourge" then
			equip(sets.ws.scourge)
		elseif spell.english == "Ground Strike" then
			equip(sets.ws.groundstrike)
		elseif spell.english == "Shockwave" then
			equip(sets.ws.shockwave)
		elseif spell.english == "Herculean Slash" then
			equip(sets.ws.herculeanslash)
		elseif spell.english == "Cross Reaper" then
			equip(sets.ws.crossreaper)
		elseif spell.english == "Insurgency" then
			equip(sets.ws.insurgency)
		elseif spell.english == "Quietus" then
			equip(sets.ws.quietus)
		elseif spell.english == "Catastrophe" then
			equip(sets.ws.catastrophe)
		elseif spell.english == "Entropy" then
			equip(sets.ws.entropy)
		elseif spell.english == "Guillotine" then
			equip(sets.ws.guillotine)
		elseif spell.english == "Shadow of Death" then
			equip(sets.ws.shadowofdeath)
		elseif spell.english == "Infernal Scythe" then
			equip(sets.ws.infernalscythe)
		elseif spell.english == "Origin" then
			equip(sets.ws.origin)
		elseif spell.english == "Savage Blade" then
			equip(sets.ws.savageblade)
		elseif spell.english == "Requiescat" then
			equip(sets.ws.requiescat)
		elseif spell.english == "Sanguine Blade" then
			equip(sets.ws.sanguineblade)
		elseif spell.english == "Decimation" then
			equip(sets.ws.decimation)
		elseif spell.english == "Mistral Axe" then
			equip(sets.ws.mistralaxe)
		elseif spell.english == "Upheaval" then
			equip(sets.ws.upheaval)
		elseif spell.english == "Armor Break" then
			equip(sets.ws.armorbreak)
		elseif spell.english == "Judgement" then
			equip(sets.ws.judgement)
		else
			equip(sets.ws.general)
		end
	elseif spell.english == "Holy Water" then
		equip(sets.items.holywater)
	else
		idle()
	end
end

function midcast(spell)
	if spell.english == "Endark" then
		equip(sets.midcast.endark)
	elseif spell.english == "Stun" then
		equip(sets.midcast.stun)
	elseif spell.name:match('Drain') then
		equip(sets.midcast.drain)
	elseif spell.name:match('Absorb') then
		equip(sets.midcast.absorb)
	elseif spell.english == "Dread Spikes" then
		equip(sets.midcast.dreadspikes)
	elseif spell.name:match('Bio') or spell.name:match('Poison') or spell.name:match('Aspir') or spell.name:match('Bind') or spell.name:match('Sleep') then
		equip(sets.midcast.enfeeble)
	elseif spell.type == "BlackMagic" then
		equip(sets.midcast.spelldamage)
	elseif spell.type == "Trust" then
		equip(sets.midcast.trust)
	elseif spell.english == "Impact" then
		equip(sets.midcast.impact)
	elseif spell.type == "JobAbility" then
		if spell.english == "Blood Weapon" then
			equip(sets.ja.bloodweapon)
		elseif spell.english == "Arcane Circle" then
			equip(sets.ja.arcanecircle)
		elseif spell.english == "Last Resort" then
			equip(sets.ja.lastresort)
		elseif spell.english == "Weapon Bash" then
			equip(sets.ja.weaponbash)
		elseif spell.english == "Souleater" then
			equip(sets.ja.souleater)
		elseif spell.english == "Dark Seal" then
			equip(sets.ja.darkseal)
		elseif spell.english == "Diabolic Eye" then
			equip(sets.ja.diaboliceye)
		elseif spell.english == "Nether Void" then
			equip(sets.ja.nethervoid)
		end
	elseif spell.type == "WeaponSkill" then
		if spell.english == "Torcleaver" then
			equip(sets.ws.torcleaver)
		elseif spell.english == "Resolution" then
			equip(sets.ws.resolution)
		elseif spell.english == "Scourge" then
			equip(sets.ws.scourge)
		elseif spell.english == "Ground Strike" then
			equip(sets.ws.groundstrike)
		elseif spell.english == "Shockwave" then
			equip(sets.ws.shockwave)
		elseif spell.english == "Herculean Slash" then
			equip(sets.ws.herculeanslash)
		elseif spell.english == "Cross Reaper" then
			equip(sets.ws.crossreaper)
		elseif spell.english == "Insurgency" then
			equip(sets.ws.insurgency)
		elseif spell.english == "Quietus" then
			equip(sets.ws.quietus)
		elseif spell.english == "Catastrophe" then
			equip(sets.ws.catastrophe)
		elseif spell.english == "Entropy" then
			equip(sets.ws.entropy)
		elseif spell.english == "Guillotine" then
			equip(sets.ws.guillotine)
		elseif spell.english == "Shadow of Death" then
			equip(sets.ws.shadowofdeath)
		elseif spell.english == "Infernal Scythe" then
			equip(sets.ws.infernalscythe)
		elseif spell.english == "Origin" then
			equip(sets.ws.origin)
		elseif spell.english == "Savage Blade" then
			equip(sets.ws.savageblade)
		elseif spell.english == "Requiescat" then
			equip(sets.ws.requiescat)
		elseif spell.english == "Sanguine Blade" then
			equip(sets.ws.sanguineblade)
		elseif spell.english == "Decimation" then
			equip(sets.ws.decimation)
		elseif spell.english == "Mistral Axe" then
			equip(sets.ws.mistralaxe)
		elseif spell.english == "Upheaval" then
			equip(sets.ws.upheaval)
		elseif spell.english == "Armor Break" then
			equip(sets.ws.armorbreak)
		elseif spell.english == "Judgement" then
			equip(sets.ws.judgement)
		else
			equip(sets.ws.general)
		end
	elseif spell.english == "Holy Water" then
		equip(sets.items.holywater)
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
			Mode = "Tank"
			send_command('console_echo "TANK MODE"')
			idle()
		elseif Mode == "Tank" then
			Mode = "Hybrid"
			send_command('console_echo "HYBRID MODE"')
			idle()
		end
	end
end