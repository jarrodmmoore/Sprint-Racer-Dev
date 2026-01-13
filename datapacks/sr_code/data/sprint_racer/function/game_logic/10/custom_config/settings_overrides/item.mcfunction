playsound minecraft:block.note_block.hat master @s ~ 100000 ~ 100000

#clear all tags, screw it
$tag @e[tag=focusT,type=armor_stand] remove forceNo$(item)
$tag @e[tag=focusT,type=armor_stand] remove banNo$(item)
$tag @e[tag=focusT,type=armor_stand] remove banEnchant$(item)

#add tags based on macro arguments
$$(1)$(item)

#return to the proper page
$function sprint_racer:game_logic/10/custom_config/settings_overrides/_menu_item_bans_p$(page)