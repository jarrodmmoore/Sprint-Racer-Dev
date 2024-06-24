tag @s add e_self
tag @e[limit=1,sort=random,tag=activeplayer,tag=!e_self] add looktarget
execute if entity @e[tag=looktarget] run function sprint_racer:ai/general/item_logic/11/use
tag @s remove e_self