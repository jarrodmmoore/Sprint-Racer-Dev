summon armor_stand ~ ~1.2 ~ {CustomName:'{"translate":"sr.lobby.item_enabled","color":"green","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore"]}
scoreboard players set @e[tag=setscore] lifespan 20
tag @e[tag=setscore] remove setscore