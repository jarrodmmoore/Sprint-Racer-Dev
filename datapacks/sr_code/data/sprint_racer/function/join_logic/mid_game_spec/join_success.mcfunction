scoreboard players reset @s specJoin

#get a unique ID
function sprint_racer:give_ids2

#gamemode
gamemode adventure @s
effect give @s minecraft:resistance 100 1 true
team join player @s

#join a team if teams are enabled
execute if entity @e[tag=w,type=armor_stand,tag=teamplay] run function sprint_racer:teams/pick_team
execute if entity @e[tag=w,type=armor_stand,tag=teamplay,scores={forcePlayerTeam=1}] run function sprint_racer:teams/join_orange
execute if entity @e[tag=w,type=armor_stand,tag=teamplay,scores={forcePlayerTeam=2}] run function sprint_racer:teams/join_cyan

#get initialized
tag @s add playing
tag @s add readyup
tag @s remove forcespectate
tag @s remove afk
scoreboard players set @s afkTime 0

tag @s remove finished
tag @s remove eliminated

scoreboard players set @s playerLives 3
scoreboard players set @s KOs 0
scoreboard players set @s KOgoal 3

scoreboard players set @s actionbarState 1
scoreboard players set @s actionbarState2 0
scoreboard players set @s lap 1
scoreboard players set @s lapFake 1
scoreboard players set @s check 0
scoreboard players set @s lapAnimation 0
scoreboard players set @s subtitleDelay 0
scoreboard players set @s itemCooldown 0
scoreboard players set @s itemBlockState 0
scoreboard players reset @s death
scoreboard players set @s scriptMove 0
scoreboard players set @s lastTeleport 0
scoreboard players set @s navDirection 0
scoreboard players set @s navDirection2 0
scoreboard players set @s inputCooldown 0
scoreboard players set @s offCourseBuffer 0
scoreboard players set @s wrongWayBuffer 0

scoreboard players set @s resetCooldown 10

scoreboard players reset @s enderman
scoreboard players reset @s anvil
scoreboard players reset @s burn
scoreboard players reset @s blindtime

scoreboard players set @s bestSplit1 0
scoreboard players set @s bestSplit2 0
scoreboard players set @s bestSplit3 0
scoreboard players set @s bestSplit4 0
scoreboard players set @s bestSplit5 0
scoreboard players set @s bestSplit6 0
scoreboard players set @s bestSplit7 0
scoreboard players set @s bestSplit8 0
scoreboard players set @s bestSplit9 0
scoreboard players set @s bestSplit10 0
scoreboard players set @s bestSplit11 0
scoreboard players set @s bestSplit12 0
scoreboard players set @s bestSplit13 0
scoreboard players set @s bestSplit14 0
scoreboard players set @s bestSplit15 0
scoreboard players set @s bestSplit16 0
scoreboard players set @s bestSplit17 0
scoreboard players set @s bestSplit18 0
scoreboard players set @s bestSplit19 0
scoreboard players set @s bestSplit20 0
scoreboard players set @s bestSplit21 0
scoreboard players set @s bestSplit22 0
scoreboard players set @s bestSplit23 0
scoreboard players set @s bestSplit24 0
scoreboard players set @s bestSplit25 0
scoreboard players set @s bestTime 0
scoreboard players set @s bestTimeMin 0
scoreboard players set @s bestTimeSec 0
scoreboard players set @s bestTimeMsec 0

scoreboard players set @s currentSplit1 0
scoreboard players set @s currentSplit2 0
scoreboard players set @s currentSplit3 0
scoreboard players set @s currentSplit4 0
scoreboard players set @s currentSplit5 0
scoreboard players set @s currentSplit6 0
scoreboard players set @s currentSplit7 0
scoreboard players set @s currentSplit8 0
scoreboard players set @s currentSplit9 0
scoreboard players set @s currentSplit10 0
scoreboard players set @s currentSplit11 0
scoreboard players set @s currentSplit12 0
scoreboard players set @s currentSplit13 0
scoreboard players set @s currentSplit14 0
scoreboard players set @s currentSplit15 0
scoreboard players set @s currentSplit16 0
scoreboard players set @s currentSplit17 0
scoreboard players set @s currentSplit18 0
scoreboard players set @s currentSplit19 0
scoreboard players set @s currentSplit20 0
scoreboard players set @s currentSplit21 0
scoreboard players set @s currentSplit22 0
scoreboard players set @s currentSplit23 0
scoreboard players set @s currentSplit24 0
scoreboard players set @s currentSplit25 0

#respawn
execute if entity @e[tag=w,type=armor_stand,scores={gameState=1}] at @s run function sprint_racer:game_logic/1/respawn
execute unless entity @e[tag=w,type=armor_stand,scores={gameState=1}] at @s run function sprint_racer:game_logic/3/respawn


#shout it from the mountain tops
function sprint_racer_language:_dlc_2/join_messages/join_offer_accept

#no smuggles here
execute if entity @a[tag=playing,tag=noInventory] run tag @s add noInventory
clear @s

#no invisibility please... unless we say so
effect clear @s minecraft:invisibility

#give proper effects now...
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=..150}] run effect give @s minecraft:invisibility 15 0 true
execute if entity @e[tag=w,type=armor_stand,scores={gameTime=151..}] run effect clear @s