
--  ____                                          _ _     
-- |  _ \                                        | ( )    
-- | |_) |_ __ ___   __ _ _   _ _   _ _ __   __ _| |/ ___ 
-- |  _ <| '__/ _ \ / _` | | | | | | | '_ \ / _` | | / __|
-- | |_) | | | (_) | (_| | |_| | |_| | |_) | (_| | | \__ \
-- |____/|_|  \___/ \__, |\__,_|\__, | .__/ \__,_|_| |___/
--                   __/ |       __/ | |                  
--                  |___/       |___/|_|    
-- 						NINJA LUA
-- NIN / NIN2 = Hybrid gear. NIN = Haste 2/ NIN2 = Haste 1 as buffs
-- NINMal / NINMal2 = Hybrid Gear - Malignance based (for when need MEva). NinMal = Haste2/ NINMal2 = Haste 1 as buffs
-- NIN Tank = Aoe Tank + MDef gear. Best suited to pulling large groups
-- NINeva = Evasion Tank
-- NINdps / NINdps2 = Pure DPS. dps = haste 2 / dps2 = haste 1 as buffs.



-- Requires Gearswap Addon - "Cancel"
-- requires Dressup
--> Use command "//du blinking self combat on" to stop blinking

send_command ('bind numpad9 gs l NIN.lua')
send_command ('bind numpad7 gs l NINdps.lua')
send_command ('bind numpad8 gs l NINTank.lua')
send_command ('bind numpad5 gs l NINeva.lua')
send_command ('bind numpad6 gs l NINMal.lua')
--send_command ('bind f12 input //fillmode')

send_command ('bind numpad1 input /mount "Crawler"')
send_command ('bind numpad2 input /dismount')

--send_command ('bind numpad1 input /equip ring2 "Warp Ring"; /echo Warping; wait 11; input /item "Warp Ring" <me>;')
--send_command ('bind numpad3 input /equip ring2 "Dim. Ring (holla)"; /echo Warping; wait 11; input /item "Dim. Ring (holla)" <me>;')

function get_sets()
  
    sets.idle = {}               	-- Leave this empty.   
	sets.engaged = {}				-- Leave this empty.
    sets.precast = {}               -- leave this empty    
    sets.midcast = {}               -- leave this empty    
    sets.aftercast = {}             -- leave this empty
	sets.ws = {}					-- Leave this empty
 
 
 -------------- IDLE SETS ---------------------
    --Normal Idle Set w/ movement speed
	sets.idle.normal = {
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

	sets.idle.normaltsuru = set_combine(sets.idle.normal,{
		})
--------------- ENGAGED SETS ------------------
	-- Normal Engaged
	sets.engaged.normaltank = {
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

	--No shadows (counter pieces subbed in)
	sets.engaged.counter = set_combine(sets.engaged.normaltank,{
		back={ name="Andartia's Mantle", augments={'AGI+20','Eva.+20 /Mag. Eva.+20','Evasion+10','"Store TP"+10','System: 1 ID: 640 Val: 4',}},
		})

	--No shadows (Yonin active)
	sets.engaged.yonin = set_combine(sets.engaged.counter,{
		legs="Hattori Hakama +2",
		})

----- TSURU engaged ------ (accounting for extra -8% DT from tsuru)
	-- Normal Engaged (tsuru)
	sets.engaged.normaltsuru = set_combine(sets.engaged.normaltank,{
		})

	-- No Shadows (tsuru)
	sets.engaged.countertsuru = set_combine(sets.engaged.normaltsuru,{
		back={ name="Andartia's Mantle", augments={'AGI+20','Eva.+20 /Mag. Eva.+20','Evasion+10','"Store TP"+10','System: 1 ID: 640 Val: 4',}},
		})
	
	-- No shadows + Yonin active (Tsuru)
	sets.engaged.yonintsuru = set_combine(sets.engaged.countertsuru,{
		legs="Hattori Hakama +2",
		})

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
		feet="Hattori Kyahan +2",
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
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
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
		feet="Malignance Boots",
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
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
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
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
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
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
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
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
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
	sets.ws.ei = {}
	
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
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
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

-- Change state when engaging enemy
function status_change(new,old)
	if new == "Engaged" then
		idle()
	else
		idle()
	end
end

-- Recognizing when losing utsusemi
windower.register_event('lose buff', function(buff_id)
	if buff_id == 66 then
		idle()
	end
end)

-- Recognizing when gaining utsusemi
windower.register_event('gain buff', function(buff_id)
	if buff_id == 66 then
		idle()
	end
end)



-- Idle 
function idle()
	if player.status == "Engaged" then 
		if player.equipment.sub == "Tsuru" then
			if buffactive['Copy Image'] or buffactive['Copy Image (2)'] or buffactive['Copy Image (3)'] or buffactive['Copy Image (4+)'] then
				equip(sets.engaged.normaltsuru)
			else
				if buffactive['Yonin'] then
					equip(sets.engaged.yonintsuru)
				else
					equip(sets.engaged.countertsuru)
				end
			end
		else
			if buffactive['Copy Image'] or buffactive['Copy Image (2)'] or buffactive['Copy Image (3)'] or buffactive['Copy Image (4+)'] then
				equip(sets.engaged.normaltank)
			else
				if buffactive['Yonin'] then
					equip(sets.engaged.yonin)
				else
					equip(sets.engaged.counter)
				end
			end
		end
	else
		if player.equipment.sub == "Tsuru" then
			equip(sets.idle.normaltsuru)
		else
			equip(sets.idle.normal)
		end
	end
end


--precast
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
	elseif spell.english == "Provoke" or spell.english =="Dodge" or spell.english =="Focus" or spell.english == "Chi Blast" or spell.english =="Counterstance" then
		equip(sets.precast.enmity)
	elseif spell.english == "Foil" or spell.english == "Poisonga" or spell.english == "Stun" or spell.english == "Flash" or spell.english == "Jettatura" or spell.english == "Blank Gaze" then
		if buffactive['Copy Image'] or buffactive['Copy Image (2)'] or buffactive['Copy Image (3)'] or buffactive['Copy Image (4+)'] then
			equip(sets.precast.enmity)
		else
			idle()
		end
	elseif spell.type == "Trust" then
		equip(sets.midcast.trust)
	else
		idle()
	end
end

function aftercast(spell)
	idle()
end


	-- Haste 1 - 15%
	-- Haste 2 - 30%
    -- assuming +4 for marches (ghorn has +5)
    -- Haste (white magic) 15%
    -- Haste Samba (Sub) 5%
    -- Haste (Merited DNC) 10% (never account for this)
    -- Victory March +0/+3/+4/+5    9.4/14%/15.6%/17.1% +0
    -- Advancing March +0/+3/+4/+5  6.3/10.9%/12.5%/14%  +0
    -- Embrava 30% with 500 enhancing skill
    -- Mighty Guard - 15%
    -- buffactive[580] = geo haste
    -- buffactive[33] = regular haste
    -- buffactive[604] = mighty guard
    -- state.HasteMode = toggle for when you know Haste II is being cast on you
    -- Hi = Haste II is being cast. This is clunky to use when both haste II and haste I are being cast