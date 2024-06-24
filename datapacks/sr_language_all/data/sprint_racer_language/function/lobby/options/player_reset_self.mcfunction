#(2021)
#wait, why is this function still in here? it was a bad solution to a problem i had because i was relying on stat.leavegame or whatever
#protip: avoid using built-in scoreboard objective types whenever you possibly can

data merge block 1556 89 411 {Text1:'{"text":"Having","bold":true,"color":"black"}',Text2:'{"text":"problems with","bold":true,"color":"black"}',Text3:'{"text":"inputs?","bold":true,"color":"black"}',Text4:'{"text":"▼","bold":true,"color":"black"}'}
data merge block 1556 88 411 {Text1:'{"text":"Click here","clickEvent":{"action":"run_command","value":"function sprint_racer_language:lobby/options/player_reset_self"},"bold":true,"color":"gold"}',Text2:'{"text":"to reset","bold":true,"color":"gold"}',Text3:'{"text":"yourself!","bold":true,"color":"gold"}'}

playsound minecraft:entity.ender_dragon.hurt master @s ~ 10000 ~ 100000 .5
scoreboard players set @s join 1