scoreboard players set @s afkTime 0

tag @s remove musicSel
stopsound @s record
scoreboard players set @s musicTime 0
scoreboard players reset @s BGMcontrol

tag @s[tag=musicOff] add turnONmus
#tag @s[tag=!musicOff,scores={soundtrack=1}] add switchOST
#tag @s[tag=!musicOff,scores={soundtrack=2}] add turnOFFmus
tag @s[tag=!musicOff] add turnOFFmus

#turn ON music
scoreboard players set @s[tag=turnONmus] soundtrack 1
tag @s[tag=turnONmus] remove musicOff
tag @s[tag=turnONmus] add musicDef
scoreboard players operation @s[tag=turnONmus] BGMtrack = @e[limit=1,type=armor_stand,tag=currentBGM] rNumber
execute unless entity @e[limit=1,type=armor_stand,tag=currentBGM] run scoreboard players set @s[tag=turnONmus] BGMtrack 0
execute if entity @s[tag=turnONmus] run function sprint_racer_language:_dlc_2/music_enabled
execute if entity @s[tag=turnONmus] run function sprint_racer_language:_dlc_2/music/radio_menu

#switch to alt OST
#(THIS WAS HIDDEN DUE TO BEING BUGGY)
#scoreboard players set @s[tag=switchOST] soundtrack 2
#tag @s[tag=switchOST] add musicDef
#scoreboard players operation @s[tag=switchOST] BGMtrack = @e[limit=1,type=armor_stand,tag=currentBGM] rNumber
#execute unless entity @e[limit=1,type=armor_stand,tag=currentBGM] run scoreboard players set @s[tag=switchOST] BGMtrack 0
#execute if entity @s[tag=switchOST] run function sprint_racer_language:_dlc_4/music_enabled_alternate
#execute if entity @s[tag=switchOST] run function sprint_racer_language:_dlc_2/music/radio_menu

#turn OFF music
tag @s[tag=turnOFFmus] add musicOff
execute if entity @s[tag=turnOFFmus] run function sprint_racer_language:_dlc_2/music_disabled


tag @s[tag=turnONmus] remove turnONmus
tag @s[tag=switchOST] remove switchOST
tag @s[tag=turnOFFmus] remove turnOFFmus