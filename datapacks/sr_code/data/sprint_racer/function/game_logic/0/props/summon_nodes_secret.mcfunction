#nodes here are all hard-coded!
#they get deleted while the lobby is inactive in order to reduce entity strain

#effects
execute positioned 1607 19 392 run function sprint_racer:game_logic/0/props/summon_node/speedboost
execute positioned 1609 19 392 run function sprint_racer:game_logic/0/props/summon_node/speedboost
execute positioned 1611 19 392 run function sprint_racer:game_logic/0/props/summon_node/speedboost
execute positioned 1613 19 392 run function sprint_racer:game_logic/0/props/summon_node/speedboost

execute positioned 1608 12 372 run function sprint_racer:game_logic/0/props/summon_node/super_speedboost
execute positioned 1610 12 372 run function sprint_racer:game_logic/0/props/summon_node/super_speedboost
execute positioned 1612 12 372 run function sprint_racer:game_logic/0/props/summon_node/super_speedboost

execute positioned 1603 14 354 run function sprint_racer:game_logic/0/props/summon_node/jumpboost_6

#item chests
execute positioned 1580 12 411 run function sprint_racer:game_logic/0/props/summon_node/item_chest
execute positioned 1580 12 414 run function sprint_racer:game_logic/0/props/summon_node/item_chest
execute positioned 1580 12 417 run function sprint_racer:game_logic/0/props/summon_node/item_chest
execute positioned 1577 19 413 run function sprint_racer:game_logic/0/props/summon_node/item_chest
execute positioned 1580 19 413 run function sprint_racer:game_logic/0/props/summon_node/item_chest
execute positioned 1583 19 413 run function sprint_racer:game_logic/0/props/summon_node/item_chest

#fishing rod item chest
execute positioned 1587 13 445 run function sprint_racer:game_logic/0/props/summon_node/capsule_fishing_rod

#enchant tables
execute positioned 1596 11 388 run function sprint_racer:game_logic/0/props/summon_node/enchanting_table
execute positioned 1557 13 454 run function sprint_racer:game_logic/0/props/summon_node/enchanting_table

#capsules
execute positioned 1550 10 356 run function sprint_racer:game_logic/0/props/summon_node/capsule
execute positioned 1619 11 405 run function sprint_racer:game_logic/0/props/summon_node/capsule
execute positioned 1603 12 450 run function sprint_racer:game_logic/0/props/summon_node/capsule
execute positioned 1622 18 354 run function sprint_racer:game_logic/0/props/summon_node/capsule

#egg
execute positioned 1575 19 352 positioned ~.35 ~ ~.35 run summon minecraft:armor_stand ~ ~-1.4 ~ {Tags:["cheategg","lobbyprop"],NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:dragon_egg",count:1}],CustomName:{text:"UNDERWORLD",bold:true,italic:false}}