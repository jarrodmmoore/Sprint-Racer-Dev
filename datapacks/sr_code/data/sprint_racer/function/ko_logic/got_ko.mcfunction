#playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 .7
execute unless score @s cStatType matches 5 run playsound minecraft:sr_hitsounds/ko master @s ~ 100000 ~ 100000 1.5
execute if entity @s[tag=ai] run particle falling_dust{block_state:"minecraft:lime_concrete"} ~ ~1 ~ 0.5 0.5 0.5 0 20
execute if entity @s[type=player,gamemode=!spectator] run particle falling_dust{block_state:"minecraft:lime_concrete"} ~ ~1 ~ 0.5 0.5 0.5 0 20

execute if score @s cStatType matches 5 run playsound minecraft:sr_horns/honk2 master @a ~ ~1 ~ 2 0.9

scoreboard players add @s KOs 1
#say GOT KO

scoreboard players reset @s playerKO

execute if entity @s[scores={crowdCooldown=..25}] if score grandprix gameState matches 1 at @s run function sprint_racer:grand_prix/crowd_cheer

effect give @s[tag=!undead] instant_health 1 0 true
effect give @s[tag=undead] instant_damage 1 0 true
execute if entity @s[tag=ai] run function sprint_racer:ko_logic/ai_sync_kos_with_master
execute if entity @s[tag=ai,tag=sa_villager] run function sprint_racer_language:_dlc_3/gameplay/villager_ai/chat_get_ko
execute if entity @s[tag=ai] run function sprint_racer_language:gameplay/got_ko
execute if entity @s[type=player,gamemode=!spectator] run function sprint_racer_language:gameplay/got_ko
execute if entity @s[scores={hp=..16}] run summon text_display ~ ~1.8 ~ {alignment:center,text:'{text:"+4",color:"light_purple",bold:true}',Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if entity @s[scores={hp=17}] run summon text_display ~ ~1.8 ~ {alignment:center,text:'{text:"+3",color:"light_purple",bold:true}',Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if entity @s[scores={hp=18}] run summon text_display ~ ~1.8 ~ {alignment:center,text:'{text:"+2",color:"light_purple",bold:true}',Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}
execute if entity @s[scores={hp=19}] run summon text_display ~ ~1.8 ~ {alignment:center,text:'{text:"+1",color:"light_purple",bold:true}',Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}

#deduct KO for team kills
scoreboard players set #team_ko value 0
execute if score #team_ko value matches 0 if entity @s[tag=playerCyan] if entity @e[limit=1,tag=killed,tag=playerCyan] run function sprint_racer:ko_logic/team_ko
execute if score #team_ko value matches 0 if entity @s[tag=playerCyan] if entity @a[limit=1,tag=killed,tag=playerCyan] run function sprint_racer:ko_logic/team_ko
execute if score #team_ko value matches 0 if entity @s[tag=playerOrange] if entity @e[limit=1,tag=killed,tag=playerOrange] run function sprint_racer:ko_logic/team_ko
execute if score #team_ko value matches 0 if entity @s[tag=playerOrange] if entity @a[limit=1,tag=killed,tag=playerOrange] run function sprint_racer:ko_logic/team_ko

execute as @e[tag=setscore,distance=..3] run function sprint_racer:damage_logic/damage_number_entity