tag @s add self


#get effective hp for players and ai
execute as @a[tag=playing,tag=!self] run scoreboard players operation @s value = @s hp
execute as @e[tag=activeplayer,tag=ai] store result score @s value run data get entity @s Health
scoreboard players remove @e[tag=activeplayer,tag=ai] value 1000

#find lowest hp value held by a player
scoreboard players set #lowest value 9999999
execute as @e[tag=activeplayer,tag=!finished,tag=!self,tag=!eliminated,scores={value=1..}] run function sprint_racer:items/item_tick/normal/anvil_of_justice/check_for_lowest_hp

#target random players with the lowest health we just found
execute as @e[tag=activeplayer,sort=random,tag=!finished,tag=!self,tag=!eliminated,scores={value=1..}] if score @s value <= #lowest value run function sprint_racer:items/item_tick/normal/anvil_of_justice/check_for_lowest_hp_go

#if all else fails, target self
execute unless entity @e[tag=getJustice] run tag @s add getJustice

tag @s remove self

#now... do a thing!
function sprint_racer:items/item_tick/normal/anvil_of_justice/anvil_execute