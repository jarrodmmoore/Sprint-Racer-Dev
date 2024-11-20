tag @s remove gotoFinish

#test if we're ready to go for the finish line or not
scoreboard players set @s nCheck 3
scoreboard players operation @s nCheck = @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] check
scoreboard players operation @s nCheck -= @s check
tag @s[scores={nCheck=..0}] add gotoFinish
scoreboard players set @s nCheck 0

execute if entity @s[tag=!gotoFinish,scores={check=0}] run tag @e[limit=1,sort=nearest,tag=node,tag=checkpoint,scores={check=1}] add nextcp
execute if entity @s[tag=!gotoFinish,scores={check=1}] run tag @e[limit=1,sort=nearest,tag=node,tag=checkpoint,scores={check=2}] add nextcp
execute if entity @s[tag=!gotoFinish,scores={check=2}] run tag @e[limit=1,sort=nearest,tag=node,tag=checkpoint,scores={check=3}] add nextcp
execute if entity @s[tag=!gotoFinish,scores={check=3}] run tag @e[limit=1,sort=nearest,tag=node,tag=checkpoint,scores={check=4}] add nextcp
execute if entity @s[tag=!gotoFinish,scores={check=4}] run tag @e[limit=1,sort=nearest,tag=node,tag=checkpoint,scores={check=5}] add nextcp

execute if entity @s[tag=!gotoFinish,scores={check=5}] run tag @e[limit=1,sort=nearest,tag=node,tag=checkpoint,scores={check=6}] add nextcp
execute if entity @s[tag=!gotoFinish,scores={check=6}] run tag @e[limit=1,sort=nearest,tag=node,tag=checkpoint,scores={check=7}] add nextcp
execute if entity @s[tag=!gotoFinish,scores={check=7}] run tag @e[limit=1,sort=nearest,tag=node,tag=checkpoint,scores={check=8}] add nextcp
execute if entity @s[tag=!gotoFinish,scores={check=8}] run tag @e[limit=1,sort=nearest,tag=node,tag=checkpoint,scores={check=9}] add nextcp
execute if entity @s[tag=!gotoFinish,scores={check=9}] run tag @e[limit=1,sort=nearest,tag=node,tag=checkpoint,scores={check=10}] add nextcp

execute if entity @s[tag=!gotoFinish,scores={check=10}] run tag @e[limit=1,sort=nearest,tag=node,tag=checkpoint,scores={check=11}] add nextcp
execute if entity @s[tag=!gotoFinish,scores={check=11}] run tag @e[limit=1,sort=nearest,tag=node,tag=checkpoint,scores={check=12}] add nextcp
execute if entity @s[tag=!gotoFinish,scores={check=12}] run tag @e[limit=1,sort=nearest,tag=node,tag=checkpoint,scores={check=13}] add nextcp
execute if entity @s[tag=!gotoFinish,scores={check=13}] run tag @e[limit=1,sort=nearest,tag=node,tag=checkpoint,scores={check=14}] add nextcp
execute if entity @s[tag=!gotoFinish,scores={check=14}] run tag @e[limit=1,sort=nearest,tag=node,tag=checkpoint,scores={check=15}] add nextcp

execute if entity @s[tag=!gotoFinish,scores={check=15}] run tag @e[limit=1,sort=nearest,tag=node,tag=checkpoint,scores={check=16}] add nextcp
execute if entity @s[tag=!gotoFinish,scores={check=16}] run tag @e[limit=1,sort=nearest,tag=node,tag=checkpoint,scores={check=17}] add nextcp
execute if entity @s[tag=!gotoFinish,scores={check=17}] run tag @e[limit=1,sort=nearest,tag=node,tag=checkpoint,scores={check=18}] add nextcp
execute if entity @s[tag=!gotoFinish,scores={check=18}] run tag @e[limit=1,sort=nearest,tag=node,tag=checkpoint,scores={check=19}] add nextcp
execute if entity @s[tag=!gotoFinish,scores={check=19}] run tag @e[limit=1,sort=nearest,tag=node,tag=checkpoint,scores={check=20}] add nextcp

execute if entity @s[tag=!gotoFinish,scores={check=20}] run tag @e[limit=1,sort=nearest,tag=node,tag=checkpoint,scores={check=21}] add nextcp
execute if entity @s[tag=!gotoFinish,scores={check=21}] run tag @e[limit=1,sort=nearest,tag=node,tag=checkpoint,scores={check=22}] add nextcp
execute if entity @s[tag=!gotoFinish,scores={check=22}] run tag @e[limit=1,sort=nearest,tag=node,tag=checkpoint,scores={check=23}] add nextcp
execute if entity @s[tag=!gotoFinish,scores={check=23}] run tag @e[limit=1,sort=nearest,tag=node,tag=checkpoint,scores={check=24}] add nextcp
execute if entity @s[tag=!gotoFinish,scores={check=24}] run tag @e[limit=1,sort=nearest,tag=node,tag=checkpoint,scores={check=25}] add nextcp

execute if entity @s[tag=gotoFinish] run tag @e[limit=1,sort=nearest,tag=node,tag=finishline] add nextcp

tag @s remove gotoFinish