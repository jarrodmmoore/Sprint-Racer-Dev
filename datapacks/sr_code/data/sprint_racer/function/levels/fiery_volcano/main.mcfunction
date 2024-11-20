function sprint_racer:levels/fiery_volcano/map

#navigator correction in the cave, needed because layout doesn't map cleanly in 2D
scoreboard players set @a[x=-67,y=48,z=-1783,dx=20,dy=10,dz=40,scores={check=..2}] recDirection 1

#lava starts flowing in tunnel on later laps
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={mapZone=1}] if entity @e[tag=activeplayer,scores={lapFake=2..}] run function sprint_racer:levels/fiery_volcano/lava_lap_2
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={mapZone=2}] if entity @e[tag=activeplayer,scores={lapFake=3..}] run function sprint_racer:levels/fiery_volcano/lava_lap_3
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={mapZone=3}] if entity @e[tag=activeplayer,scores={lapFake=4..}] run function sprint_racer:levels/fiery_volcano/lava_lap_4
