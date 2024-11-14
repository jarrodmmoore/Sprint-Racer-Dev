scoreboard players set @s hitstun 100
scoreboard players add @s rateDecel 200
scoreboard players remove @s moveSpeed 10000
summon armor_stand ~ ~2.2 ~ {CustomName:'{"text":"-20","color":"yellow","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
scoreboard players set @e[tag=setscore] lifespan 30
tag @e[tag=setscore] remove setscore

scoreboard players set #damage_done value 20
scoreboard players operation #hit_id value = @s attackerID
execute if entity @s[scores={attackerID=1..}] as @a[tag=playing,gamemode=adventure] if score @s playerID = #hit_id value unless score @s attackerID = @s playerID at @s run function sprint_racer:damage_logic/hitsound