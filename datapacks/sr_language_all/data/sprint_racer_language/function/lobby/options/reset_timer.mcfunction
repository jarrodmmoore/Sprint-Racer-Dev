data merge block 1625 89 435 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/set_5s"}}',Text2:'{"text":"LOBBY TIME:","bold":true,"color":"black"}',Text3:'{"text":"[SKIP]","color":"dark_blue"}'}
data merge block 1627 89 435 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/reset_timer"}}',Text2:'{"text":"LOBBY TIME:","bold":true,"color":"black"}',Text3:'{"text":"[RESET]","color":"dark_red"}'}

execute if entity @e[tag=w,scores={gameState=0}] run function sprint_racer:game_logic/0/_initialize
function sprint_racer_language:lobby/reset_lobby
scoreboard players set @e[tag=w,type=armor_stand] oTimer 0

tag @s remove clickSign

execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.hat master @s