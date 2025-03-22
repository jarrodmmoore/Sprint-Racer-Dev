give @s minecraft:totem_of_undying[custom_name={translate:"sr.item.totem",color:"yellow",bold:true,italic:false},custom_data={no8:1b,stay:1b,item:1b,normalitem:1b,rightclick:1b}] 1


scoreboard players set @s[tag=ai] math 0
scoreboard players add @s[tag=ai] math 1

scoreboard players operation @s[tag=ai] aiHasItem8 += @s math
scoreboard players operation @s[tag=ai] aiHasDefense += @s math
scoreboard players operation @s[tag=ai] aiHasNormal += @s math


tag @s remove justOne