bossbar set minecraft:freeroam name ["",{"translate":"sr.game.free_roam","color":"green","bold":true}]
bossbar set freeroam color green
bossbar set freeroam max 1
bossbar set freeroam style progress
execute store result bossbar minecraft:freeroam value run scoreboard players get @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] gameState