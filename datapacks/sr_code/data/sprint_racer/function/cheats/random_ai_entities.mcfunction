#can't use cheat entities unless we've enabled them
execute unless entity @e[tag=cheats,type=armor_stand,tag=17a] run tag @e[tag=random,type=armor_stand,scores={rNumber=2}] add aiEntBan
execute unless entity @e[tag=cheats,type=armor_stand,tag=18a] run tag @e[tag=random,type=armor_stand,scores={rNumber=3}] add aiEntBan
execute unless entity @e[tag=cheats,type=armor_stand,tag=19a] run tag @e[tag=random,type=armor_stand,scores={rNumber=4}] add aiEntBan
execute unless entity @e[tag=cheats,type=armor_stand,tag=42a] run tag @e[tag=random,type=armor_stand,scores={rNumber=6}] add aiEntBan
execute unless entity @e[tag=cheats,type=armor_stand,tag=44a] run tag @e[tag=random,type=armor_stand,scores={rNumber=5}] add aiEntBan

#now choose a unique entity for each AI
execute as @e[tag=random,type=armor_stand,scores={rNumber=1..9}] run function sprint_racer:cheats/random_ai_entities_pick

#clear all bans for next time
tag @e[tag=random,type=armor_stand,tag=aiEntBan] remove aiEntBan