scoreboard players add @s hitsound 1
execute if entity @e[limit=1,tag=w,type=armor_stand,tag=realms] run scoreboard players set @s[scores={hitsound=7..}] hitsound -1
scoreboard players set @s[scores={hitsound=8..}] hitsound -1

scoreboard players set @s afkTime 0

execute if entity @s[scores={hitsound=0}] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1 1.7
execute if entity @s[scores={hitsound=1}] at @s run playsound minecraft:sr_hitsounds/hit1 master @s ~ ~ ~ 1 1.7
execute if entity @s[scores={hitsound=2}] at @s run playsound minecraft:sr_hitsounds/hit2 master @s ~ ~ ~ 1 1.7
execute if entity @s[scores={hitsound=3}] at @s run playsound minecraft:sr_hitsounds/hit3 master @s ~ ~ ~ 1 1.7
execute if entity @s[scores={hitsound=4}] at @s run playsound minecraft:sr_hitsounds/hit4 master @s ~ ~ ~ 1 1.7
execute if entity @s[scores={hitsound=5}] at @s run playsound minecraft:sr_hitsounds/hit5 master @s ~ ~ ~ 1 1.7
execute if entity @s[scores={hitsound=6}] at @s run playsound minecraft:sr_hitsounds/hit6a master @s ~ ~ ~ 1 1.7
execute if entity @s[scores={hitsound=7}] at @s run playsound minecraft:sr_hitsounds/hit7 master @s ~ ~ ~ 1 1.7