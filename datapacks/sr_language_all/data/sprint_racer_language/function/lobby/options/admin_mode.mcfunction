tellraw @a[tag=!minChat] ["",{"text":" "}]

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optSetB
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add optSetA

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetA,tag=!requireAdmin] add optSetB
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run data merge block 1602 88 369 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/admin_mode"}}','{"text":"ADMIN MODE","bold":true,"color":"black"}','{"text":"[ON]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add requireAdmin
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.admin_mode_on","color":"green"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run setblock 1601 88 369 minecraft:pale_oak_wall_sign[facing=south]{front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/save_state_loading"}}','{"text":"SAVE STATE","bold":true,"color":"black"}','{"text":"LOADING","bold":true,"color":"black"}','{"text":"[ADMIN ONLY]","color":"dark_blue"}']},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove anyPlayerLoadsSave
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @s add admin
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tellraw @s ["",{"translate":"sr.lobby.tagged_as_admin","color":"yellow","bold":true}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tellraw @s ["",{"translate":"sr.lobby.tagged_use_key_1","color":"yellow"},{"text":"\"/tag <PLAYERNAME> add admin\"","color":"yellow"},{"translate":"sr.lobby.tagged_use_key_2","color":"yellow"}]
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetA
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetB

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetA,tag=requireAdmin] add optSetB
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run data merge block 1602 88 369 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/admin_mode"}}','{"text":"ADMIN MODE","bold":true,"color":"black"}','{"text":"[OFF]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove requireAdmin
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run setblock 1601 88 369 air
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run tellraw @a[tag=!minChat] ["",{"translate":"sr.lobby.options.admin_mode_off","color":"green"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] run playsound minecraft:block.note_block.hat master @a
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetA
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetB] remove optSetB

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=optSetA] remove optSetA
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove optSetB

tag @s remove clickSign