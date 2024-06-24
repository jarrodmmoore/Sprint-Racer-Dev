scoreboard players set @s hitstun 25
scoreboard players add @s rateDecel 50
scoreboard players remove @s moveSpeed 2500
summon armor_stand ~ ~2.2 ~ {CustomName:'{"text":"-5","color":"red","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore","floatup"]}
scoreboard players set @e[tag=setscore] lifespan 10
tag @e[tag=setscore] remove setscore

scoreboard players set #damage_done value 5
scoreboard players operation #hit_id value = @s attackerID
execute if entity @s[scores={attackerID=1..}] as @a[tag=playing,gamemode=adventure] if score @s playerID = #hit_id value unless score @s attackerID = @s playerID at @s run function sprint_racer:damage_logic/hitsound