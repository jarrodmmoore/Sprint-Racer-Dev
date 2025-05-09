#say what happened
tellraw @a ["",{text:"The green spiritual stone has been found!",color:"green"}]

#remove item from wherever it might be
clear @a emerald_block
kill @e[type=item,tag=papyland_stone_grass]

#set the blocks in the temple, both for visuals and logic checks
setblock 9483 37 -8484 emerald_block
setblock 9483 36 -8486 redstone_block