scoreboard players set @s hitstun 50
scoreboard players add @s rateDecel 100
scoreboard players remove @s moveSpeed 5000

#summon text_display for damage number
execute unless block ~ -64 ~ wither_rose run summon text_display ~ ~2.2 ~ {alignment:center,text:'{"text":"-10","color":"gold","bold":true}',Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute as @e[tag=setscore,distance=..3] run function sprint_racer:damage_logic/damage_number_entity_damage_slow

scoreboard players set #damage_done value 10
scoreboard players operation #hit_id value = @s attackerID
execute if entity @s[scores={attackerID=1..}] as @a[tag=playing,gamemode=adventure] if score @s playerID = #hit_id value unless score @s attackerID = @s playerID at @s run function sprint_racer:damage_logic/hitsound