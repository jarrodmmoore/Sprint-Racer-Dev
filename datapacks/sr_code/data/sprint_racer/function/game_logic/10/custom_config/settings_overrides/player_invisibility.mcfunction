playsound minecraft:block.note_block.hat master @s ~ 100000 ~ 100000

#clear all tags, screw it
tag @e[tag=focusT,type=armor_stand] remove o_neabyInvis
tag @e[tag=focusT,type=armor_stand] remove o_neabyInvis_never
tag @e[tag=focusT,type=armor_stand] remove o_neabyInvis_always
tag @e[tag=focusT,type=armor_stand] remove o_neabyInvis_5plus

#add tags based on macro arguments
$$(1)
$$(2)

function sprint_racer:game_logic/10/custom_config/settings_overrides/_menu