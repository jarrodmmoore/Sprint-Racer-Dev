summon armor_stand ~ ~1.7 ~ {CustomName:'{"translate":"sr.cheats.oh_no","color":"#FFAA00","bold":false}',CustomNameVisible:1b,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore","floatup"]}
scoreboard players set @e[tag=setscore] lifespan 10
execute if score #halftick value matches 1 run scoreboard players set @e[tag=setscore] lifespan 5
tag @e[tag=setscore] remove setscore