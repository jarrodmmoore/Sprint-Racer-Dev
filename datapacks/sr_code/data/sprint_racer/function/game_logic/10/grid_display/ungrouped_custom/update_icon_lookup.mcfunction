#executed by a custom track armor stand

#figure out what map_id should represent us

#default (no difficulty)
scoreboard players set #trackGridFetchMap value 9996
execute if entity @s[tag=custombattle] run scoreboard players set #trackGridFetchMap value 9997

#no custom preview? choose the icon with difficulty/size on it
#race
execute if entity @s[tag=!customPreview,tag=customrace,tag=trackNovice] run scoreboard players set #trackGridFetchMap value 9989
execute if entity @s[tag=!customPreview,tag=customrace,tag=trackIntermed] run scoreboard players set #trackGridFetchMap value 9990
execute if entity @s[tag=!customPreview,tag=customrace,tag=trackExpert] run scoreboard players set #trackGridFetchMap value 9991
execute if entity @s[tag=!customPreview,tag=customrace,tag=trackMaster] run scoreboard players set #trackGridFetchMap value 9992
#battle
execute if entity @s[tag=!customPreview,tag=custombattle,tag=trackTiny] run scoreboard players set #trackGridFetchMap value 9988
execute if entity @s[tag=!customPreview,tag=custombattle,tag=trackSmall] run scoreboard players set #trackGridFetchMap value 9993
execute if entity @s[tag=!customPreview,tag=custombattle,tag=trackMedium] run scoreboard players set #trackGridFetchMap value 9994
execute if entity @s[tag=!customPreview,tag=custombattle,tag=trackLarge] run scoreboard players set #trackGridFetchMap value 9995

#built-in custom preview slot
execute if entity @s[tag=customPreview,tag=!usingMacroPreview] run scoreboard players operation #trackGridFetchMap value = @s customPreview

#macro preview (the only correct option)
execute if entity @s[tag=customPreview,tag=usingMacroPreview] store result storage sprint_racer:func_args id int 1 run scoreboard players get @s customTagLine
execute if entity @s[tag=customPreview,tag=usingMacroPreview] run function sprint_racer:game_logic/10/grid_display/ungrouped_custom/update_icon_lookup_macro with storage sprint_racer:func_args

#also report back if we're banned
execute if entity @s[tag=customrace,tag=rtBlacklist] run scoreboard players set #trackGridFetchBanned value 1
execute if entity @s[tag=custombattle,tag=btBlacklist] run scoreboard players set #trackGridFetchBanned value 1