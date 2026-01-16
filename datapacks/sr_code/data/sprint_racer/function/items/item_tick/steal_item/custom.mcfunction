tag @s add gotEm

tag @a[tag=stealTarget1] add stealTargetCustom
tag @a[tag=stealTarget2] add stealTargetCustom

#relevant: enemy player with tag stealTarget1 or stealTarget2 loses item
#player running the function gets item
#might do recursion to grab multiple, idk
$function $(active_namespace):$(active_path)/custom_items/_steal_item_player

scoreboard players set @e[tag=stealTargetCustom] itemStolen 8
tag @a[tag=stealTargetCustom] remove stealTargetCustom

scoreboard players set @s giveItem -1