tag @s add getStruck
execute unless entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,tag=11a] at @s if entity @s[nbt={OnGround:0b}] unless block ~ ~ ~ water run tag @s remove getStruck

execute if entity @s[tag=getStruck] run effect give @a minecraft:night_vision 1 100 true
execute if entity @s[tag=getStruck] run execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder master @s ~ 100000 ~ 100000 1

execute if entity @s[tag=getStruck] run scoreboard players operation @s attackerID = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] attackerID
execute if entity @s[tag=getStruck] run scoreboard players set @s attackTime 100

execute as @e[tag=getStruck] at @s run summon minecraft:lightning_bolt ~ ~ ~
effect give @s[tag=getStruck] minecraft:nausea 7 10 true
effect give @s[tag=getStruck] minecraft:slowness 7 1 true
scoreboard players set @e[tag=getStruck] lightningSafe 250
scoreboard players set @e[tag=getStruck] electrocute 0
scoreboard players set @e[tag=getStruck] moveSpeed 0
scoreboard players set @e[tag=getStruck] rateAccel 10
scoreboard players set @e[tag=getStruck] rateDecel 300
tag @e[tag=getStruck] remove getStruck

tag @s remove getStruck