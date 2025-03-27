#time attack
summon armor_stand 1581 93 372 {CustomName:{translate:"sr.lobby.time_attack",color:"yellow",bold:true},CustomNameVisible:0b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["cDisplay2"]}

#free roam
summon armor_stand 1585 93 372 {CustomName:{translate:"sr.lobby.free_roam",color:"green",bold:true},CustomNameVisible:0b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["cDisplay2"]}

#custom track manager
#execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!realms] run summon armor_stand 1581 93 363 {CustomName:{text:"Custom Track Manager",color:"light_purple",bold:true},CustomNameVisible:0b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["cDisplay2"]}
summon armor_stand 1581 93 363 {CustomName:{translate:"sr.lobby.custom_track_manager",color:"light_purple",bold:true},CustomNameVisible:0b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["cDisplay2"]}

#random track pool
summon armor_stand 1585 93 363 {CustomName:{translate:"sr.lobby.random_track_pool",color:"gray",bold:true},CustomNameVisible:0b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["cDisplay2"]}