tag @s add self

#target player in the lead, unless that player is the user
tag @e[limit=1,sort=nearest,tag=!self,tag=activeplayer,tag=playerOrange,scores={itemPosition=1}] add getJustice

#if not, try 2nd
execute unless entity @e[tag=getJustice] run tag @e[limit=1,sort=nearest,tag=!self,tag=activeplayer,tag=playerOrange,scores={itemPosition=2}] add getJustice

#if not, try 3rd
execute unless entity @e[tag=getJustice] run tag @e[limit=1,sort=nearest,tag=!self,tag=activeplayer,tag=playerOrange,scores={itemPosition=3}] add getJustice

#if that failed, go for a random player that isn't the user
execute unless entity @e[tag=getJustice] run tag @e[limit=1,sort=random,tag=!self,tag=activeplayer,tag=playerOrange] add getJustice

#if all else fails, target self
execute unless entity @e[tag=getJustice] run tag @s add getJustice

tag @s remove self

#now... do a thing!
function sprint_racer:items/item_tick/normal/anvil_of_justice/anvil_execute