tellraw @a ["",{text:" "}]
tellraw @a ["",{translate:"sr.lobby.next_battle_arena",color:"white",bold:true},{text:"End Core",bold:true,color:"red"}]

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add sizeSmall
function sprint_racer_language:lobby/vote_announce/__arena_size

tellraw @a ["",{translate:"sr.lobby.created_by",color:"white",bold:false},{text:"JohnGlacious",color:"blue"}]