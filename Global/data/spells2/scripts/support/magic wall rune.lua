local combat = Combat()
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)
combat:setParameter(COMBAT_PARAM_CREATEITEM, 1497)

function onCastSpell(creature, var, isHotkey)
	ret = doCombat(cid, combat, var)
	if ret then
		local mWall = getTileItemById(variantToPosition(var), 1497).uid
		doSetItemSpecialDescription(mWall, string.format("It was shot by: %s.", creature:getName(cid)))
	end	
	return ret
end