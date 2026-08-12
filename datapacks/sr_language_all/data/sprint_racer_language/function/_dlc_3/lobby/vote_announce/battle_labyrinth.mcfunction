tellraw @a ["",{text:" "}]
tellraw @a ["",{translate:"sr.lobby.next_battle_arena",color:"white",bold:true},{text:"Battle Labyrinth",bold:true,color:"red"}]

tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] add sizeSmall
function sprint_racer_language:lobby/vote_announce/__arena_size

tellraw @a ["",{translate:"sr.lobby.created_by",color:"white",bold:false},{text:"RedstoneBattery",color:"red"}]