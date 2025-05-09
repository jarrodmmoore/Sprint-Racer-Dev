#say what happened
tellraw @a ["",{text:"The door in the Temple of Time has been opened!",color:"light_purple"}]

#open the door, open your mind
clone 9484 38 -8475 9488 43 -8475 9477 39 -8475
setblock 9479 47 -8475 redstone_block

#"switch" is on (bots can now pathfind beyond the door)
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add switchON