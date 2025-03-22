give @s minecraft:blaze_rod[custom_name={translate:"sr.item.lightning",color:"light_purple",bold:true,italic:false},custom_data={no20:1b,stay:1b,item:1b,normalitem:1b,rightclick:1b}] 1

#don't give people any more of these for 90 seconds.
scoreboard players set #lightningCooldown value 1800

scoreboard players set @s[tag=ai] math 0
scoreboard players add @s[tag=ai] math 1

scoreboard players operation @s[tag=ai] aiHasItem20 += @s math
scoreboard players operation @s[tag=ai] aiHasGlobal += @s math
scoreboard players operation @s[tag=ai] aiHasNormal += @s math


tag @s remove justOne