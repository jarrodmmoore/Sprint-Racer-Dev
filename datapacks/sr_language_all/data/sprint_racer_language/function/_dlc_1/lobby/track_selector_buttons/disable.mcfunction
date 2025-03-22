summon armor_stand ~ ~1.6 ~ {CustomName:{translate:"sr.lobby.button.disable",color:"gray",bold:true},CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore"]}

scoreboard players set @e[tag=setscore] lifespan 15
tag @e[tag=setscore] remove setscore