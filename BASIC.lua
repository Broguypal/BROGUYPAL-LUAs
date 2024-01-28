--  ____                                          _ _     
-- |  _ \                                        | ( )    
-- | |_) |_ __ ___   __ _ _   _ _   _ _ __   __ _| |/ ___ 
-- |  _ <| '__/ _ \ / _` | | | | | | | '_ \ / _` | | / __|
-- | |_) | | | (_) | (_| | |_| | |_| | |_) | (_| | | \__ \
-- |____/|_|  \___/ \__, |\__,_|\__, | .__/ \__,_|_| |___/
--                   __/ |       __/ | |                  
--                  |___/       |___/|_|    
-- BASIC GEARSWAP FOR NEW PLAYERS.

-- PLEASE READ BELOW:
-- If completely new to gearswap - open gearswap location in your windower folder, and under "Data" create a folder with the name of your character. 
-- Enter that folder and save this gearswap file as YOURCLASS.lua (Ex. PUP.lua, or THF.lua)
-- This has the effect of making your gearswap folder automatically load when you change to the appropriate class.
-- THIS IS BEST EDITED IN NOTEPAD++. PLEASE DOWNLOAD AND INSTALL PRIOR TO CONTINUING.
 
---------------------------------------------------------------------------------------------------------------

---- BELOW IS A SHORTCUT SO YOU CAN MOUNT/DISMOUNT AT A CLICK OF A BUTTON. If you do not want to use this, type "--" in front of the line and it will make the line inactive (and change its color in notepad ++)
send_command ('bind numpad1 input /mount "Crawler"')
send_command ('bind numpad2 input /dismount')
--send_command ('bind numpad1 input /equip ring2 "Warp Ring"; /echo Warping; wait 11; input /item "Warp Ring" <me>;')
--send_command ('bind numpad3 input /equip ring2 "Dim. Ring (holla)"; /echo Warping; wait 11; input /item "Dim. Ring (holla)" <me>;')

------------------------DO NOT TOUCH BELOW----------------------------------------
function get_sets()
  
    sets.idle = {}                  -- Leave this empty.
    sets.precast = {}               -- leave this empty    
    sets.midcast = {}               -- leave this empty    
    sets.aftercast = {}             -- leave this empty
	sets.ws = {}					-- Leave this empty
	sets.ja = {}
 
 ------------------ DO NOT TOUCH ABOVE (BUT TOTALLY TOUCH BELOW THIS POINT) ---------
 
 -- NOTE - TO EASILY MAKE THE SETS BELOW, type "//gs export" while in game. There should be a folder named export under the Gearswap/Data folder that you can open, copy and paste the set you want to use.
 -- NOTE - You can see if the swaps are working by typing //gs showswaps

-- this is your set that you should equip when you aren't engaged. Usually this is a -damage taken set such as Nyame's set
    sets.idle.normal = {
		ammo="Staunch Tathlum +1",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Trotter Boots",
		neck="Sanctity Necklace",
		waist="Isa Belt",
		left_ear="Genmei Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Defending Ring",
		right_ring="Moonlight Ring",
		back="Moonbeam Cape",
	}

--This is the set you equip when you are engaged with an enemy. Consider this the set you want to equip when you want to build TP fast.
	sets.idle.engaged = {
		ammo="Per. Lucky Egg",
		head="Malignance Chapeau",
		body={ name="Herculean Vest", augments={'CHR+1','Attack+6','"Treasure Hunter"+2','Mag. Acc.+13 "Mag.Atk.Bns."+13',}},
		hands={ name="Plun. Armlets +1", augments={'Enhances "Perfect Dodge" effect',}},
		legs={ name="Herculean Trousers", augments={'"Drain" and "Aspir" potency +1','Pet: Accuracy+27 Pet: Rng. Acc.+27','"Treasure Hunter"+2','Accuracy+12 Attack+12','Mag. Acc.+13 "Mag.Atk.Bns."+13',}},
		feet={ name="Herculean Boots", augments={'Pet: Phys. dmg. taken -1%','STR+4','"Treasure Hunter"+2','Accuracy+18 Attack+18',}},
		neck="Erudit. Necklace",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Sherida Earring",
		right_ear={ name="Skulker's Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+9','Mag. Acc.+9',}},
		left_ring="Epona's Ring",
		right_ring="Ilabrat Ring",
		back="Moonbeam Cape",
	}

--This is your fast cast set. Essentially, you equip this set when you want spells to go pew pew fast.
    sets.precast.fastcast = {
	    head={ name="Herculean Helm", augments={'Attack+5','"Triple Atk."+3','Accuracy+6',}},
		body={ name="Taeon Tabard", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		feet={ name="Taeon Boots", augments={'Pet: Accuracy+23 Pet: Rng. Acc.+23','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		neck="Deviant Necklace",
		left_ring="Varar Ring +1",
		right_ring="Chirich Ring",
	}

-- this is your mid cast set that you equip in the middle of your spell. If you want your spells to hit hard, or accurately, put that set here.
    sets.midcast.spell = {
	}

--This is your general weaponskills set. If you want your weapon skills to do top big D damage, equip your set here.
	sets.ws.weapons = {
		ammo="Aurgelmir Orb",
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Fotia Gorget",
		waist="Dynamic Belt",
		left_ear="Sherida Earring",
		right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		left_ring="Petrov Ring",
		right_ring="Persis Ring",
	}

-- Have a favorite job ability you want to augment? Put that set in here.
	sets.ja.jobability = {
	}
	
end

-------- DO NOT TOUCH BELOW IF COMPLETELY NEW AT GEARSWAP -- Everything above should be all your basic needs.
function idle()
	if player.status == "Engaged" then 
		equip(sets.idle.engaged) 
	else
		equip(sets.idle.normal)
	end
end

function status_change(new,old)
	if new == "Engaged" then
		equip(sets.idle.engaged)
	else
		idle()
	end
end

function precast(spell)
	if spell.type == "BlueMagic" or spell.type == "BlackMagic" or spell.type == "WhiteMagic" or spell.type == "Ninjutsu" then 
		equip(sets.precast.fastcast)
	elseif spell.type == "WeaponSkill" then 
		equip(sets.ws.weapons)
	elseif spell.type == "JobAbility" then
		equip(sets.ja.jobability)
	else
		idle()
	end
end

function midcast(spell)
	if spell.type == "BlueMagic" or spell.type == "BlackMagic" or spell.type == "WhiteMagic" then
		equip(sets.midcast.spell)
	elseif spell.type == "WeaponSkill" then 
		equip(sets.ws.weapons)	
	elseif spell.type == "JobAbility" then
		equip(sets.ja.jobability)
	else
		idle()
	end
end

function aftercast(spell)
		idle()
end


