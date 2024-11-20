execute if entity @s[tag=ai1] run tag @e[tag=AImaster,scores={rNumber=1}] add AIdaddy
execute if entity @s[tag=ai2] run tag @e[tag=AImaster,scores={rNumber=2}] add AIdaddy
execute if entity @s[tag=ai3] run tag @e[tag=AImaster,scores={rNumber=3}] add AIdaddy
execute if entity @s[tag=ai4] run tag @e[tag=AImaster,scores={rNumber=4}] add AIdaddy
execute if entity @s[tag=ai5] run tag @e[tag=AImaster,scores={rNumber=5}] add AIdaddy
execute if entity @s[tag=ai6] run tag @e[tag=AImaster,scores={rNumber=6}] add AIdaddy
execute if entity @s[tag=ai7] run tag @e[tag=AImaster,scores={rNumber=7}] add AIdaddy
execute if entity @s[tag=ai8] run tag @e[tag=AImaster,scores={rNumber=8}] add AIdaddy
execute if entity @s[tag=ai9] run tag @e[tag=AImaster,scores={rNumber=9}] add AIdaddy

tag @e[tag=AIdaddy] add aiDisable

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
tag @e[tag=AIdaddy] add latestFinish

scoreboard players set @a[scores={actionbarState=..5}] actionbarState 5
scoreboard players set @a[scores={actionbarState=..5}] actionbarState2 35

execute as @a at @s run playsound minecraft:entity.firework_rocket.blast master @s ~ ~ ~ 1 1.1

scoreboard players operation @e[tag=AIdaddy] finishPos = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] finishPos
scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] finishPos 1

#get assigned a "addPoints" value
#players get a minimum of 1 point for finishing
scoreboard players set @e[tag=AIdaddy] addPoints 0
scoreboard players operation @e[tag=AIdaddy] addPoints = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] addPoints
scoreboard players set @e[tag=AIdaddy,scores={addPoints=..0}] addPoints 1
scoreboard players remove @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] addPoints 1

#bonuses are awarded for 1st and 2nd
#scoreboard players add @e[tag=AIdaddy,scores={finishPos=1}] addPoints 2
#scoreboard players add @e[tag=AIdaddy,scores={finishPos=2}] addPoints 1

execute as @e[tag=AIdaddy] run function sprint_racer_language:gameplay/race_finish_text_ai_spectator/_index
execute as @e[tag=AIdaddy] run function sprint_racer_language:gameplay/position_display/ai_sidebar_finish_color




tag @e[tag=AIdaddy] remove AIdaddy