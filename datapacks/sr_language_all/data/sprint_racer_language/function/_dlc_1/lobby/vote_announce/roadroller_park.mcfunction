tellraw @a ["",{text:" "}]
tellraw @a ["",{translate:"sr.lobby.next_track",color:"white",bold:true},{text:"Roadroller Park",bold:true,color:"aqua"}]

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] lap 3
function sprint_racer_language:lobby/vote_announce/__lap_count

tellraw @a ["",{translate:"sr.lobby.created_by",color:"white",bold:false},{text:"JohnGlacious",color:"blue"},{text:" and ",color:"white"},{text:"Flamingosaurus",color:"dark_aqua"}]