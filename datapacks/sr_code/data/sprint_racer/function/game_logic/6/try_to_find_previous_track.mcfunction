scoreboard players remove @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] taLastChosen 1

effect give @a blindness 3 13 true

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={taLastChosen=1}] run effect clear @a blindness
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={taLastChosen=1}] run scoreboard objectives remove taLastChosen
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={taLastChosen=1}] run scoreboard objectives add taLastChosen dummy

execute as @e[scores={worldmapID=..9999,taLastChosen=1..}] at @s run function sprint_racer:game_logic/6/found_previous_track