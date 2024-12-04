tag @s add aiDisable

execute if entity @s[scores={rNumber=1}] run scoreboard objectives remove validAI1
execute if entity @s[scores={rNumber=2}] run scoreboard objectives remove validAI2
execute if entity @s[scores={rNumber=3}] run scoreboard objectives remove validAI3
execute if entity @s[scores={rNumber=4}] run scoreboard objectives remove validAI4
execute if entity @s[scores={rNumber=5}] run scoreboard objectives remove validAI5
execute if entity @s[scores={rNumber=6}] run scoreboard objectives remove validAI6
execute if entity @s[scores={rNumber=7}] run scoreboard objectives remove validAI7
execute if entity @s[scores={rNumber=8}] run scoreboard objectives remove validAI8
execute if entity @s[scores={rNumber=9}] run scoreboard objectives remove validAI9

#tag @e[tag=latestFinish] remove latestFinish
#tag @s add latestFinish

scoreboard players operation @s finishPos = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] finishPos
scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] finishPos 1

#get assigned a "addPoints" value
#players get a minimum of 1 point for finishing
scoreboard players set @s addPoints 0
scoreboard players operation @s addPoints = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] addPoints
scoreboard players set @s[scores={addPoints=..0}] addPoints 1
scoreboard players remove @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] addPoints 1

#CUT due to imbalance
#bonuses are awarded for 1st and 2nd
#scoreboard players add @e[tag=AIdaddy,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={finishPos=1}] addPoints 2
#scoreboard players add @e[tag=AIdaddy,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={finishPos=2}] addPoints 1