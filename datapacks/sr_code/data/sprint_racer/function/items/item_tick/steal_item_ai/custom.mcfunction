tag @s add gotEm

#relevant: enemy ai with tag stealTarget1 or stealTarget2 loses item
#player running the function gets item
#might do recursion to grab multiple, idk
$function $(active_namespace):$(active_path)/custom_items/_steal_item_ai

scoreboard players set @e[tag=stealTarget1] itemStolen 8
scoreboard players set @s giveItem -1