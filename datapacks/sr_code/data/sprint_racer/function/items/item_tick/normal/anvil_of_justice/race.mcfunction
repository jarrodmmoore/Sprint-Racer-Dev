tag @s add self

#target player in the lead, unless that player is the user
execute as @e[limit=1,sort=nearest,tag=!self,tag=activeplayer,scores={itemPosition=1}] unless entity @s[scores={anvil=0..}] unless entity @s[scores={invisibility=1..}] run tag @s add getJustice

#if not, try 2nd
execute unless entity @e[tag=getJustice] as @e[limit=1,sort=nearest,tag=!self,tag=activeplayer,scores={itemPosition=2}] unless entity @s[scores={anvil=0..}] unless entity @s[scores={invisibility=1..}] run tag @s add getJustice

#if not, try 3rd
execute unless entity @e[tag=getJustice] as @e[limit=1,sort=nearest,tag=!self,tag=activeplayer,scores={itemPosition=3}] unless entity @s[scores={anvil=0..}] unless entity @s[scores={invisibility=1..}] run tag @s add getJustice

#if that failed, go for a random player that isn't the user
execute unless entity @e[tag=getJustice] run tag @e[limit=1,sort=random,tag=!self,tag=activeplayer] add getJustice

#if all else fails, target self
execute unless entity @e[tag=getJustice] run tag @s add getJustice

tag @s remove self

#now... do a thing!
function sprint_racer:items/item_tick/normal/anvil_of_justice/anvil_execute