bossbar set minecraft:menutimer name ["",{translate:"sr.game.targets_remaining",color:"red",bold:true},{score:{name:"@e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1]",objective:"targetData"},color:"red",bold:true}]
bossbar set minecraft:menutimer color red
bossbar set minecraft:menutimer style progress
execute store result bossbar minecraft:menutimer value run scoreboard players get @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] targetData
execute store result bossbar minecraft:menutimer max run scoreboard players get @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] targetData