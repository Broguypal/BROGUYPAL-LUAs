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
end

function get_sets()
send_command('bind numpad9 gs c ToggleHybrid')
send_command('bind numpad8 gs c ToggleTank')

send_command('bind f9 input /item "Remedy" <me>')
send_command('bind f10 input /item "Panacea" <me>')
send_command('bind f11 input /item "Holy Water" <me>')

Mode = "HybridMB"

Modes = {'HybridMB','Tank','HybridFreeCast'}

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
		back="Moonbeam Cape",
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
		back="Moonbeam Cape",
	}


--------------- ENGAGED SETS ------------------

----Hybrid  ----

--[[ Key DW pieces:
-- Suppanomimi - 5 DW
-- Ambu Cape - 10 DW
-- Reiki Yotai - 7 DW
-- Eabani earring - 4 DW
-- Taeon Boots - 9 DW
-- Carmine Scale male +1 - 6 DW
Max - 41 DW
]]

---- NON DualWield JOB ----
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
		back="Moonbeam Cape",
	}


---- Capped Haste (need 11 DW (nin)/ 21DW (dnc)) ----
	sets.engaged.hybrid.hastecapNIN = {
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
		-- Ambu DW Cape
	}
	sets.engaged.hybrid.hastecapNINenspell = set_combine(sets.engaged.hybrid.hastecapNIN,{
		hands="Aya. Manopolas +2",
		waist="Orpheus's Sash",
	})

	sets.engaged.hybrid.hastecapDNC = {
		ammo="Coiste Bodhar",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}}, --6DW
		feet="Malignance Boots",
		neck="Anu Torque",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Crep. Earring",
		right_ear="Eabani Earring", --4DW
		left_ring="Fickblix's Ring",
		right_ring="Ilabrat Ring",
		-- Ambu cape --10DW
	}
	sets.engaged.hybrid.hastecapDNCenspell = set_combine(sets.engaged.hybrid.hastecapDNC,{
		hands="Aya. Manopolas +2",
		waist="Orpheus's Sash",
	})


---- 35 Haste (need 22 DW (nin)/ 32DW (dnc)) ----
	sets.engaged.hybrid.haste35NIN = set_combine(sets.engaged.hybrid.hastecapNIN,{
		feet={ name="Taeon Boots", augments={'Accuracy+25','"Dual Wield"+5','DEX+10',}}, --9 DW
		right_ear="Eabani Earring", -- 4 DW
		-- Ambu cape --10DW
	})
	sets.engaged.hybrid.haste35NINenspell = set_combine(sets.engaged.hybrid.haste35NIN,{
		hands="Aya. Manopolas +2",
		waist="Orpheus's Sash",
	})
	
	sets.engaged.hybrid.haste35DNC = set_combine(sets.engaged.hybrid.hastecapDNC,{
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}}, --6DW
		feet={ name="Taeon Boots", augments={'Accuracy+25','"Dual Wield"+5','DEX+10',}}, --9 DW
		left_ear="Suppanomimi", -- 5DW
		right_ear="Eabani Earring", -- 4 DW
		-- Ambu cape --10DW
	})
	sets.engaged.hybrid.haste35DNCenspell = set_combine(sets.engaged.hybrid.haste35DNC,{
		hands="Aya. Manopolas +2",
		waist="Orpheus's Sash",
	})

---- 30 Haste (need 31 DW (nin)/ 41DW (dnc)) ----
	sets.engaged.hybrid.haste30 = set_combine(sets.engaged.hybrid.hastecapNIN,{
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}}, --6DW
		feet={ name="Taeon Boots", augments={'Accuracy+25','"Dual Wield"+5','DEX+10',}}, --9 DW
		left_ear="Suppanomimi", -- 5DW
		-- Ambu cape --10DW
	})
	sets.engaged.hybrid.haste30NINenspell = set_combine(sets.engaged.hybrid.haste30NIN,{
		hands="Aya. Manopolas +2",
		waist="Orpheus's Sash",
	})

	sets.engaged.hybrid.haste30DNC = set_combine(sets.engaged.hybrid.hastecapDNC,{
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}}, --6DW
		feet={ name="Taeon Boots", augments={'Accuracy+25','"Dual Wield"+5','DEX+10',}}, --9 DW
		waist="Reiki Yotai", --7DW
		left_ear="Suppanomimi", -- 5DW
		right_ear="Eabani Earring", -- 4 DW
		-- Ambu cape --10DW
	})
	sets.engaged.hybrid.haste30DNCenspell = set_combine(sets.engaged.hybrid.haste30DNC,{
		hands="Aya. Manopolas +2",
		waist="Orpheus's Sash",
	})

----- 15 Haste (need 42 DW (nin)/ 52 DW (dnc)) ----
	sets.engaged.hybrid.haste15NIN = set_combine(sets.engaged.hybrid.hastecapNIN,{
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}}, --6DW
		feet={ name="Taeon Boots", augments={'Accuracy+25','"Dual Wield"+5','DEX+10',}}, --9 DW
		waist="Reiki Yotai", --7DW
		left_ear="Suppanomimi", -- 5DW
		right_ear="Eabani Earring", -- 4 DW
		-- Ambu cape --10DW
	})
	sets.engaged.hybrid.haste15NINenspell = set_combine(sets.engaged.hybrid.haste15NIN,{
		hands="Aya. Manopolas +2",
		waist="Orpheus's Sash",
	})
	-- No DNC since cant increase any further

--------------- PRECAST SETS ------------------
	--Fastcast Set
    sets.precast.fastcast = {
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
	
	sets.midcast.magicFREECAST = {}
	
	sets.midcast.magicFREECASTobi = set_combine(sets.midcast.magicFREECAST,{
		waist="Hachirin-no-Obi",
	})

	sets.midcast.magicBURST = {}
	
	sets.midcast.magicBURSTobi = set_combine(sets.midcast.magicBURST,{
		waist="Hachirin-no-Obi",
	})


	sets.midcast.magicACC = {}

	sets.midcast.aspir = {}
	
	sets.midcast.enfeebleMND = {}
		--MND based enfeeble
		
	sets.midcast.enfeebleINT = {}
		--INT based

	sets.midcast.enfeebleSKILL = {}
	
	sets.midcast.enhanceDURATION = {}
	
	sets.midcast.enhanceSKILL = {}
	
	sets.midcast.enhanceINT = {}
	
	sets.midcast.stoneskin = {}
	
	sets.midcast.phalanxSELF = {}
	
	sets.midcast.phalanxOTHERS = {}
	
	sets.midcast.cure = {}
	
	sets.midcast.cursna = {}
	
	sets.midcast.fastcast = {}
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
	}
	
	sets.ws.SanguineBlade = {
		ammo="Pemphredo Tathlum",
		head="Pixie Hairpin +1",
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands="Jhakri Cuffs +2",
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Sibyl Scarf",
		waist="Orpheus's Sash",
		left_ear="Friomisi Earring",
		right_ear="Malignance Earring",
		left_ring="Archon Ring",
		right_ring="Epaminondas's Ring",
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
	if Mode == "HybridMB" or Mode == "HybridFreeCast" then
		if player.status == "Engaged" then 
			if ( ( (buffactive[33] or buffactive[580] or buffactive.embrava) and (buffactive.march or buffactive[604]) ) or
            ( buffactive[33] and (buffactive[580] or buffactive.embrava) ) or
            ( buffactive.march == 2 and buffactive[604] ) ) then
				if player.sub_job =='NIN' then
					if buffactive["Enfire"] or buffactive["Enblizzard"] or buffactive["Enaero"] or buffactive["Enstone"] or buffactive["Enthunder"] or buffactive["Enwater"] or
					buffactive["Enfire II"] or buffactive["Enblizzard II"] or buffactive["Enaero II"] or buffactive["Enstone II"] or buffactive["Enthunder II"] or buffactive["Enwater II"] then
						equip(sets.engaged.hybrid.hastecapNINenspell)
					else 
						equip(sets.engaged.hybrid.hastecapNIN)
					end
				elseif player.sub_job =='DNC' then
					if buffactive["Enfire"] or buffactive["Enblizzard"] or buffactive["Enaero"] or buffactive["Enstone"] or buffactive["Enthunder"] or buffactive["Enwater"] or
					buffactive["Enfire II"] or buffactive["Enblizzard II"] or buffactive["Enaero II"] or buffactive["Enstone II"] or buffactive["Enthunder II"] or buffactive["Enwater II"] then
						equip(sets.engaged.hybrid.hastecapDNCenspell)
					else
						equip(sets.engaged.hybrid.hastecapDNC)
					end
				else
						equip(sets.engaged.hybrid.normal)
				end
			elseif ( (buffactive[33] or buffactive.march == 2 or buffactive[580]) and buffactive['haste samba'] ) then
				if player.sub_job =='NIN' then
					if buffactive["Enfire"] or buffactive["Enblizzard"] or buffactive["Enaero"] or buffactive["Enstone"] or buffactive["Enthunder"] or buffactive["Enwater"] or
					buffactive["Enfire II"] or buffactive["Enblizzard II"] or buffactive["Enaero II"] or buffactive["Enstone II"] or buffactive["Enthunder II"] or buffactive["Enwater II"] then
						equip(sets.engaged.hybrid.haste35NINenspell)
					else 
						equip(sets.engaged.hybrid.haste35NIN)
					end
				elseif player.sub_job =='DNC' then
					if buffactive["Enfire"] or buffactive["Enblizzard"] or buffactive["Enaero"] or buffactive["Enstone"] or buffactive["Enthunder"] or buffactive["Enwater"] or
					buffactive["Enfire II"] or buffactive["Enblizzard II"] or buffactive["Enaero II"] or buffactive["Enstone II"] or buffactive["Enthunder II"] or buffactive["Enwater II"] then
						equip(sets.engaged.hybrid.haste35DNCenspell)
					else
						equip(sets.engaged.hybrid.haste35DNC)
					end
				else
						equip(sets.engaged.hybrid.normal)
				end
			elseif ( ( buffactive[580] or buffactive[33] or buffactive.march == 2 ) or
            ( buffactive.march == 1 and buffactive[604] ) ) then
				if player.sub_job =='NIN' then
					if buffactive["Enfire"] or buffactive["Enblizzard"] or buffactive["Enaero"] or buffactive["Enstone"] or buffactive["Enthunder"] or buffactive["Enwater"] or
					buffactive["Enfire II"] or buffactive["Enblizzard II"] or buffactive["Enaero II"] or buffactive["Enstone II"] or buffactive["Enthunder II"] or buffactive["Enwater II"] then
						equip(sets.engaged.hybrid.haste30NINenspell)
					else 
						equip(sets.engaged.hybrid.haste30NIN)
					end
				elseif player.sub_job =='DNC' then
					if buffactive["Enfire"] or buffactive["Enblizzard"] or buffactive["Enaero"] or buffactive["Enstone"] or buffactive["Enthunder"] or buffactive["Enwater"] or
					buffactive["Enfire II"] or buffactive["Enblizzard II"] or buffactive["Enaero II"] or buffactive["Enstone II"] or buffactive["Enthunder II"] or buffactive["Enwater II"] then
						equip(sets.engaged.hybrid.haste30DNCenspell)
					else
						equip(sets.engaged.hybrid.haste30DNC)
					end
				else
						equip(sets.engaged.hybrid.normal)
				end
			else
				if player.sub_job =='NIN' then
					if buffactive["Enfire"] or buffactive["Enblizzard"] or buffactive["Enaero"] or buffactive["Enstone"] or buffactive["Enthunder"] or buffactive["Enwater"] or
					buffactive["Enfire II"] or buffactive["Enblizzard II"] or buffactive["Enaero II"] or buffactive["Enstone II"] or buffactive["Enthunder II"] or buffactive["Enwater II"] then
						equip(sets.engaged.hybrid.haste15NINenspell)
					else 
						equip(sets.engaged.hybrid.haste15NIN)
					end
				elseif player.sub_job =='DNC' then
					if buffactive["Enfire"] or buffactive["Enblizzard"] or buffactive["Enaero"] or buffactive["Enstone"] or buffactive["Enthunder"] or buffactive["Enwater"] or
					buffactive["Enfire II"] or buffactive["Enblizzard II"] or buffactive["Enaero II"] or buffactive["Enstone II"] or buffactive["Enthunder II"] or buffactive["Enwater II"] then
						equip(sets.engaged.hybrid.haste30DNCenspell)
					else
						equip(sets.engaged.hybrid.haste30DNC)
					end
				else
						equip(sets.engaged.hybrid.normal)
				end
			end
		else
			equip(sets.idle.hybrid)
		end
	elseif Mode == "Tank"  then
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
	if spell.type == "Trust" then
		equip(sets.midcast.trust)
	elseif spell.name:match('Fire') or spell.name:match('Blizzard') or spell.name:match('Aero') or spell.name:match('Stone') or spell.name:match('Thunder') or spell.name:match('Water') then
		if Mode == "HybridMB" then
			if spell.element == world.day_element or spell.element == world.weather_element then
				if spell.name:match('Fire') and world.day_element ~= "Water" and world.weather_element ~= "Water" then
					equip(sets.midcast.magicBURSTobi)
				elseif spell.name:match('Water') and world.day_element ~= "Lightning" and world.weather_element ~= "Lightning" then
					equip(sets.midcast.magicBURSTobi)
				elseif spell.name:match('Thunder') and world.day_element ~= "Earth" and world.weather_element ~= "Earth" then
					equip(sets.midcast.magicBURSTobi)
				elseif spell.name:match('Stone') and world.day_element ~= "Wind" and world.weather_element ~= "Wind" then
					equip(sets.midcast.magicBURSTobi)
				elseif spell.name:match('Aero') and world.day_element ~= "Ice" and world.weather_element ~= "Ice" then
					equip(sets.midcast.magicBURSTobi)
				elseif spell.name:match('Blizzard') and world.day_element ~= "Fire" and world.weather_element ~= "Fire" then
					equip(sets.midcast.magicBURSTobi)
				else
					equip(sets.midcast.magicBURST)
				end
			else
				equip(sets.midcast.magicBURST)
			end
		elseif Mode == "HybridFreeCast" then
			if spell.element == world.day_element or spell.element == world.weather_element then
				if spell.name:match('Fire') and world.day_element ~= "Water" and world.weather_element ~= "Water" then
					equip(sets.midcast.magicFREECASTobi)
				elseif spell.name:match('Water') and world.day_element ~= "Lightning" and world.weather_element ~= "Lightning" then
					equip(sets.midcast.magicFREECASTobi)
				elseif spell.name:match('Thunder') and world.day_element ~= "Earth" and world.weather_element ~= "Earth" then
					equip(sets.midcast.magicFREECASTobi)
				elseif spell.name:match('Stone') and world.day_element ~= "Wind" and world.weather_element ~= "Wind" then
					equip(sets.midcast.magicFREECASTobi)
				elseif spell.name:match('Aero') and world.day_element ~= "Ice" and world.weather_element ~= "Ice" then
					equip(sets.midcast.magicFREECASTobi)
				elseif spell.name:match('Blizzard') and world.day_element ~= "Fire" and world.weather_element ~= "Fire" then
					equip(sets.midcast.magicFREECASTobi)
				else
					equip(sets.midcast.magicFREECAST)
				end
			else
				equip(sets.midcast.magicFREECAST)
			end
		else
			idle()
		end
	elseif spell.name:match('Sleep') or spell.name:match('Sleepga') or spell.name:match('Bind') or spell.name:match('Break') or spell.name:match('Silence') or spell.name:match('Inundation') or spell.name:match('Gravity') or spell.name:match('Dispel') then
		equip(sets.midcast.magicACC)
	elseif spell.name:match('Drain') or spell.name:match('Aspir') then
		equip(sets.midcast.aspir)
	elseif spell.name:match('Paralyze') or spell.name:match('Addle') or spell.name:match('Slow') or spell.name:match('Distract') or spell.name:match('Frazzle') then
		equip(sets.midcast.enfeebleMND)
	elseif spell.name:match('Blind') then
		equip(sets.midcast.enfeebleINT)
	elseif spell.name:match('Poison') or spell.name:match('Dia') or spell.name:match('Diaga') then
		equip(sets.midcast.enfeebleSKILL)
	elseif spell.name:match('Haste') or spell.name:match('Flurry') or spell.name:match('Blink') or spell.name:match('Protect') or spell.name:match('Shell') or spell.name:match('Refresh') or spell.name:match('Gain-VIT') or spell.name:match('Gain-MIND') or spell.name:match('Gain-CHR') or spell.name:match('Gain-AGI') or spell.name:match('Gain-STR') or spell.name:match('Gain-INT') or spell.name:match('Gain-DEX') then
		equip(sets.midcast.enhanceDURATION)
	elseif spell.name:match('Temper') or spell.name:match('Aquaveil') or spell.name:match('Enfire') or spell.name:match('Enblizzard') or spell.name:match('Enaero') or spell.name:match('Enstone') or spell.name:match('Enthunder') or spell.name:match('Enwater') or spell.name:match('Barfire') or spell.name:match('Barblizzard') or spell.name:match('Baraero') or spell.name:match('Barstone') or spell.name:match('Barthunder') or spell.name:match('Barwater') or spell.name:match('Barsleep') or spell.name:match('Barpoison') or spell.name:match('Barparalyze') or spell.name:match('Barblind') or spell.name:match('Barsilence') or spell.name:match('Barvirus') or spell.name:match('Barpetrify') or spell.name:match('Baramnesia') then
		equip(sets.midcast.enhanceSKILL)
	elseif spell.name:match('Blaze Spikes') or spell.name:match('Ice Spikes') or spell.name:match('Shock Spikes') then
		equip(sets.midcast.enhanceINT)
	elseif spell.name:match('Stoneskin') then
		equip(sets.midcast.stoneskin)
	elseif spell.name:match('Phalanx') then
		if player.target.type == "Self" then
			equip(sets.midcast.phalanxSELF)
		else
			equip(sets.midcast.phalanxOTHERS)
		end
	elseif spell.name:match('Cure') or spell.name:match('Cura') or spell.name:match('Curaga') then
		equip(sets.midcast.cure)
	elseif spell.name:match('Cursna') then
		equip(sets.midcast.cursna)
	elseif spell.name:match('Raise') or spell.name:match('Invisible') or spell.name:match('Sneak') or spell.name:match('Deodorize') then
		equip(sets.midcast.fastcast)
	elseif spell.name:match('Bio') then
		equip (sets.midcast.bio)
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
	else
		idle()
	end
end

function aftercast(spell)
	if player.status == "Engaged" then
		idle()
	else
		idle()
	end
end


function self_command(command)
	if command == "ToggleTank" then
		if Mode == "HybridMB" or "HybridFreeCast" then
			Mode = "Tank"
			send_command('console_echo "Tank Mode"')
			idle()
		end
	elseif command == "ToggleHybrid" then 
		if Mode == "Tank" or Mode == "HybridFreeCast" then
			Mode = "HybridMB"
			send_command('console_echo "Hybrid / MB Mode"')
			idle()
		elseif Mode == "HybridMB" then
			Mode = "HybridFreeCast"
			send_command('console_echo "Hybrid / Free Cast Mode"')
			idle()
		end
	end
end