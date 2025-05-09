#i'm just gonna assume the whole level is loaded when this gets run

#close the temple of time door
clone 9470 38 -8474 9474 43 -8474 9477 39 -8475
setblock 9479 47 -8475 air

#spawn the 3 stones and set collect scores

#switch is not on (determines whether bots will try to pathfind into Ramen City)
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove switchON

#grass
kill @e[type=item,tag=papyland_stone_grass]
summon item 9411 102 -8416 {Age:-32768,Tags:["stay","papyland_stone_grass"],Item:{id:"emerald_block"}}
setblock 9483 37 -8484 air
setblock 9483 36 -8486 air

#fire
kill @e[type=item,tag=papyland_stone_fire]
summon item 9419 44 -8453 {Age:-32768,Tags:["stay","papyland_stone_fire"],Item:{id:"redstone_block"}}
setblock 9479 37 -8484 air
setblock 9479 36 -8486 air

#water
kill @e[type=item,tag=papyland_stone_water]
summon item 9481 50 -8435 {Age:-32768,Tags:["stay","papyland_stone_water"],Item:{id:"lapis_block"}}
setblock 9475 37 -8484 air
setblock 9475 36 -8486 air


#bonus:
#increase the time limit for this track by 2 minutes because i feel like it
scoreboard players add @e[tag=w,type=minecraft:armor_stand] timeRemaining 2400
scoreboard players add @e[tag=w,type=minecraft:armor_stand] countTimeMin 2