tag @s add gotEm

#relevant: enemy player with tag stealTarget1 or stealTarget2 loses item
#player running the function gets item
#might do recursion to grab multiple, idk
$function $(active_namespace):$(active_path)/custom_items/_steal_item_player

scoreboard players set @e[tag=stealTarget1] itemStolen 8
scoreboard players set @s giveItem -1