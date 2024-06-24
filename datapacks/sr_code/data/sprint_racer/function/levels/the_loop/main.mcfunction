function sprint_racer:levels/the_loop/map

#player effects
execute as @a[tag=playing,gamemode=adventure] at @s if block ~ ~-1 ~ lime_concrete run effect give @s minecraft:jump_boost 1 2
execute as @a[tag=playing,gamemode=adventure] at @s rotated ~ 0 positioned ^ ^ ^.75 if block ~ ~-1 ~ lime_concrete run effect give @s minecraft:jump_boost 1 2
execute as @a[tag=playing,gamemode=adventure] at @s rotated ~ 0 positioned ^ ^ ^1.5 if block ~ ~-1 ~ lime_concrete run effect give @s minecraft:jump_boost 1 2

execute as @a[tag=playing,gamemode=adventure,scores={speedBoost=..29}] at @s if block ~ ~-1 ~ yellow_concrete run scoreboard players set @s speedBoost 3
execute as @a[tag=playing,gamemode=adventure,scores={speedBoost=..29}] at @s if block ~ ~-1 ~ orange_concrete run scoreboard players set @s speedBoost 3
execute as @a[tag=playing,gamemode=adventure,scores={speedBoost=..29}] at @s if block ~ ~-1 ~ red_concrete run scoreboard players set @s speedBoost 3
execute as @a[tag=playing,gamemode=adventure,scores={speedBoost=..29}] at @s rotated ~ 0 positioned ^ ^ ^.75 if block ~ ~-1 ~ yellow_concrete run scoreboard players set @s speedBoost 3
execute as @a[tag=playing,gamemode=adventure,scores={speedBoost=..29}] at @s rotated ~ 0 positioned ^ ^ ^1.5 if block ~ ~-1 ~ yellow_concrete run scoreboard players set @s speedBoost 3

execute if entity @e[tag=cheats,tag=09a] as @e[tag=kartpig] at @s if block ~ ~-1 ~ lime_concrete run function sprint_racer:levels/the_loop/kart_jump

#hooray, falldamage is now a gamerule! no need for these commands
#execute as @a[tag=playing,gamemode=adventure] at @s if block ~ ~-1 ~ structure_void run effect give @s resistance 2 254 false
#execute as @a[tag=playing,gamemode=adventure] at @s if block ~ ~-1 ~ structure_void run scoreboard players set @s nResist 40


#ai effects
execute as @e[tag=ai] at @s if block ~ ~-1 ~ lime_concrete run function sprint_racer:game_logic/1/node_effects/jump_boost_ai/2
execute as @e[tag=ai] at @s if block ~1 ~-1 ~1 lime_concrete run function sprint_racer:game_logic/1/node_effects/jump_boost_ai/2
execute as @e[tag=ai] at @s if block ~1 ~-1 ~-1 lime_concrete run function sprint_racer:game_logic/1/node_effects/jump_boost_ai/2
execute as @e[tag=ai] at @s if block ~-1 ~-1 ~1 lime_concrete run function sprint_racer:game_logic/1/node_effects/jump_boost_ai/2
execute as @e[tag=ai] at @s if block ~-1 ~-1 ~-1 lime_concrete run function sprint_racer:game_logic/1/node_effects/jump_boost_ai/2

execute as @e[tag=ai] at @s if block ~ ~-1 ~ yellow_concrete run scoreboard players set @s[scores={speedBoost=..29}] speedBoost 3
execute as @e[tag=ai] at @s if block ~ ~-1 ~ orange_concrete run scoreboard players set @s[scores={speedBoost=..29}] speedBoost 3
execute as @e[tag=ai] at @s if block ~ ~-1 ~ red_concrete run scoreboard players set @s[scores={speedBoost=..29}] speedBoost 3

execute as @e[tag=ai] at @s if block ~ ~-1 ~ structure_void run scoreboard players set @s nResist 40