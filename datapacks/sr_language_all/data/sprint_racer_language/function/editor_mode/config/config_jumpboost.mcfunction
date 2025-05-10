scoreboard players add @s[scores={dropWitchEgg=1..}] jump 0
scoreboard players set @s[scores={dropWitchEgg=1..,jump=..0}] jump 1
tellraw @s[scores={dropWitchEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropWitchEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropWitchEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropWitchEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropWitchEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropWitchEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropWitchEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropWitchEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropWitchEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropWitchEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropWitchEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropWitchEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropWitchEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropWitchEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropWitchEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropWitchEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropWitchEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropWitchEgg=1..}] ["",{text:" "}]
tellraw @s[scores={dropWitchEgg=1..}] ["",{text:"==\\/==",color:"green",bold:true},{text:" "},{translate:"sr.editor.config.jumpboost.name",color:"green",bold:true},{text:" "},{text:"==\\/==",color:"green",bold:true}]
tellraw @s[scores={dropWitchEgg=1..}] ["",{translate:"sr.editor.config.jumpboost.intensity",color:"white",bold:true},{score:{name:"@s",objective:"jump",color:"white",bold:false}},{text:"  "},{text:"[+]",color:"green",click_event:{action:"run_command",command:"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/jumpboost_menu/increment_jump"},hover_event:{action:"show_text",value:[{translate:"sr.basic.increase"}]}},{text:"  "},{text:"[-]",color:"red",click_event:{action:"run_command",command:"/execute as @s[gamemode=creative] run function sprint_racer:game_logic/2/jumpboost_menu/decrement_jump"},hover_event:{action:"show_text",value:[{translate:"sr.basic.decrease"}]}}]

scoreboard players reset @s dropWitchEgg