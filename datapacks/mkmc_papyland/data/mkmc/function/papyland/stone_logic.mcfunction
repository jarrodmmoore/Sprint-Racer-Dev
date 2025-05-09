#when a spiritual stone dissapears from the map (gets picked up or destroyed) we'll consider it collected
execute if block 9483 37 -8484 air unless entity @e[type=item,tag=papyland_stone_grass] run function mkmc:papyland/collected_stone_grass
execute if block 9479 37 -8484 air unless entity @e[type=item,tag=papyland_stone_fire] run function mkmc:papyland/collected_stone_fire
execute if block 9475 37 -8484 air unless entity @e[type=item,tag=papyland_stone_water] run function mkmc:papyland/collected_stone_water

#when all stones are collected, open the temple door
execute unless block 9477 39 -8475 air unless block 9483 37 -8484 air unless block 9479 37 -8484 air unless block 9475 37 -8484 air run function mkmc:papyland/collected_all_stones