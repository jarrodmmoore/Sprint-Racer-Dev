tellraw @a[tag=!minChat] ["",{"text":" "}]

scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1,type=armor_stand] difficultyRamp 0

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optSetB
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add optSetA

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetA,scores={difficultyRamp=1..}] add optSetB
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run data merge block 1588 89 453 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/difficulty_ramp"}}','{"text":"DIFFICULTY","bold":true,"color":"black"}','{"text":"RAMP-UP","bold":true,"color":"black"}','{"text":"[OFF]","color":"dark_blue"}']},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1,type=armor_stand] difficultyRamp 0
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.difficulty_ramp_up_off","color":"green"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run scoreboard players add @a maturity 1000
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetA
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetB

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetA,scores={difficultyRamp=..0}] add optSetB
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run data merge block 1588 89 453 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/difficulty_ramp"}}','{"text":"DIFFICULTY","bold":true,"color":"black"}','{"text":"RAMP-UP","bold":true,"color":"black"}','{"text":"[ON]","color":"dark_blue"}']},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1,type=armor_stand] difficultyRamp 1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.difficulty_ramp_up_on","color":"green"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run scoreboard players remove @a[scores={maturity=1000..}] maturity 1000
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetA
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetB

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetA] remove optSetA
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optSetB

tag @s remove clickSign