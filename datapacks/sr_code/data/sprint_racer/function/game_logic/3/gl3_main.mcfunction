execute unless entity @s[scores={gamemodePresetB=2..3}] run function sprint_racer:game_logic/3/gl3_main_ko_fest
execute if entity @s[scores={gamemodePresetB=2}] run function sprint_racer:game_logic/3/gl3_main_elimination
execute if entity @s[scores={gamemodePresetB=3}] run function sprint_racer:game_logic/3/gl3_main_ko_fest

#editor mode stuff...
execute if entity @s[tag=customTesting,scores={gameTime=100..}] as @a[tag=playing,gamemode=adventure] at @s unless entity @e[type=marker,tag=activator,scores={nodeState=1..}] run function sprint_racer_language:_dlc_2/editor_mode/warn_missing_activator
execute if entity @s[tag=customTesting] run scoreboard players set @a afkTime 0

#give battle bat item
execute if entity @e[limit=1,tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=allowPVP] run effect give @a minecraft:strength 10 0 true
execute unless entity @e[limit=1,tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=allowPVP] as @a[gamemode=adventure,tag=playing] at @s run function sprint_racer:game_logic/3/player_check_for_battle_bat