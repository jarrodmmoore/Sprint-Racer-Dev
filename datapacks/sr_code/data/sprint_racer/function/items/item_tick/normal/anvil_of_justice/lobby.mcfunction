tag @s add self

#target random player
tag @a[limit=1,sort=random,tag=playing,tag=!afk] add getJustice

#if all else fails, target self
execute unless entity @e[tag=getJustice] run tag @s add getJustice

tag @s remove self

#now... do a thing!
function sprint_racer:items/item_tick/normal/anvil_of_justice/anvil_execute