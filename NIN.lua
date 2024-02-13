
--  ____                                          _ _     
-- |  _ \                                        | ( )    
-- | |_) |_ __ ___   __ _ _   _ _   _ _ __   __ _| |/ ___ 
-- |  _ <| '__/ _ \ / _` | | | | | | | '_ \ / _` | | / __|
-- | |_) | | | (_) | (_| | |_| | |_| | |_) | (_| | | \__ \
-- |____/|_|  \___/ \__, |\__,_|\__, | .__/ \__,_|_| |___/
--                   __/ |       __/ | |                  
--                  |___/       |___/|_|    
-- 						NINJA LUA
-- NIN.lua = Assuming receiving Haste 2
-- NINH1.lua = Assuming recieiving Haste 1
-- NINTank = Tank

send_command ('bind numpad9 gs l NIN.lua')
send_command ('bind numpad8 gs l NINH1.lua')
send_command ('bind numpad7 gs l NINTank.lua')
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
		head="Malignance Chapeau",
		body="Adamantite Armor",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Danzo Sune-Ate",
		neck={ name="Ninja Nodowa +2", augments={'Path: A',}},
		waist="Flume Belt +1",
		left_ear="Tuisto Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Defending Ring",
		right_ring="Fickblix's Ring",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
	}
	--Night Idle set w/ movement speed
	sets.idle.night = set_combine(sets.idle.normal,{
		feet="Hachiya Kyahan +3",
	})
--------------- ENGAGED SETS ------------------
	-- 0 Haste
	sets.engaged.haste0 = {
		ammo="Date Shuriken",
		head={ name="Ryuo Somen +1", augments={'HP+65','"Store TP"+5','"Subtle Blow"+8',}},
		body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
		hands="Malignance Gloves",
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet="Malignance Boots",
		neck={ name="Ninja Nodowa +2", augments={'Path: A',}},
		waist="Reiki Yotai",
		left_ear="Eabani Earring",
		right_ear="Suppanomimi",
		left_ring="Gere Ring",
		right_ring="Fickblix's Ring",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
	}
	-- 0 haste 0 shadows
	sets.engaged.haste0def = set_combine(sets.engaged.haste0,{
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		left_ring="Defending Ring",
	})
	
	-- 15 Haste
	sets.engaged.haste15 = {
		ammo="Date Shuriken",
		head={ name="Ryuo Somen +1", augments={'HP+65','"Store TP"+5','"Subtle Blow"+8',}},
		body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
		hands="Malignance Gloves",
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet="Malignance Boots",
		neck={ name="Ninja Nodowa +2", augments={'Path: A',}},
		waist="Reiki Yotai",
		left_ear="Eabani Earring",
		right_ear="Suppanomimi",
		left_ring="Gere Ring",
		right_ring="Fickblix's Ring",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
	}
	-- 15 haste 0 shadows
	sets.engaged.haste15def = set_combine(sets.engaged.haste15,{
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		left_ring="Defending Ring",
	})
	
	-- 30 Haste
	sets.engaged.haste30 = {
		ammo="Date Shuriken",
		head={ name="Ryuo Somen +1", augments={'HP+65','"Store TP"+5','"Subtle Blow"+8',}},
		body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
		hands="Malignance Gloves",
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet="Malignance Boots",
		neck={ name="Ninja Nodowa +2", augments={'Path: A',}},
		waist="Reiki Yotai",
		left_ear="Telos Earring",
		right_ear="Brutal Earring",
		left_ring="Gere Ring",
		right_ring="Fickblix's Ring",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
	}
	-- 30 haste 0 shadows
	sets.engaged.haste30def = set_combine(sets.engaged.haste30,{
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		left_ring="Defending Ring",
	})
	
	-- 35 Haste
	sets.engaged.haste35 = {
		ammo="Date Shuriken",
		head="Malignance Chapeau",
		body="Ken. Samue +1",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck={ name="Ninja Nodowa +2", augments={'Path: A',}},
		waist="Reiki Yotai",
		left_ear="Telos Earring",
		right_ear="Brutal Earring",
		left_ring="Gere Ring",
		right_ring="Fickblix's Ring",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
	}
	-- 35 haste 0 shadows
	sets.engaged.haste35def = set_combine(sets.engaged.haste35,{
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		left_ring="Defending Ring",
	})

	-- Capped Haste
	sets.engaged.hastecap = {
		ammo="Date Shuriken",
		head="Malignance Chapeau",
		body="Ken. Samue +1",
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck={ name="Ninja Nodowa +2", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Telos Earring",
		right_ear="Brutal Earring",
		left_ring="Gere Ring",
		right_ring="Fickblix's Ring",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
	}
	-- Cap haste 0 shadows
	sets.engaged.hastecapdef = set_combine(sets.engaged.hastecap,{
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		left_ring="Defending Ring",
	})


--------------- PRECAST SETS ------------------
	--Fastcast Set
    sets.precast.fastcast = {
	}
	--Utsusemi Precast
	sets.precast.utsusemi = {
	}
--------------- MIDCAST SETS ------------------
	--Utsusemi Midcast
    sets.midcast.utsusemi = {
	}
	--Enfeeble Midcast
    sets.midcast.enfeeble = {
	}

	--Elemental Midcast
    sets.midcast.elemental = {
	}

--------------- Weaponskill SETS ------------------
	--undefined Weaponskills
	sets.ws.normal = {
	}
	
	--shun Weaponskill
	sets.ws.shun = {
	}

	--metsu Weaponskill
	sets.ws.metsu = {
	}
	
	--ten Weaponskill
	sets.ws.ten = {
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


function status_change(new,old)
	if new == "Engaged" then
		idle()
	else
		idle()
	end
end


-- Idle (NOTE: This = Haste 2)
function idle()
	if player.status == "Engaged" then 
		if ( ( (buffactive[33] or buffactive[580] or buffactive.embrava) and (buffactive.march or buffactive[604]) ) or
			 ( buffactive[33] and (buffactive[580] or buffactive.embrava) ) or
			 ( buffactive.march == 2 and buffactive[604] ) ) then
			if buffactive['Copy Image'] or buffactive['Copy Image (2)'] or buffactive['Copy Image (3)'] or buffactive['Copy Image (4+)'] then
				equip(sets.engaged.hastecap)
			else
				equip(sets.engaged.hastecapdef)
			end
		elseif ( (buffactive[33] or buffactive.march == 2 or buffactive[580]) and buffactive['haste samba'] ) then
			if buffactive['Copy Image'] or buffactive['Copy Image (2)'] or buffactive['Copy Image (3)'] or buffactive['Copy Image (4+)'] then
				equip(sets.engaged.haste35)
			else
				equip(sets.engaged.haste35def)
			end
		elseif ( ( buffactive[580] or buffactive[33] or buffactive.march == 2 ) or
				 ( buffactive.march == 1 and buffactive[604] ) ) then
			if buffactive['Copy Image'] or buffactive['Copy Image (2)'] or buffactive['Copy Image (3)'] or buffactive['Copy Image (4+)'] then
				equip(sets.engaged.haste30)
			else
				equip(sets.engaged.haste30def)
			end	 
		elseif ( buffactive.march == 1 or buffactive[604] ) then
			if buffactive['Copy Image'] or buffactive['Copy Image (2)'] or buffactive['Copy Image (3)'] or buffactive['Copy Image (4+)'] then
				equip(sets.engaged.haste15)
			else
				equip(sets.engaged.haste15def)
			end	 
		else
			if buffactive['Copy Image'] or buffactive['Copy Image (2)'] or buffactive['Copy Image (3)'] or buffactive['Copy Image (4+)'] then
				equip(sets.engaged.haste0)
			else
				equip(sets.engaged.haste0def)
			end	 
		end
	else
		if world.time >= (17*60) or world.time < (7*60) then
			equip(sets.idle.night)
		else
			equip(sets.idle.normal)
		end
	end
end

function precast(spell)
	if spell.name:match('Utsusemi') then
		equip(sets.precast.utsusemi)
	elseif spell.type == "BlueMagic" or spell.type == "BlackMagic" or spell.type == "WhiteMagic" or spell.type == "Ninjutsu" then 
		equip(sets.precast.fastcast)
	elseif spell.type == "WeaponSkill" then 
		if spell.english == "Blade: Shun" then
			equip(sets.ws.shun)
		elseif spell.english == "Blade: Metsu" then
			equip(sets.ws.metsu)
		elseif spell.english == "Blade: Ten" then
			equip(sets.ws.ten)
		else
			equip(sets.ws.normal)
		end
	else
		idle()
	end
end

function midcast(spell)
	if spell.name:match('Utsusemi') then
		equip(sets.midcast.utsusemi)
	elseif spell.name:match('Kurayami') or spell.name:match('Hojo') or spell.name:match('Dokumori') or spell.name:match('Jubaku') then
		equip(sets.midcast.enfeeble)
	elseif spell.name:match('Katon') or spell.name:match('Suiton') or spell.name:match('Raiton') or spell.name:match('Doton') or spell.name:match('Huton') or spell.name:match('Hyoton') then
		equip(sets.midcast.elemental)
	elseif spell.type == "WeaponSkill" then 
		if spell.english == "Blade: Shun" then
			equip(sets.ws.shun)
		elseif spell.english == "Blade: Metsu" then
			equip(sets.ws.metsu)
		elseif spell.english == "Blade: Ten" then
			equip(sets.ws.ten)
		else
			equip(sets.ws.normal)
		end
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