function sprint_racer:levels/hurricane_islands/map

#make sure teleports work in case of small render distance
tp @a[tag=playing,gamemode=adventure,x=1112,y=61,z=1134,distance=..5,scores={lastTeleport=1}] 1192 126 1035 180 0
tp @a[tag=playing,gamemode=adventure,x=1167,y=120,z=1070,distance=..5,scores={lastTeleport=2}] 1225 121 1167 25 0
tp @a[tag=playing,gamemode=adventure,x=1197,y=127,z=1162,distance=..5,scores={lastTeleport=3}] 1032 123 1179 90 0
tp @a[tag=playing,gamemode=adventure,x=999,y=123,z=1124,distance=..5,scores={lastTeleport=4}] 1027 123 1098 180 0
tp @a[tag=playing,gamemode=adventure,x=1045,y=123,z=1029,distance=..5,scores={lastTeleport=5}] 1112 141 1165 0 5
tp @a[tag=playing,gamemode=adventure,x=1110,y=141,z=1266,distance=..5,scores={lastTeleport=6}] 1112 61 1026 0 0

scoreboard players set @a[x=1190,y=121,z=1151,dx=7,dy=3,dz=7,scores={check=5..6}] recDirection 1

effect give @a minecraft:night_vision 14 1 true