--  ____                                          _ _     
-- |  _ \                                        | ( )    
-- | |_) |_ __ ___   __ _ _   _ _   _ _ __   __ _| |/ ___ 
-- |  _ <| '__/ _ \ / _` | | | | | | | '_ \ / _` | | / __|
-- | |_) | | | (_) | (_| | |_| | |_| | |_) | (_| | | \__ \
-- |____/|_|  \___/ \__, |\__,_|\__, | .__/ \__,_|_| |___/
--                   __/ |       __/ | |                  
--                  |___/       |___/|_|    
-- 						DANCER LUA



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
end

function get_sets()
send_command('bind numpad9 gs c ToggleHybrid')
send_command('bind numpad8 gs c ToggleTank')

send_command('bind f9 input /item "Remedy" <me>')
send_command('bind f10 input /item "Panacea" <me>')
send_command('bind f11 input /item "Holy Water" <me>')

Mode = "Hybrid"

Modes = {'Hybrid','Tank','HybridHaste1'}

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
	}
	
	
	--Tank Idle
	sets.idle.tank = {

		}


--------------- ENGAGED SETS ------------------

----Hybrid  ----

--[[ Key DW pieces:
-- Suppanomimi - 7 DW
-- Ambu Cape - 10 DW
-- Adhemar Jacket +1 - 6 DW
-- Reiki Yotai - 7 DW
-- Maxixi Tiara +3 - 8 DW
-- Max = 38 DW
]]

------ 0 Haste (need 39 DW) -------------------

	sets.engaged.hybrid.haste0 = {
	}

	
----- 15 Haste (need 32 DW) ----
	sets.engaged.hybrid.haste15 = {
	}

---- 30 Haste (need 21 DW) ----
		sets.engaged.hybrid.haste30 = {
	}

---- 35 Haste (need 12 DW) ----
	sets.engaged.hybrid.haste35 = {
	}


---- Capped Haste (need 1 DW - negligible) ----
	sets.engaged.hybrid.hastecap = {
	}


--------------- PRECAST SETS ------------------
	--Fastcast Set
    sets.precast.fastcast = {
	}
	
---- JOB ABILITY SETS ----
	sets.ja.waltz = {
	}
	
	sets.ja.steps = {
	}
	
	sets.ja.jigs = {
	}
	
	sets.ja.sambas = {
	}
	
	sets.ja.violentflourish = {}
	
	sets.ja.reverseflourish = {}
	
	sets.ja.climacticflourish = {}
	
	sets.ja.strikingflourish = {}
	
	sets.ja.animatedflourish = {} --this also is a general enmity set
	
	sets.ja.trance = {}
	
	sets.ja.nofootrise = {}
	
	sets.ja.fandance = {}
	
	sets.ja.saberdance = {}
	
	sets.ja.closedposition = {}
	
	
--------------- MIDCAST SETS ------------------
	
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
	}
	
	--Rudra's storm Weaponskill
	sets.ws.rudrasstorm = {
	}

	--Pyrrhic Kleos Weaponskill
	sets.ws.pyrrhickleos = {
	}

	--Evisceration Weaponskill
	sets.ws.evisceration = {
	}

	--Shark Bite Weaponskill
	sets.ws.sharkbite = {
	}
	
	--Aeolian Edge Weaponskill
	sets.ws.aeolianedge = {
	}

---------------------------	ITEM SETS	---------------------------
	sets.items.holywater = {
		neck="Nicander's Necklace",
		left_ring="Purity Ring",
		right_ring="Blenmot's Ring",
	}

end

--------------- LOGIC - DO NOT TOUCH BELOW ------------------


-- Recognizing when losing haste related buffs to trigger automatic equipment change
windower.register_event('lose buff', function(buff_id)
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

-- Recognizing when gaining haste related buffs to trigger automatic equipment change
windower.register_event('gain buff', function(buff_id)
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
	if Mode == "Hybrid" then
		if player.status == "Engaged" then 
			if ( ( (buffactive[33] or buffactive[580] or buffactive.embrava) and (buffactive.march or buffactive[604]) ) or
            ( buffactive[33] and (buffactive[580] or buffactive.embrava) ) or
            ( buffactive.march == 2 and buffactive[604] ) ) then
				equip(sets.engaged.hybrid.hastecap)
			elseif ( (buffactive[33] or buffactive.march == 2 or buffactive[580]) and buffactive['haste samba'] ) then
				equip(sets.engaged.hybrid.haste35)
			elseif ( ( buffactive[580] or buffactive[33] or buffactive.march == 2 ) or
            ( buffactive.march == 1 and buffactive[604] ) ) then
				equip(sets.engaged.hybrid.haste30)
			elseif ( buffactive.march == 1 or buffactive[604] ) then
				equip(sets.engaged.hybrid.haste15)
			else
				equip(sets.engaged.hybrid.haste0)
			end
		else
			equip(sets.idle.hybrid)
		end
	elseif Mode == "HybridHaste1" then
		if player.status == "Engaged" then 
			if ( buffactive[580] and ( buffactive.march or buffactive[33] or buffactive.embrava or buffactive[604]) ) or  -- geo haste + anything
			( buffactive.embrava and (buffactive.march or buffactive[33] or buffactive[604]) ) or  -- embrava + anything
			( buffactive.march == 2 and (buffactive[33] or buffactive[604]) ) or  -- two marches + anything
			( buffactive[33] and buffactive[604] and buffactive.march ) then -- haste + mighty guard + any marches
				equip(sets.engaged.hybrid.hastecap)
			elseif ( (buffactive[604] or buffactive[33]) and buffactive['haste samba'] and buffactive.march == 1) or -- MG or haste + samba with 1 march
            ( buffactive.march == 2 and buffactive['haste samba'] ) or
            ( buffactive[580] and buffactive['haste samba'] ) then 
				equip(sets.engaged.hybrid.haste35)
			elseif ( buffactive.march == 2 ) or -- two marches from ghorn
            ( (buffactive[33] or buffactive[604]) and buffactive.march == 1 ) or  -- MG or haste + 1 march
            ( buffactive[580] ) or  -- geo haste
            ( buffactive[33] and buffactive[604] ) then -- haste with MG
				equip(sets.engaged.hybrid.haste30)
			elseif buffactive[33] or buffactive[604] or buffactive.march == 1 then
				equip(sets.engaged.hybrid.haste15)
			else
				equip(sets.engaged.hybrid.haste0)
			end
		else
			equip(sets.idle.hybrid)
		end
	elseif Mode == "Tank"  then
		equip(sets.idle.tank)
	end
end


function precast(spell)
	if spell.english == "Provoke" or spell.english == "Animated Flourish" then
		equip(sets.ja.animatedflourish)
	elseif spell.type == "Waltz" then
		equip(sets.ja.waltz)
	elseif spell.type == "Step" then
		equip(sets.ja.steps)
	elseif spell.type == "Jig" then
			equip(sets.ja.jigs)
	elseif spell.type == "Samba" then
		equip(sets.ja.sambas)
	elseif spell.english == "Violent Flourish" then
		equip(sets.ja.violentflourish)
	elseif spell.english == "Reverse Flourish" then
		equip(sets.ja.reverseflourish)
	elseif spell.english == "Climactic Flourish" then
		equip(sets.ja.climacticflourish)
	elseif spell.english == "Striking Flourish" then
		equip(sets.ja.strikingflourish)
	elseif spell.english == "Trance" then
		equip(sets.ja.trance)
	elseif spell.english == "No Foot Rise" then
		equip(sets.ja.nofootrise)
	elseif spell.english == "Fan Dance" then
		equip(sets.ja.fandance)
	elseif spell.english == "Saber Dance" then
		equip(sets.ja.saberdance)
	elseif spell.english == "Closed Position" then
		equip(sets.ja.closedposition)
	elseif spell.type == "BlueMagic" or spell.type == "BlackMagic" or spell.type == "WhiteMagic" or spell.type == "Ninjutsu" or spell.type == "Trust" then 
		equip(sets.precast.fastcast)
	elseif spell.type == "WeaponSkill" then 
		if spell.english == "Rudra's Storm" then
			equip(sets.ws.rudrasstorm)
		elseif spell.english == "Pyrrhic Kleos" then
			equip(sets.ws.pyrrhickleos)
		elseif spell.english == "Evisceration" then
			equip(sets.ws.evisceration)
		elseif spell.english == "Shark Bite" then
			equip(sets.ws.sharkbite)
		elseif spell.english == "Aeolian Edge" then
			equip(sets.ws.aeolianedge)
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
	if spell.english == "Foil" or spell.english == "Poisonga" or spell.english == "Stun" or spell.english == "Flash" or spell.english == "Jettatura" or spell.english == "Blank Gaze" then
		equip(sets.ja.animatedflourish)
	elseif spell.type == "Trust" then
		equip(sets.midcast.trust)
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
	if command == "ToggleTank" then
		if Mode == "Hybrid" or "HybridHaste1" then
			Mode = "Tank"
			send_command('console_echo "Tank Mode"')
			idle()
		end
	elseif command == "ToggleHybrid" then 
		if Mode == "Tank" or Mode == "HybridHaste1" then
			Mode = "Hybrid"
			send_command('console_echo "Hybrid Mode"')
			idle()
		elseif Mode == "Hybrid" then
			Mode = "HybridHaste1"
			send_command('console_echo "Hybrid Haste 1 Mode"')
			idle()
		end
	end
end