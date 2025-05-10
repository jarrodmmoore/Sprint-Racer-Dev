scoreboard players set @e[scores={randomCooldown=1..}] randomCooldown 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] roundNumber 1
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] roundNumber2 1
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] readyState 0
scoreboard players set global aiLevel 6
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=,scores={difficultyRamp=..0}] run scoreboard players set global aiLevel 10

#do we have a previous reputation with the AI? remember it now
execute if score @s aiLevel matches 0.. run scoreboard players operation global aiLevel = @s aiLevel
#cap at 12 upon first join
execute if score global aiLevel matches 13.. run scoreboard players set global aiLevel 12

scoreboard players set #seasideJoyrideTime value 1
function sprint_racer:game_logic/0/clear_points