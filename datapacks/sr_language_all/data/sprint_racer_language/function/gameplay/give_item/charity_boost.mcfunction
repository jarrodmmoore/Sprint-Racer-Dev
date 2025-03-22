#player gets these to catch back up a little bit after a death
#these do NOT stay on the ground, I want to avoid any dupe glitches

give @s minecraft:gold_ingot[custom_name={translate:"sr.item.charity_speed_boost",color:"aqua",bold:true,italic:false},custom_data={no10:1b,item:1b,normalitem:1b,rightclick:1b,charityitem:1b}] 1

scoreboard players set @s[tag=ai] math 0
scoreboard players add @s[tag=ai,scores={aiHasItem10=..4}] math 1

scoreboard players operation @s[tag=ai] aiHasItem10 += @s math
scoreboard players operation @s[tag=ai] aiHasSBoost += @s math
scoreboard players operation @s[tag=ai] aiHasNormal += @s math