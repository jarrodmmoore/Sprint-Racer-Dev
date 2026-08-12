scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] math 0
execute as @e[tag=activeplayer,tag=!eliminated] run scoreboard players add @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] math 1

#one player or less remaining? end it.
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={math=..1}] run function sprint_racer:game_logic/1/elimination/end

#more players left? set the timer again.
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={math=2}] run function sprint_racer:game_logic/1/elimination/set_time/30_sec
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={math=3..4}] run function sprint_racer:game_logic/1/elimination/set_time/25_sec
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={math=5..6}] run function sprint_racer:game_logic/1/elimination/set_time/20_sec
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={math=7..8}] run function sprint_racer:game_logic/1/elimination/set_time/15_sec
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={math=9..12}] run function sprint_racer:game_logic/1/elimination/set_time/12_sec
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={math=13..}] run function sprint_racer:game_logic/1/elimination/set_time/10_sec

#don't allow AI finish & there's no humans left? set timer very low so we end quickly
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=!allowAIfinish,scores={math=2..}] unless entity @a[tag=playing,tag=!eliminated] run function sprint_racer:game_logic/1/elimination/set_time/1_sec