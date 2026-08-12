scoreboard players remove @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] tvPoolNum 1
execute if block 1591 78 369 pale_oak_button[powered=true] run scoreboard players remove @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] tvPoolNum 5
execute if block 1591 78 369 pale_oak_button[powered=true] run setblock 1591 78 369 pale_oak_button[face=floor,facing=east,powered=false]

function sprint_racer:game_logic/10/keep_in_bounds