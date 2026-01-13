playsound minecraft:block.note_block.hat master @s ~ 100000 ~ 100000

#clear all tags, screw it
tag @e[tag=focusT,type=armor_stand] remove o_absorption
tag @e[tag=focusT,type=armor_stand] remove o_absorption_5plus
tag @e[tag=focusT,type=armor_stand] remove o_absorption_always
tag @e[tag=focusT,type=armor_stand] remove o_absorption_never

#add tags based on macro arguments
$$(1)
$$(2)

function sprint_racer:game_logic/10/custom_config/settings_overrides/_menu