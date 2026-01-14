playsound minecraft:block.note_block.hat master @s ~ 100000 ~ 100000

#clear all tags, screw it
tag @e[tag=focusT,type=armor_stand] remove forceBattleBat
tag @e[tag=focusT,type=armor_stand] remove banBattleBat
tag @e[tag=focusT,type=armor_stand] remove banEnchantBattleBat

#add tags based on macro arguments
$$(1)

#return to the proper page
$function sprint_racer:game_logic/10/custom_config/settings_overrides/_menu_item_bans_p$(page)