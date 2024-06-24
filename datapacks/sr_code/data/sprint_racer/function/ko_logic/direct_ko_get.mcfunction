#playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 .7
playsound minecraft:sr_hitsounds/ko master @s ~ ~ ~ 1 1.5
particle falling_dust{block_state:"minecraft:lime_concrete"} ~ ~1 ~ 0.5 0.5 0.5 0 20

scoreboard players add @s KOs 1

scoreboard players reset @s playerKO

execute if entity @s[scores={crowdCooldown=..25}] if score grandprix gameState matches 1 at @s run function sprint_racer:grand_prix/crowd_cheer

effect give @s[tag=!undead] instant_health 1 0 true
effect give @s[tag=undead] instant_damage 1 0 true
execute if entity @s[tag=ai] run function sprint_racer:ko_logic/ai_sync_kos_with_master
execute at @s run function sprint_racer_language:_dlc_3/gameplay/got_ko_direct
execute if entity @s[scores={hp=..16}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+4","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore","floatup"]}
execute if entity @s[scores={hp=17}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+3","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore","floatup"]}
execute if entity @s[scores={hp=18}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+2","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore","floatup"]}
execute if entity @s[scores={hp=19}] run summon armor_stand ~ ~1.8 ~ {CustomName:'{"text":"+1","color":"light_purple","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore","floatup"]}

#deduct KO for team kills
scoreboard players set #team_ko value 0
execute if score #team_ko value matches 0 if entity @s[tag=playerCyan] if entity @e[limit=1,tag=killed,tag=playerCyan] run function sprint_racer:ko_logic/team_ko
execute if score #team_ko value matches 0 if entity @s[tag=playerCyan] if entity @a[limit=1,tag=killed,tag=playerCyan] run function sprint_racer:ko_logic/team_ko
execute if score #team_ko value matches 0 if entity @s[tag=playerOrange] if entity @e[limit=1,tag=killed,tag=playerOrange] run function sprint_racer:ko_logic/team_ko
execute if score #team_ko value matches 0 if entity @s[tag=playerOrange] if entity @a[limit=1,tag=killed,tag=playerOrange] run function sprint_racer:ko_logic/team_ko

scoreboard players set @e[tag=setscore] lifespan 10
tag @e[tag=setscore] remove setscore