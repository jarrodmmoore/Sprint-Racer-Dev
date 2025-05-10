#Gamemode Preset 1: Standard Race
execute unless entity @s[scores={gamemodePresetA=2..3}] run function sprint_racer:game_logic/1/gl1_main_standard_race

#Gamemode Preset 2: Elimination
execute if entity @s[scores={gamemodePresetA=2}] run function sprint_racer:game_logic/1/gl1_main_elimination

#Gamemode Preset 3: Tactics Race
execute if entity @s[scores={gamemodePresetA=3}] run function sprint_racer:game_logic/1/gl1_main_standard_race

#editor mode stuff...
execute if entity @s[tag=customTesting,scores={gameTime=100..}] as @a[tag=playing,gamemode=adventure] at @s unless entity @e[type=marker,tag=activator,scores={nodeState=1..}] run function sprint_racer_language:_dlc_2/editor_mode/warn_missing_activator
execute if entity @s[tag=customTesting] run scoreboard players set @a afkTime 0