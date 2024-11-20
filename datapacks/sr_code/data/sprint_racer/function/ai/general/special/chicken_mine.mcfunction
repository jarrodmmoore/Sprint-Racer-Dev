execute at @s run particle smoke ~ ~1.4 ~ 0 0 0 0.03 1

execute if block ~ ~-.1 ~ water run tag @s add chicken_water

#fast fall if above target
execute store result score @s math run data get entity @s Motion[1] 100000
execute if entity @s[tag=!inWater,nbt={OnGround:0b}] if entity @s[scores={aiStuckTime2=6..,math=-20000..-1}] run function sprint_racer:ai/general/fast_fall

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=160..}] at @s if entity @e[tag=activeplayer,distance=..2,tag=!sa_chickenmine,scores={invisibility=..0}] run tag @s add finna_explode
execute unless entity @e[tag=cminezombie,distance=..2,type=zombified_piglin] run scoreboard players add @s aiSpecial 1
execute if entity @e[tag=cminezombie,distance=..2,type=zombified_piglin] run scoreboard players set @s aiSpecial 0
tag @s[tag=!chicken_water,scores={aiSpecial=20..}] add finna_explode

tag @s[tag=finna_explode,scores={aiLifetime=..100}] remove finna_explode

execute if entity @s[tag=finna_explode] run function sprint_racer:explode
execute if entity @s[tag=finna_explode] run function sprint_racer:ai/general/die