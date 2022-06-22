-- Blue-Eyes Endless-God Dragon
local s,id=GetID()
function s.initial_effect(c)
	-- link summon
	c:EnableReviveLimit()
	Link.AddProcedure(c,aux.FilterBoolFunctionEx(Card.IsSetCard,0xdd),3)

	--Special Summon
	local e4=Effect.CreateEffect(c)
	e1:SetDescription(aux.Stringid(id,1))
	e1:SetType(EFFECT_TYPE_TRIGGER_O+EFFECT_TYPE_SINGLE)
	e1:SetProperty(EFFECT_FLAG_DAMAGE_STEP)
	e1:SetCategory(CATEGORY_SPECIAL_SUMMON)
	e1:SetCode(EVENT_LEAVE_FIELD)
	e1:SetCondition(s.sumcon)
	e1:SetTarget(s.sumtg)
	e1:SetOperation(s.sumop)
	c:RegisterEffect(e4)
	
	
	--link summon
	-- c:EnableReviveLimit()
	-- Link.AddProcedure(c,nil,3,3)
end
