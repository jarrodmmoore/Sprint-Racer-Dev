tag @s add stealer

#endermen cannot steal from their user
#endermen won't steal from invisible players


#PLAYERS
#try and nab elite items first
tag @e[limit=1,sort=random,tag=playing,tag=!stealer,tag=playerOrange,scores={invisibility=..0},gamemode=!spectator,nbt={SelectedItem:{components:{"minecraft:custom_data":{item:1b,eliteitem:1b}}}}] add stealTarget1
execute if entity @e[tag=stealTarget1,tag=playing] unless entity @e[tag=stealTarget1,tag=playing,scores={enderSteal=..999}] run function sprint_racer:items/item_tick/steal_item/elite/_index

#otherwise go for normal items
execute unless entity @e[tag=stealTarget1] run tag @e[limit=1,sort=random,tag=playing,tag=playerOrange,tag=!stealer,scores={invisibility=..0},gamemode=!spectator,nbt={SelectedItem:{components:{"minecraft:custom_data":{item:1b,normalitem:1b}}}}] add stealTarget2
execute if entity @e[tag=stealTarget2,tag=playing] unless entity @e[tag=stealTarget2,tag=playing,scores={enderSteal=..999}] run function sprint_racer:items/item_tick/steal_item/normal/_index


execute if entity @e[tag=ai] unless entity @e[tag=stealTarget1] unless entity @e[tag=stealTarget2] run function sprint_racer:items/item_tick/enderman_tracking/phase2_ai_teams_cyan


#note, players may not be accosted by more than one enderman at a time

tag @s remove stealer
tag @e[tag=stealTarget1] remove stealTarget1
tag @e[tag=stealTarget2] remove stealTarget2