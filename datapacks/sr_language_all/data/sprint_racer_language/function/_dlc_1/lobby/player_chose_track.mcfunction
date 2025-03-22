tag @s add mE

execute if entity @a[tag=!mE] run tellraw @a ["",{translate:"sr.lobby.player_chose_this_track_1",color:"gray",italic:true},{selector:"@s",italic:true},{translate:"sr.lobby.player_chose_this_track_2",color:"gray",italic:true}]

tag @s remove mE