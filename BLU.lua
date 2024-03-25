--  ____                                          _ _     
-- |  _ \                                        | ( )    
-- | |_) |_ __ ___   __ _ _   _ _   _ _ __   __ _| |/ ___ 
-- |  _ <| '__/ _ \ / _` | | | | | | | '_ \ / _` | | / __|
-- | |_) | | | (_) | (_| | |_| | |_| | |_) | (_| | | \__ \
-- |____/|_|  \___/ \__, |\__,_|\__, | .__/ \__,_|_| |___/
--                   __/ |       __/ | |                  
--                  |___/       |___/|_|    
--BLU LUA

send_command ('bind numpad9 gs l BLU.lua')
send_command ('bind numpad8 gs l BLUd.lua')
send_command ('bind numpad7 gs l BLUth.lua')
--send_command ('bind f12 input //fillmode')

send_command ('bind numpad6 input //aset set melee')
send_command ('bind numpad5 input //aset set acc')
send_command ('bind numpad4 input //aset set aoe')
--send_command ('bind numpad3 input //aset set treasure')

send_command ('bind numpad1 input /mount "Crawler"')
send_command ('bind numpad2 input /dismount')

send_command ('bind numpad3 input //aset set tank')
--send_command ('bind numpad1 input /equip ring2 "Warp Ring"; /echo Warping; wait 11; input /item "Warp Ring" <me>;')
--send_command ('bind numpad3 input /equip ring2 "Dim. Ring (holla)"; /echo Warping; wait 11; input /item "Dim. Ring (holla)" <me>;')

function get_sets()
  
    sets.idle = {}                  -- Leave this empty.
    sets.precast = {}               -- leave this empty    
    sets.midcast = {}               -- leave this empty    
    sets.aftercast = {}             -- leave this empty
	sets.ws = {}					-- Leave this empty
 
    sets.idle.normal = {
		ammo="Staunch Tathlum +1",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body="Hashishin Mintan +2",
		hands="Hashi. Bazu. +2",
		legs={ name="Carmine Cuisses +1", augments={'HP+80','STR+12','INT+12',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Sibyl Scarf",
		waist="Carrier's Sash",
		left_ear="Genmei Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Shadow Ring",
		right_ring="Defending Ring",
		back="Shadow Mantle",
	}
	sets.idle.attack = {
		ammo="Aurgelmir Orb",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Mirage Stole +1",
		waist="Reiki Yotai",
		left_ear="Suppanomimi",
		right_ear={ name="Hashi. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+13','Mag. Acc.+13','"Dbl.Atk."+4',}},
		left_ring="Epona's Ring",
		right_ring="Defending Ring",
		back={ name="Rosmerta's Cape", augments={'Accuracy+20 Attack+20','Accuracy+5','"Store TP"+10',}},
	}
    sets.precast.fastcast = {
		ammo="Amar Cluster",
		head={ name="Herculean Helm", augments={'"Fast Cast"+5','"Mag.Atk.Bns."+14',}},
		body={ name="Adhemar Jacket +1", augments={'HP+105','"Fast Cast"+10','Magic dmg. taken -4',}},
		hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
		legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+8','"Fast Cast"+6','INT+4',}},
		feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+8','"Fast Cast"+6','INT+9',}},
		neck={ name="Bathy Choker +1", augments={'Path: A',}},
		waist="Witful Belt",
		left_ring="Kishar Ring",
		right_ring="Rahab Ring",
		back={ name="Rosmerta's Cape", augments={'AGI+20','Eva.+20 /Mag. Eva.+20','Evasion+10','"Fast Cast"+10','Evasion+15',}},
	}
	
	sets.precast.bluemagic = set_combine(sets.precast.fastcast,{ 
		body="Hashishin Mintan +2",
	})
	
	    sets.precast.diffusion = {
		feet="Luhlaza Charuqs +1",

	}
    sets.midcast.spelldamage = {
		ammo="Staunch Tathlum +1",
		head="Hashishin Kavuk +2",
		body="Hashishin Mintan +2",
		hands="Hashi. Bazu. +2",
		legs="Hashishin Tayt +2",
		feet="Hashi. Basmak +2",
		neck="Sibyl Scarf",
		waist="Skrymir Cord",
		left_ear="Friomisi Earring",
		right_ear="Hecate's Earring",
		left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		right_ring="Shiva Ring +1",
		back="Moonbeam Cape",
		}
	sets.midcast.phalanx = {
		ammo="Staunch Tathlum +1",
		head="Malignance Chapeau",
		body={ name="Taeon Tabard", augments={'Phalanx +3',}},
		hands={ name="Taeon Gloves", augments={'Phalanx +3',}},
		legs={ name="Taeon Tights", augments={'Phalanx +3',}},
		feet={ name="Taeon Boots", augments={'Phalanx +3',}},
		neck={ name="Loricate Torque +1", augments={'Path: A',}},
		waist="Aswang Sash",
		left_ear="Magnetic Earring",
		right_ear="Halasz Earring",
		left_ring="Defending Ring",
		right_ring="Evanescence Ring",
		back="Moonbeam Cape",
	}
	sets.ws.weapons = {
		ammo="Oshasha's Treatise",
		head="Hashishin Kavuk +2",
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Rep. Plat. Medal",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		left_ring="Sroda Ring",
		right_ring="Fickblix's Ring",
		back={ name="Rosmerta's Cape", augments={'Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}
end


function idle()
	if player.status == "Engaged" then 
		equip(sets.idle.attack) 
	else
		equip(sets.idle.normal)
	end
end

function status_change(new,old)
	if new == "Engaged" then
		equip(sets.idle.attack)
	else
		idle()
	end
end

function precast(spell)
	if spell.name == "Diffusion" then
		equip(sets.precast.diffusion)
	elseif spell.type == "BlueMagic" then
		equip(sets.precast.bluemagic)
	elseif spell.type == "BlackMagic" or spell.type == "WhiteMagic" or spell.type == "Ninjutsu" then 
		equip(sets.precast.fastcast)
	elseif spell.type == "WeaponSkill" then 
		equip(sets.ws.weapons)	
	else
		equip(sets.midcast.enmity)
	end
end

function midcast(spell)
	if spell.english == "Phalanx" then
		equip(sets.midcast.phalanx)
	else
		equip(sets.midcast.spelldamage)
	end
end

function aftercast(spell)
	idle()
end

--[[
function buff_change(name,gain)
	if name == "terror" and gain == "true" then
		equip(sets.idle.normal)
		end
	if name == "stun" and gain == "true" then
		equip(sets.idle.normal)
		end
	if name	== "petrification" and gain == "true" then
		equip(sets.idle.normal)
		end
end
]]