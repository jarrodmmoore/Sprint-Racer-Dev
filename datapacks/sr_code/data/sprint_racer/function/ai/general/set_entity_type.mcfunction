#zombies by default, unless credits...
execute unless entity @e[tag=cheats,type=armor_stand,tag=45a] run scoreboard players set @e[tag=random,type=armor_stand,scores={rNumber=1..9}] aiEntity 1
execute if entity @e[tag=cheats,type=armor_stand,tag=45a] run function sprint_racer:ai/general/set_entity_type_credits

#cheats
execute if entity @e[tag=cheats,type=armor_stand,tag=17a] run scoreboard players set @e[tag=random,type=armor_stand,scores={rNumber=1..9}] aiEntity 2
execute if entity @e[tag=cheats,type=armor_stand,tag=18a] run scoreboard players set @e[tag=random,type=armor_stand,scores={rNumber=1..9}] aiEntity 3
execute if entity @e[tag=cheats,type=armor_stand,tag=42a] run scoreboard players set @e[tag=random,type=armor_stand,scores={rNumber=1..9}] aiEntity 6
execute if entity @e[tag=cheats,type=armor_stand,tag=44a] run scoreboard players set @e[tag=random,type=armor_stand,scores={rNumber=1..9}] aiEntity 5

#wither boss
execute if entity @e[tag=cheats,type=armor_stand,tag=19a] run scoreboard players set @e[tag=random,type=armor_stand,scores={rNumber=1..9}] aiEntity 4

#random
execute if entity @e[tag=cheats,type=armor_stand,tag=43a] run function sprint_racer:cheats/random_ai_entities


#DEBUG, forces a particular entity
#scoreboard players set @e[tag=random,type=armor_stand,scores={rNumber=1..9}] aiEntity 13