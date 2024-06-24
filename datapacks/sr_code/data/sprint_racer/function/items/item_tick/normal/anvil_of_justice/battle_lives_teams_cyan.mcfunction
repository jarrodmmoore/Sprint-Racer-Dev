tag @s add self

#battPosDisplay?

#get "score" for players and ai
#1 life = 100 points
#1 KO = 1 point
execute as @a[tag=playing,tag=!self] run scoreboard players operation @s value = @s playerLives
execute as @e[tag=ai,tag=!self] run scoreboard players operation @s value = @s playerLives
#scoreboard players set #100 value 100
execute as @e[tag=activeplayer,tag=!self] run scoreboard players operation @s value *= #100 value
execute as @e[tag=activeplayer,tag=!self] run scoreboard players operation @s value += @s KOs

#find highest score held by a player
scoreboard players set #highest value -9999999
execute as @e[tag=activeplayer,tag=playerOrange,tag=!finished,tag=!self,tag=!eliminated,scores={value=1..}] run function sprint_racer:items/item_tick/normal/anvil_of_justice/check_for_highest_score

#target random players with the lowest health we just found
execute as @e[tag=activeplayer,tag=playerOrange,sort=random,tag=!finished,tag=!self,tag=!eliminated,scores={value=1..}] if score @s value >= #highest value run function sprint_racer:items/item_tick/normal/anvil_of_justice/check_for_lowest_hp_go

#if all else fails, target self
execute unless entity @e[tag=getJustice] run tag @s add getJustice

tag @s remove self

#now... do a thing!
function sprint_racer:items/item_tick/normal/anvil_of_justice/anvil_execute