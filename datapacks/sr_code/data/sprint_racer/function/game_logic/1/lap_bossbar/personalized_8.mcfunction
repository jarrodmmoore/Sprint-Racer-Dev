#find how many total checkpoints we've passed
scoreboard players set #totalCPs value 0
scoreboard players operation #totalCPs value += #bbDisplayCheck value
scoreboard players operation #totalCPs value *= @s lap
scoreboard players operation #totalCPs value -= #bbDisplayCheck value
scoreboard players operation #totalCPs value += @s check

#update bossbar name and color
execute unless score @s lap >= #bbDisplayLap value run bossbar set minecraft:lap8 name ["",{text:"\uE045",color:"white",italic:true},{text:" "},{text:" "},{score:{name:"@s",objective:"lap"},color:"green",bold:true},{text:" "},{text:"/",color:"green",bold:true},{text:" "},{score:{name:"#bbDisplayLap",objective:"value"},color:"green",bold:true}]
execute unless score @s lap >= #bbDisplayLap value run bossbar set minecraft:lap8 color green
execute if score @s lap >= #bbDisplayLap value run bossbar set minecraft:lap8 name ["",{text:"\uE045",color:"yellow",italic:true},{text:" "},{text:" "},{score:{name:"@s",objective:"lap"},color:"yellow",bold:true},{text:" "},{text:"/",color:"yellow",bold:true},{text:" "},{score:{name:"#bbDisplayLap",objective:"value"},color:"yellow",bold:true}]
execute if score @s lap >= #bbDisplayLap value run bossbar set minecraft:lap8 color yellow

#update bossbar value with the number of checkpoints we've passed
execute store result bossbar minecraft:lap8 value run scoreboard players get #totalCPs value