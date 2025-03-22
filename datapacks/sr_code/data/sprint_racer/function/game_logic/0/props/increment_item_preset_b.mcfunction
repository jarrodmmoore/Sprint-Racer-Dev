scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] itemPresetB 1
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetB=12..}] itemPresetB 1

execute unless score global gameState matches 0 run return 0
function sprint_racer:game_logic/0/props/spawn_preview_chest_b

#dev feedback
execute unless entity @s[type=player] run return 0
execute if score #test3 value matches 1 run tellraw @s ["",{text:"battle item rule: ",color:"red"},{text:"random"}]
execute if score #test3 value matches 2 run tellraw @s ["",{text:"battle item rule: ",color:"red"},{text:"chests"}]
execute if score #test3 value matches 3 run tellraw @s ["",{text:"battle item rule: ",color:"red"},{text:"capsules"}]
execute if score #test3 value matches 4 run tellraw @s ["",{text:"battle item rule: ",color:"red"},{text:"specialty"}]
execute if score #test3 value matches 5 run tellraw @s ["",{text:"battle item rule: ",color:"red"},{text:"chests and ender"}]
execute if score #test3 value matches 6 run tellraw @s ["",{text:"battle item rule: ",color:"red"},{text:"chests and enchanting"}]
execute if score #test3 value matches 7 run tellraw @s ["",{text:"battle item rule: ",color:"red"},{text:"chests ender and enchanting"}]
execute if score #test3 value matches 8 run tellraw @s ["",{text:"battle item rule: ",color:"red"},{text:"capsules and enchanting"}]
execute if score #test3 value matches 9 run tellraw @s ["",{text:"battle item rule: ",color:"red"},{text:"specialty and enchanting"}]
execute if score #test3 value matches 10 run tellraw @s ["",{text:"battle item rule: ",color:"red"},{text:"ender chest only"}]
execute if score #test3 value matches 11 run tellraw @s ["",{text:"battle item rule: ",color:"red"},{text:"buffet"}]