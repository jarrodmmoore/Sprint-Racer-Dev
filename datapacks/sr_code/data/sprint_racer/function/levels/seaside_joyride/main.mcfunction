function sprint_racer:levels/seaside_joyride/map

execute if score #listenForEndgame value matches 1 if score @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1,type=armor_stand] gameTime matches 100000.. run function sprint_racer:levels/seaside_joyride/advance_time