
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
	}
	--Night Idle set w/ movement speed
	sets.idle.night = set_combine(sets.idle.normal,{
		feet="Hachiya Kyahan +3",
	})
--------------- ENGAGED SETS ------------------
	-- 0 Haste
	sets.engaged.haste0 = {
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
end)

windower.register_event('gain buff', function(buff_id)
	if buff_id == 66 then
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

--[[ HASTE 1 VERSION BELOW -- to be added to next .lua
function idle()
	if player.status == "Engaged" then 
		if ( buffactive[580] and ( buffactive.march or buffactive[33] or buffactive.embrava or buffactive[604]) ) or  -- geo haste + anything
		   ( buffactive.embrava and (buffactive.march or buffactive[33] or buffactive[604]) ) or  -- embrava + anything
		   ( buffactive.march == 2 and (buffactive[33] or buffactive[604]) ) or  -- two marches + anything
		   ( buffactive[33] and buffactive[604] and buffactive.march ) then -- haste + mighty guard + any marches
			if buffactive['Copy Image'] or buffactive['Copy Image (2)'] or buffactive['Copy Image (3)'] or buffactive['Copy Image (4+)'] then
				equip(sets.engaged.hastecap)
			else
				equip(sets.engaged.hastecapdef)
			end
		elseif ( (buffactive[604] or buffactive[33]) and buffactive['haste samba'] and buffactive.march == 1) or -- MG or haste + samba with 1 march
			   ( buffactive.march == 2 and buffactive['haste samba'] ) or
			   ( buffactive[580] and buffactive['haste samba'] ) then 
			if buffactive['Copy Image'] or buffactive['Copy Image (2)'] or buffactive['Copy Image (3)'] or buffactive['Copy Image (4+)'] then
				equip(sets.engaged.haste35)
			else
				equip(sets.engaged.haste35def)
			end
		elseif ( buffactive.march == 2 ) or -- two marches from ghorn
			   ( (buffactive[33] or buffactive[604]) and buffactive.march == 1 ) or  -- MG or haste + 1 march
			   ( buffactive[580] ) or  -- geo haste
			   ( buffactive[33] and buffactive[604] ) then  -- haste with MG
			if buffactive['Copy Image'] or buffactive['Copy Image (2)'] or buffactive['Copy Image (3)'] or buffactive['Copy Image (4+)'] then
				equip(sets.engaged.haste30)
			else
				equip(sets.engaged.haste30def)
			end	
		elseif buffactive[33] or buffactive[604] or buffactive.march == 1 then
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
		if world.time >= (17*60) or world.time <= (7*60) then
			equip(sets.idle.night)
		else
			equip(sets.idle.normal)
		end
	end
end
]]


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