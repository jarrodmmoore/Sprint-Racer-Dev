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
tellraw @s[scores={dropWitchEgg=1..}] ["",{translate:"sr.editor.config.jumpboost.intensity",color:"white",bold:true},{score:{name:"@s",objective:"jump"}},{text:"  "},{text:"[+]",color:"green",click_event:{action:"run_command",command:"/trigger tEditor set 1263"},hover_event:{action:"show_text",value:[{translate:"sr.basic.increase"}]}},{text:"  "},{text:"[-]",color:"red",click_event:{action:"run_command",command:"/trigger tEditor set 1264"},hover_event:{action:"show_text",value:[{translate:"sr.basic.decrease"}]}}]

scoreboard players reset @s dropWitchEgg