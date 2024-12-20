tag @e[tag=AIdaddy,x=1548,y=155,z=406,distance=..1,type=armor_stand] add aiDisable

execute if entity @s[tag=ai1] run scoreboard objectives remove validAI1
execute if entity @s[tag=ai2] run scoreboard objectives remove validAI2
execute if entity @s[tag=ai3] run scoreboard objectives remove validAI3
execute if entity @s[tag=ai4] run scoreboard objectives remove validAI4
execute if entity @s[tag=ai5] run scoreboard objectives remove validAI5
execute if entity @s[tag=ai6] run scoreboard objectives remove validAI6
execute if entity @s[tag=ai7] run scoreboard objectives remove validAI7
execute if entity @s[tag=ai8] run scoreboard objectives remove validAI8
execute if entity @s[tag=ai9] run scoreboard objectives remove validAI9

tag @e[tag=latestFinish] remove latestFinish
tag @e[tag=AIdaddy,x=1548,y=155,z=406,distance=..1,type=armor_stand] add latestFinish

scoreboard players set @a[team=!spectator,scores={elytraTimer=..0,actionbarState=..5}] actionbarState 5
scoreboard players set @a[team=!spectator,scores={elytraTimer=..0,actionbarState=..5}] actionbarState2 35

execute as @a at @s run playsound minecraft:entity.firework_rocket.blast master @s ~ ~ ~ 1 1.1

scoreboard players operation @e[tag=AIdaddy,x=1548,y=155,z=406,distance=..1,type=armor_stand] finishPos = @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] finishPos
execute if entity @s[tag=sa_villager] if entity @e[tag=AIdaddy,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={finishPos=1}] run function sprint_racer_language:_dlc_3/gameplay/villager_ai/chat_win
execute if entity @s[tag=sa_villager] if entity @e[tag=AIdaddy,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={finishPos=2..}] run function sprint_racer_language:_dlc_3/gameplay/villager_ai/chat_finish
scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] finishPos 1

#get assigned a "addPoints" value
#players get a minimum of 1 point for finishing
scoreboard players set @e[tag=AIdaddy,x=1548,y=155,z=406,distance=..1,type=armor_stand] addPoints 0
scoreboard players operation @e[tag=AIdaddy,x=1548,y=155,z=406,distance=..1,type=armor_stand] addPoints = @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] addPoints
scoreboard players set @e[tag=AIdaddy,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={addPoints=..0}] addPoints 1
scoreboard players remove @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] addPoints 1

#CUT due to imbalance
#bonuses are awarded for 1st and 2nd
#scoreboard players add @e[tag=AIdaddy,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={finishPos=1}] addPoints 2
#scoreboard players add @e[tag=AIdaddy,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={finishPos=2}] addPoints 1

#with option enabled...
#race will end 75 seconds after AI finish
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=allowAIfinish] unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={timeRemaining=..1500}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] timeRemaining 1500

execute as @e[tag=AIdaddy,x=1548,y=155,z=406,distance=..1,type=armor_stand] run function sprint_racer_language:gameplay/race_finish_text_ai_spectator/_index
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=teamplay] as @e[tag=AIdaddy,x=1548,y=155,z=406,distance=..1,type=armor_stand] run function sprint_racer_language:gameplay/position_display/ai_sidebar_finish_color