send_command ('bind numpad9 gs l THF.lua')
send_command ('bind numpad8 gs l THFacc.lua')
send_command ('bind numpad7 gs l THFdef.lua')


send_command ('bind numpad1 input /mount "Crawler"')
send_command ('bind numpad2 input /dismount')
--send_command ('bind numpad1 input /equip ring2 "Warp Ring"; /echo Warping; wait 11; input /item "Warp Ring" <me>;')
--send_command ('bind numpad3 input /equip ring2 "Dim. Ring (holla)"; /echo Warping; wait 11; input /item "Dim. Ring (holla)" <me>;')

function get_sets()
  
    sets.idle = {}                  -- Leave this empty.
    sets.precast = {}               -- leave this empty    
    sets.midcast = {}               -- leave this empty    
    sets.aftercast = {}             -- leave this empty
	sets.ws = {}					-- Leave this empty
	sets.ja = {}
 
    sets.idle.normal = {
		ammo="Staunch Tathlum +1",
		head="Turms Cap +1",
		body="Nyame Mail",
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
	
	sets.idle.attack = {
		ammo="Per. Lucky Egg",
		head="Turms Cap +1",
		body="Nyame Mail",
		hands={ name="Plun. Armlets +1", augments={'Enhances "Perfect Dodge" effect',}},
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck={ name="Loricate Torque +1", augments={'Path: A',}},
		waist="Dynamic Belt",
		left_ear="Crep. Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		left_ring="Defending Ring",
		right_ring="Moonlight Ring",
		back="Moonbeam Cape",
	}
	
    sets.precast.fastcast = {
	    head={ name="Herculean Helm", augments={'Attack+5','"Triple Atk."+3','Accuracy+6',}},
		body={ name="Taeon Tabard", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		feet={ name="Taeon Boots", augments={'Pet: Accuracy+23 Pet: Rng. Acc.+23','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		neck="Deviant Necklace",
		left_ring="Varar Ring +1",
		right_ring="Chirich Ring",
	}
	
	sets.precast.waltz = {
	    ammo="Yamarang",
		head="Mummu Bonnet +1",
		body="Mummu Jacket +1",
		hands="Turms Mittens +1",
		legs="Mummu Kecks +1",
		feet="Turms Leggings +1",
		neck="Sanctity Necklace",
		waist="Dynamic Belt",
		left_ear="Crep. Earring",
		left_ring="Varar Ring +1",
		right_ring="Chirich Ring",
		back="Moonbeam Cape",
	}
	
    sets.midcast.enmity = {
	}
	
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
end


function idle()
	if buffactive["terror"] or buffactive["petrification"] or buffactive["stun"] then
    equip(sets.idle.normal)
	elseif player.status == "Engaged" then 
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
	if spell.type == "BlueMagic" or spell.type == "BlackMagic" or spell.type == "WhiteMagic" then 
		equip(sets.precast.fastcast)
	elseif spell.type == "WeaponSkill" or spell.type == "JobAbility" then 
		midcast(spell)
	else
		equip(sets.midcast.enmity)
	end
end

function midcast(spell)
	if spell.type == "WeaponSkill" then 
		equip(sets.ws.weapons)	
	elseif spell.type == "JobAbility" then
		equip(sets.ja.waltz)
	else
		equip(sets.midcast.enmity)
	end
end

function aftercast(spell)
	if buffactive["terror"] or buffactive["petrification"] or buffactive["stun"] then
		equip(sets.idle.normal)
	else
		idle()
	end
end

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
