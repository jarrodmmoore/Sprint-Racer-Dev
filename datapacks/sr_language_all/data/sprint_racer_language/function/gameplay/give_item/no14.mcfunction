give @s minecraft:lingering_potion[custom_name={translate:"sr.item.lingering_potion",color:"green",bold:true,italic:false},potion_contents={potion:"minecraft:poison"},custom_data={no14:1b,stay:1b,item:1b,normalitem:1b,groundDeploy:1b}] 1


scoreboard players set @s[tag=ai] math 0
scoreboard players add @s[tag=ai] math 1

scoreboard players operation @s[tag=ai] aiHasItem14 += @s math
scoreboard players operation @s[tag=ai] aiHasTrap += @s math
scoreboard players operation @s[tag=ai] aiHasNormal += @s math


tag @s remove justOne