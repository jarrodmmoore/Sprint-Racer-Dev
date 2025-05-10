#time attack
summon armor_stand 1623 83 371 {CustomName:{translate:"sr.lobby.time_attack",color:"yellow",bold:true},CustomNameVisible:false,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["cDisplay2"]}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=realms] run summon armor_stand 1623 82.7 371 {CustomName:{translate:"sr.lobby.scores_will_not_be_saved",color:"red",italic:true},CustomNameVisible:false,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["cDisplay2"]}

#free roam
summon armor_stand 1627 83 371 {CustomName:{translate:"sr.lobby.free_roam",color:"green",bold:true},CustomNameVisible:false,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["cDisplay2"]}

#custom track manager
summon armor_stand 1623 83 360 {CustomName:{translate:"sr.lobby.custom_track_manager",color:"light_purple",bold:true},CustomNameVisible:false,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["cDisplay2"]}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=realms] run summon armor_stand 1623 82.7 360 {CustomName:{translate:"sr.lobby.not_available_on_realms",color:"red",italic:true},CustomNameVisible:false,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["cDisplay2"]}

#random track pool
summon armor_stand 1627 83 360 {CustomName:{translate:"sr.lobby.random_track_pool",color:"gray",bold:true},CustomNameVisible:false,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["cDisplay2"]}

#grand prix
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=grandprix] run summon armor_stand 1619 83 360 {CustomName:{translate:"sr.lobby.grand_prix_setup",color:"gold",bold:true},CustomNameVisible:false,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["cDisplay2"]}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=grandprix] run summon armor_stand 1619 83 360 {CustomName:{translate:"sr.lobby.cancel_grand_prix",color:"red",bold:true,italic:true},CustomNameVisible:false,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["cDisplay2"]}