scoreboard players add #egg_help value 1
execute if score #egg_help value matches 12.. run scoreboard players set #egg_help value 1

tellraw @s ["",{"text":"\n\nCheat Eggs:","bold":true}]

execute if score #egg_help value matches 1 if entity @e[tag=w,type=armor_stand,tag=!realms] run tellraw @s ["",{"translate":"sr.cheats.help.lobby"},{"text":" -- 6"}]
execute if score #egg_help value matches 1 if entity @e[tag=w,type=armor_stand,tag=realms] run tellraw @s ["",{"translate":"sr.cheats.help.lobby"},{"text":" -- 7"}]
execute if score #egg_help value matches 1 run tellraw @s ["",{"text":"River Valley","color":"aqua"},{"text":" -- 2"}]
execute if score #egg_help value matches 1 run tellraw @s ["",{"text":"Highlight Stadium","color":"aqua"},{"text":" -- 1"}]
execute if score #egg_help value matches 1 run tellraw @s ["",{"text":"Sakura City","color":"aqua"},{"text":" -- 1"}]
execute if score #egg_help value matches 1 run tellraw @s ["",{"text":"Seaside Village","color":"aqua"},{"text":" -- 1"}]

execute if score #egg_help value matches 2 run tellraw @s ["",{"text":"Laeto Forest","color":"aqua"},{"text":" -- 1"}]
execute if score #egg_help value matches 2 run tellraw @s ["",{"text":"Petra Mountains","color":"aqua"},{"text":" -- 2"}]
execute if score #egg_help value matches 2 run tellraw @s ["",{"text":"Magna Desert","color":"aqua"},{"text":" -- 1"}]
execute if score #egg_help value matches 2 run tellraw @s ["",{"text":"Cinder Caverns","color":"aqua"},{"text":" -- 1"}]
execute if score #egg_help value matches 2 run tellraw @s ["",{"text":"Logmill","color":"aqua"},{"text":" -- 1"}]

execute if score #egg_help value matches 3 run tellraw @s ["",{"text":"Redstone Factory","color":"aqua"},{"text":" -- 1"}]
execute if score #egg_help value matches 3 run tellraw @s ["",{"text":"The Dragon","color":"aqua"},{"text":" -- 1"}]
execute if score #egg_help value matches 3 run tellraw @s ["",{"text":"Suspension Mountain","color":"aqua"},{"text":" -- 1"}]
execute if score #egg_help value matches 3 run tellraw @s ["",{"text":"Highlight City","color":"aqua"},{"text":" -- 2"}]
execute if score #egg_help value matches 3 run tellraw @s ["",{"text":"Green Labyrinth","color":"aqua"},{"text":" -- 1"}]

execute if score #egg_help value matches 4 run tellraw @s ["",{"text":"Iceberg Alley","color":"aqua"},{"text":" -- 1"}]
execute if score #egg_help value matches 4 run tellraw @s ["",{"text":"Hurricane Islands","color":"aqua"},{"text":" -- 1"}]
execute if score #egg_help value matches 4 run tellraw @s ["",{"text":"Crash Course Classic / Neo","color":"aqua"},{"text":" -- 1"}]
execute if score #egg_help value matches 4 run tellraw @s ["",{"text":"The Gauntlet","color":"light_purple"},{"text":" -- 2"}]
execute if score #egg_help value matches 4 run tellraw @s ["",{"text":"Fossil Cove","color":"aqua"},{"text":" -- 1"}]

execute if score #egg_help value matches 5 run tellraw @s ["",{"text":"Frostbite Village","color":"aqua"},{"text":" -- 1"}]
execute if score #egg_help value matches 5 run tellraw @s ["",{"text":"Dead Canyon","color":"aqua"},{"text":" -- 1"}]
execute if score #egg_help value matches 5 run tellraw @s ["",{"text":"Haunted Woodland","color":"aqua"},{"text":" -- 1"}]
execute if score #egg_help value matches 5 run tellraw @s ["",{"text":"Mushroom Cavern","color":"aqua"},{"text":" -- 1"}]
execute if score #egg_help value matches 5 run tellraw @s ["",{"text":"The Loop","color":"aqua"},{"text":" -- 1"}]

execute if score #egg_help value matches 6 run tellraw @s ["",{"text":"Roadroller Park","color":"aqua"},{"text":" -- 2"}]
execute if score #egg_help value matches 6 run tellraw @s ["",{"text":"Miner's Island","color":"aqua"},{"text":" -- 1"}]
execute if score #egg_help value matches 6 run tellraw @s ["",{"text":"Coastal Avenue","color":"aqua"},{"text":" -- 1"}]
execute if score #egg_help value matches 6 run tellraw @s ["",{"text":"Cinder Core","color":"aqua"},{"text":" -- 1"}]
execute if score #egg_help value matches 6 run tellraw @s ["",{"text":"Sacred Village","color":"aqua"},{"text":" -- 1"}]

execute if score #egg_help value matches 7 run tellraw @s ["",{"text":"Monochrome Road","color":"aqua"},{"text":" -- 1"}]
execute if score #egg_help value matches 7 run tellraw @s ["",{"text":"Outer Spaceway","color":"aqua"},{"text":" -- 1"}]
execute if score #egg_help value matches 7 run tellraw @s ["",{"text":"Highlight Resort","color":"aqua"},{"text":" -- 1"}]
execute if score #egg_help value matches 7 run tellraw @s ["",{"text":"Fiery Volcano","color":"aqua"},{"text":" -- 1"}]
execute if score #egg_help value matches 7 run tellraw @s ["",{"text":"Hot Air Docks","color":"aqua"},{"text":" -- 1"}]

execute if score #egg_help value matches 8 run tellraw @s ["",{"text":"Site-X","color":"aqua"},{"text":" -- 1"}]
execute if score #egg_help value matches 8 run tellraw @s ["",{"text":"Undersea Shipyard","color":"aqua"},{"text":" -- 1"}]
execute if score #egg_help value matches 8 run tellraw @s ["",{"text":"Praia de Abril Clássico","color":"aqua"},{"text":" -- 1"}]
execute if score #egg_help value matches 8 run tellraw @s ["",{"text":"Petra Resort","color":"aqua"},{"text":" -- 1"}]
execute if score #egg_help value matches 8 run tellraw @s ["",{"text":"Cargo Bay","color":"aqua"},{"text":" -- 1"}]

execute if score #egg_help value matches 9 run tellraw @s ["",{"text":"Sprint Circuit","color":"aqua"},{"text":" -- 1"}]
execute if score #egg_help value matches 9 run tellraw @s ["",{"text":"Space Colony Luna","color":"aqua"},{"text":" -- 1"}]
execute if score #egg_help value matches 9 run tellraw @s ["",{"text":"Mountain Park","color":"aqua"},{"text":" -- 1"}]
execute if score #egg_help value matches 9 run tellraw @s ["",{"text":"Frostbite Caverns","color":"aqua"},{"text":" -- 1"}]
execute if score #egg_help value matches 9 run tellraw @s ["",{"text":"Retro Synthwave","color":"aqua"},{"text":" -- 1"}]

execute if score #egg_help value matches 10 run tellraw @s ["",{"text":"Shroom Spring","color":"aqua"},{"text":" -- 1"}]
execute if score #egg_help value matches 10 if entity @e[tag=w,type=armor_stand,tag=!realms] run tellraw @s ["",{"text":"Casino Chase","color":"aqua"},{"text":" -- 1"}]
execute if score #egg_help value matches 10 run tellraw @s ["",{"text":"Seaside Joyride","color":"aqua"},{"text":" -- 1"}]
execute if score #egg_help value matches 10 run tellraw @s ["",{"text":"Praia de Abril","color":"aqua"},{"text":" -- 1"}]
execute if score #egg_help value matches 10 run tellraw @s ["",{"text":"Cotton Void","color":"light_purple"},{"text":" -- 1"}]

execute if score #egg_help value matches 11 run tellraw @s ["",{"text":"???","color":"white"},{"text":" -- 2"}]
execute if score #egg_help value matches 11 run tellraw @s ["",{"translate":"sr.cheats.help.all_battle_arenas","color":"red"},{"text":" -- 0"}]

tellraw @s ["",{"text":"(page ","color":"yellow","italic":true},{"score":{"name":"#egg_help","objective":"value"},"color":"yellow","italic":true},{"text":")","color":"yellow","italic":true}]