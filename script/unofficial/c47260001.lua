--トラフィックゴースト
local s,id=GetID()
function s.initial_effect(c)
	--link summon
	c:EnableReviveLimit()
	Link.AddProcedure(c,aux.FilterBoolFunctionEx(Card.IsSetCard,CARD_BLUEEYES_W_DRAGON),3)


	--link summon
	-- c:EnableReviveLimit()
	-- Link.AddProcedure(c,nil,3,3)
end
