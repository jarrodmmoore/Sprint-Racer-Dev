tag @s add gotEm

tag @e[tag=stealTarget1] add stealTargetCustom
tag @e[tag=stealTarget2] add stealTargetCustom

#relevant: enemy ai with tag stealTarget1 or stealTarget2 loses item
#player running the function gets item
#might do recursion to grab multiple, idk
$function $(active_namespace):$(active_path)/custom_items/_steal_item_ai

scoreboard players set @e[tag=stealTargetCustom] itemStolen 8
tag @e[tag=stealTargetCustom] remove stealTargetCustom

scoreboard players set @s giveItem -1