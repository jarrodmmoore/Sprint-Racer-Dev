#...

tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]
tellraw @s ["",{"text":"==\\/==","color":"blue","bold":true},{"text":" "},{"translate":"sr.cheats.item_slot_limit","color":"blue","bold":true},{"text":" "},{"text":"==\\/==","color":"blue","bold":true}]

execute if score #cheatSlotLimit value matches 10.. run tellraw @s ["",{"translate":"sr.cheats.limit","bold":true},{"text":" "},{"translate":"sr.cheats.unlimited"},{"text":" "},{"text":" "},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger csl_trigger set 1"},"hoverEvent":{"action":"show_text","contents":"Increase"}},{"text":"  "},{"text":"[-]","color":"red","clickEvent":{"action":"run_command","value":"/trigger csl_trigger set 2"},"hoverEvent":{"action":"show_text","contents":"Decrease"}}]
execute if score #cheatSlotLimit value matches ..9 run tellraw @s ["",{"translate":"sr.cheats.limit","bold":true},{"text":" "},{"score":{"name":"#cheatSlotLimit","objective":"value"}},{"text":" "},{"text":" "},{"text":"[+]","color":"green","clickEvent":{"action":"run_command","value":"/trigger csl_trigger set 1"},"hoverEvent":{"action":"show_text","contents":"Increase"}},{"text":"  "},{"text":"[-]","color":"red","clickEvent":{"action":"run_command","value":"/trigger csl_trigger set 2"},"hoverEvent":{"action":"show_text","contents":"Decrease"}}]

tellraw @s ["",{"text":"==/\\==","color":"blue","bold":true},{"text":" "},{"translate":"sr.cheats.item_slot_limit","color":"blue","bold":true},{"text":" "},{"text":"==/\\==","color":"blue","bold":true}]

#sound
execute at @s run playsound minecraft:sr_hitsounds/hit3 master @s ~ ~ ~ 1 1.6

scoreboard players enable @s csl_trigger