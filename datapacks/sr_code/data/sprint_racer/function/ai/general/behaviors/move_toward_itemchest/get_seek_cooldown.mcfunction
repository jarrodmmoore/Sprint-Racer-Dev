#set the amount of time until we try to open another chest (roughly 3 seconds)
scoreboard players set @s aiActMCooldown 32

#time to next attempt will be set very low if all the following conditions are met:
#-playing battle mode
#-no instant chest respawn
#-we successfully found a chest
#-we're "normal" skill level or higher
execute if score global gameState matches 3 unless score @s itemCooldown matches ..0 unless entity @e[type=armor_stand,tag=35a,tag=cheats,x=1550,y=148,z=406,distance=..1] run scoreboard players set @s[scores={aiSkill=2..}] aiActMCooldown 3