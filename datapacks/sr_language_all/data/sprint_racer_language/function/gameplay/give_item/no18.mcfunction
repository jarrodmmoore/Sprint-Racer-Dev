give @s minecraft:black_terracotta[item_model="sr/item/enderman_thief",custom_name={translate:"sr.item.enderman",color:"light_purple",bold:true,italic:false},custom_data={no18:1b,stay:1b,item:1b,normalitem:1b,rightclick:1b}] 1


scoreboard players set @s[tag=ai] math 0
scoreboard players add @s[tag=ai] math 1

scoreboard players operation @s[tag=ai] aiHasItem18 += @s math
scoreboard players operation @s[tag=ai] aiHasGlobal += @s math
scoreboard players operation @s[tag=ai] aiHasNormal += @s math


tag @s remove justOne