#data merge block 1583 95 378 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/add_20s"}}',Text2:'{"text":"LOBBY TIME","bold":true,"color":"black"}',Text3:'{"text":"[ADD 20s]","bold":false,"color":"dark_purple"}'}
#data merge block 1584 95 378 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/subtract_20s"}}',Text2:'{"text":"LOBBY TIME:","bold":true,"color":"black"}',Text3:'{"text":"[SUBTRACT 20s]","color":"dark_purple"}'}
#data merge block 1625 89 435 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/set_5s"}}',Text2:'{"text":"LOBBY TIME:","bold":true,"color":"black"}',Text3:'{"text":"[SKIP]","color":"dark_blue"}'}
#data merge block 1627 89 435 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/reset_timer"}}',Text2:'{"text":"LOBBY TIME:","bold":true,"color":"black"}',Text3:'{"text":"[RESET]","color":"dark_red"}'}

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=0,readyState=..0}] run function sprint_racer:game_logic/0/set_mode_ready

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add clearImpulse
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] oTimer 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gameTime 5
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={voteTime=1..}] voteTime 1
execute store result bossbar minecraft:menutimer max run scoreboard players get @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] gameTime

execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.hat master @s

tag @s remove clickSign