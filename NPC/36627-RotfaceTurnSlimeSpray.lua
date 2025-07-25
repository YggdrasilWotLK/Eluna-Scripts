local SLIME_SPRAY = 69508

local function OnSpellCast(event, caster, spell, skipCheck)
    local target = spell:GetTarget()
    if not target then return end
	
	caster:SetReactState(0)
	
	caster:SetFacingToObject(target)
	caster:RegisterEvent(function(e, d, p, caster)
		caster:SetReactState(2)
	end, 5100 * 2) -- 2 as AzerothCore's RegisterEvent functionality halves the timer
	
end

RegisterSpellEvent(SLIME_SPRAY, 2, OnSpellCast)
