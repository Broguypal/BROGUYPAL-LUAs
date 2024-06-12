send_command ('bind numpad9 gs l DRK.lua')

send_command ('bind numpad1 input /mount "Golden Bomb"')
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
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs={ name="Carmine Cuisses +1", augments={'HP+80','STR+12','INT+12',}},
		feet="Nyame Sollerets",
		neck={ name="Abyssal Beads +1", augments={'Path: A',}},
		waist="Ioskeha Belt +1",
		left_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		right_ear="Brutal Earring",
		left_ring="Defending Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
	}
	
	sets.idle.attack = {
		ammo="Aurgelmir Orb",
		head="Sakpata's Helm",
		body="Sakpata's Plate",
		hands="Sakpata's Gauntlets",
		legs="Sakpata's Cuisses",
		feet="Nyame Sollerets",
		neck={ name="Abyssal Beads +1", augments={'Path: A',}},
		waist="Ioskeha Belt +1",
		left_ear="Crep. Earring",
		right_ear="Brutal Earring",
		left_ring="Petrov Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
		}
		
    sets.precast.fastcast = {
	    ammo="Ombre Tathlum +1",
		head={ name="Fall. Burgeonet +1", augments={'Enhances "Dark Seal" effect',}},
		left_ring="Lebeche Ring",
		right_ring="Prolix Ring",
		}
	
	sets.ja.void = {
		legs="Heathen's Flanchard +1"
		}
	
	sets.ja.weaponbash = {
		hands="Ig. Gauntlets +2",
		}
	
    sets.midcast.drain = {
		head={ name="Fall. Burgeonet +1", augments={'Enhances "Dark Seal" effect',}},
		body={ name="Carm. Sc. Mail +1", augments={'Attack+20','"Mag.Atk.Bns."+12','"Dbl.Atk."+4',}},
		hands={ name="Fall. Fin. Gaunt. +1", augments={'Enhances "Diabolic Eye" effect',}},
		legs={ name="Carmine Cuisses +1", augments={'HP+80','STR+12','INT+12',}},
		feet="Rat. Sollerets +1",
		neck="Sanctity Necklace",
		waist="Austerity Belt +1",
		right_ear="Hirudinea Earring",
		left_ring="Evanescence Ring",
		back={ name="Niht Mantle", augments={'Attack+7','Dark magic skill +2','"Drain" and "Aspir" potency +25',}},
		}
	
	sets.ws.armorbreak = {
	   ammo="Ombre Tathlum +1",
		head="Sakpata's Helm",
		body="Sakpata's Plate",
		hands="Sakpata's Gauntlets",
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		neck={ name="Abyssal Beads +1", augments={'Path: A',}},
		waist="Ioskeha Belt +1",
		left_ear="Crep. Earring",
		right_ear="Saviesa Pearl",
		left_ring="Stikini Ring +1",
		right_ring="Chirich Ring",
		back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
		}
			
	sets.ws.normal = {
	    ammo="Knobkierrie",
		head="Sakpata's Helm",
		body="Sakpata's Plate",
		hands="Sakpata's Gauntlets",
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Petrov Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
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
	if spell.type == "BlueMagic" or spell.type == "BlackMagic" or spell.type == "WhiteMagic" then 
		equip(sets.precast.fastcast)
	elseif spell.type == "WeaponSkill" or spell.type == "JobAbility" then 
		midcast(spell)
	else
		idle()
	end
end

function midcast(spell)
	if spell.english == "Drain" or spell.english == "Drain II" or spell.english == "Drain III" then
		equip(sets.midcast.drain)
	elseif spell.english == "Armor Break" then
		equip(sets.ws.armorbreak)
	elseif spell.english == "Nether Void" or spell.english == "Dark Seal" then
		equip(sets.ja.void)
	elseif spell.english == "Weapon Bash" then
		equip(sets.ja.weaponbash)
	elseif spell.english == "Steel Cyclone" or spell.english == "Keen Edge" or spell.english == "Fell Cleave" or spell.english == "Weapon Break" or spell.english == "Upheaval" or spell.english == "Sturmwind" or spell.english == "Iron Tempest" or spell.english == "Shield Break" then 
		equip(sets.ws.normal)
	else
		idle()
	end
end

function aftercast(spell)
	idle()
end

