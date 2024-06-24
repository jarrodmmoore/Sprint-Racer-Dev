bossbar set lap1 players

scoreboard players set #bbPersonalize value 0
execute if score #hudMode value matches 1 if entity @e[tag=w,type=armor_stand,tag=!hideLaps,scores={lap=1..10}] run function sprint_racer:game_logic/1/lap_bossbar/lap_bossbar_index
execute if score #hudMode value matches 3 if entity @e[tag=w,type=armor_stand,tag=!hideLaps,scores={lap=1..10}] run function sprint_racer:game_logic/1/lap_bossbar/lap_bossbar_index

bossbar set sr_node1 players
bossbar set sr_node2 players
bossbar set sr_node3 players
bossbar set sr_node4 players
bossbar set sr_node5 players
bossbar set sr_node6 players
bossbar set sr_node7 players
bossbar set sr_node8 players
bossbar set sr_node9 players
bossbar set sr_node10 players
bossbar set sr_node11 players
bossbar set sr_node12 players
bossbar set sr_node13 players
bossbar set sr_node14 players
bossbar set sr_node15 players
bossbar set sr_node16 players
bossbar set sr_node17 players
bossbar set sr_node18 players
bossbar set sr_node19 players
bossbar set sr_node20 players
bossbar set sr_node21 players
bossbar set sr_node22 players
bossbar set sr_node23 players
bossbar set sr_node24 players
bossbar set sr_node25 players
bossbar set sr_node26 players
bossbar set sr_node27 players
bossbar set sr_node28 players
bossbar set sr_node29 players
bossbar set sr_node30 players
bossbar set sr_node31 players
bossbar set sr_node32 players