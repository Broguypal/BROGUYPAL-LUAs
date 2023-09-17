send_command ('bind numpad9 gs l SMN.lua')

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
 
    sets.idle.normal = {
		ammo="Bibiki Seashell",
		body="Vermillion Cloak",
		hands="Carbuncle Mitts",
		legs="Evoker's Spats",
		feet="Austere Sabots",
		neck="Smn. Torque",
		waist="Adept's Rope",
		left_ear="Smn. Earring",
		right_ear="Aura Earring +1",
		left_ring="Conjurer's Ring",
		right_ring="Electrum Ring",
		back="Skulker's Cape",
	}

    sets.precast.fastcast = {
	}
	
    sets.midcast.light = {
	    main="Light Staff",
	}
	
	sets.midcast.dark = {
	    main="Dark Staff",
	}
	
    sets.midcast.wind = {
	    main="Wind Staff",
	}
	
    sets.midcast.earth = {
	    main="Earth Staff",
	}
	
    sets.midcast.thunder = {
	    main="Thunder Staff",
	}
	
    sets.midcast.water = {
	    main="Water Staff",
	}
    sets.midcast.fire = {
	    main="Fire Staff",
	}
	
    sets.midcast.ice = {
	    main="Ice Staff",
	}
	
	sets.ws.weapons = {
	}
end


function idle()
	if buffactive["Terror"] or buffactive["Petrification"] or buffactive["Stun"] then
    equip(sets.idle.normal)
	else
	equip(sets.idle.normal)
	end
end

function precast(spell)
	if buffactive["Terror"] or buffactive["Petrification"] or buffactive["Stun"] then
		equip(sets.idle.normal)
	elseif spell.type == "BlueMagic" or spell.type == "BlackMagic" or spell.type == "WhiteMagic" or spell.type == "SummoningMagic" then 
		equip(sets.precast.fastcast)
	elseif spell.type == "WeaponSkill" then 
		equip(sets.ws.weapons)	
	else
		idle()
	end
end

function midcast(spell)
	if spell.english == "Carbuncle" or spell.english == "Cait Sith" or spell.english == "Alexander" or spell.english == "Light Spirit" then
		equip(sets.midcast.light)
	elseif spell.english == "Fenrir" or spell.english == "Diabolos" or spell.english == "Atomos" or spell.english == "Odin" or spell.english == "Dark Spirit" then
		equip(sets.midcast.dark)
	elseif spell.english == "Ifrit" or spell.english == "Fire Spirit" then
		equip(sets.midcast.fire)
	elseif spell.english == "Shiva" or spell.english == "Ice Spirit" then
		equip(sets.midcast.ice)
	elseif spell.english == "Garuda" or spell.english == "Wind Spirit" or spell.english == "Siren" then
		equip(sets.midcast.wind)
	elseif spell.english == "Leviathan" or spell.english == "Water Spirit" then
		equip(sets.midcast.water)
	elseif spell.english == "Ramuh" or spell.english == "Thunder Spirit" then
		equip(sets.midcast.thunder)
	elseif spell.english == "Titan" or spell.english == "Earth Spirit" then
		equip(sets.midcast.earth)
	else
		idle()
	end
end

function aftercast(spell)
	idle()
end

function buff_change(name,gain)
	if name == "Terror" and gain == "true" then
		equip(sets.idle.normal)
		end
	if name == "Stun" and gain == "true" then
		equip(sets.idle.normal)
		end
	if name	== "Petrification" and gain == "true" then
		equip(sets.idle.normal)
		end
end
