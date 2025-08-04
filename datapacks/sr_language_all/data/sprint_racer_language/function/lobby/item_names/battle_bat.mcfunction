summon armor_stand ~ ~.8 ~ {CustomName:{translate:"sr.item_elite.battle_bat",color:"white",bold:true},CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore"]}
summon armor_stand ~ ~.5 ~ {CustomName:{translate:"sr.lobby.type_offense",color:"red",bold:false},CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore"]}
scoreboard players set @e[tag=setscore] lifespan 2
tag @e[tag=setscore] remove setscore