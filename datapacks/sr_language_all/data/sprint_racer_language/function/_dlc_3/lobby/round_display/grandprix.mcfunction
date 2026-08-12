#round number
execute as @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,limit=1] run function sprint_racer_language:_dlc_3/lobby/round_display/gp_round_number

#"Grand Prix"
summon armor_stand 1546 85 406 {Tags:["roundDisplay","roundText1"],CustomName:{translate:"sr.grand_prix",color:"gold",bold:true},NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1}

#"Gamemode: X"
#summon armor_stand 1546 85 406 {Tags:["roundDisplay","roundText2"],CustomName:["",{translate:"sr.editor.config.itemchest.gamemode",color:"white",bold:"false"},{text:"Choice",color:"yellow",bold:"false"}],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,CustomNameVisible:1}

#it looks cool if these get tp'd upward from the same spot
execute as @e[tag=roundNo1,tag=roundDisplay,type=armor_stand] at @s run tp @s ~ ~4.5 ~
execute as @e[tag=roundText1,tag=roundDisplay,type=armor_stand] at @s run tp @s ~ ~5.5 ~