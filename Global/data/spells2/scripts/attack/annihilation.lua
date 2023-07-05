local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_WEAPONTYPE)
combat:setParameter(COMBAT_PARAM_BLOCKARMOR, 1)
combat:setParameter(COMBAT_PARAM_USECHARGES, 1)

function onGetFormulaValues(player, skill, attack, factor)
	local skillTotal = skill * attack
	local levelTotal = player:getLevel() / 5
	return -(((skillTotal * 0.17) + 13) + (levelTotal)), -(((skillTotal * 0.20) + 34) + (levelTotal))
end

combat:setCallback(CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")
local function executeAttack(cid, variant, i, j)
    local player = Player(cid)
    if not player then
        return
    end
    if i >= j then
        return
    end
    addEvent(executeAttack, 200, cid, variant, i + 1, j)
    return combat:execute(player, variant)
end

local storage = 123456
local exhaust = 300

function resetStorage(cid)
    local player = Player(cid)
    if player then
        player:setStorageValue(storage, -1)
    end
end

function onCastSpell(creature, variant, isHotkey)
    -- is the creature who is using this spell a player, always good to check
    if creature:isPlayer() then
        -- have they used this spell yet?
        if creature:getStorageValue(storage) < 0 then
            -- when they do lets set the storage value so they can't use it again
            creature:setStorageValue(storage, 1)
            -- make preperations to reset the storage value
            addEvent(resetStorage, exhaust * 100, creature:getId())
            -- execute the spell
            return executeAttack(creature:getId(), variant, 0, 1)
        else
            -- if they have used the spell warn them they need to wait to use it again
            creature:sendCancelMessage("This spell is still cooling down.")
        end
    end
    -- if the nested else executes or creature is not a player then the spell will return false and not perform any actions
    return false
end