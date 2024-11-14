summon armor_stand ~ ~1.8 ~ {CustomName:'{"translate":"sr.game.critical_hit","color":"white","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore","floatup"]}
scoreboard players set @e[tag=setscore] lifespan 15
tag @e[tag=setscore] remove setscore