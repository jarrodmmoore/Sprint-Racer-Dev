kill @e[tag=lobbyprop,tag=chestdisplay,tag=cdB]
kill @e[type=item,tag=lobbyprop,tag=cdB]

#center is 1572 90 440

#1 = random
execute if entity @e[tag=w,scores={itemPresetB=1}] run summon armor_stand 1591 79 423 {Tags:["lobbyprop","chestdisplay","cdB","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"black_concrete",count:1}],HandItems:[{},{}],DisabledSlots:2039583}

#2 = chests only
execute if entity @e[tag=w,scores={itemPresetB=2}] run summon armor_stand 1591 79 423 {Tags:["lobbyprop","chestdisplay","cdB","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"chest",count:1}],HandItems:[{},{}],DisabledSlots:2039583}

#3 = capsules only
execute if entity @e[tag=w,scores={itemPresetB=3}] run summon armor_stand 1591 79 423 {Tags:["lobbyprop","chestdisplay","cdB","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"glass",count:1,components:{"minecraft:custom_model_data":1111116}}],HandItems:[{},{}],DisabledSlots:2039583}

#4 = specialty only
execute if entity @e[tag=w,scores={itemPresetB=4}] run summon armor_stand 1591 79 423 {Tags:["lobbyprop","chestdisplay","cdB","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"red_wool",count:1,components:{"minecraft:custom_model_data":1111111}}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,scores={itemPresetB=4}] run summon armor_stand 1590 79 422 {Tags:["lobbyprop","chestdisplay","cdB","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"yellow_wool",count:1,components:{"minecraft:custom_model_data":1111112}}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,scores={itemPresetB=4}] run summon armor_stand 1592 79 422 {Tags:["lobbyprop","chestdisplay","cdB","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"magenta_wool",count:1,components:{"minecraft:custom_model_data":1111115}}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,scores={itemPresetB=4}] run summon armor_stand 1590 79 424 {Tags:["lobbyprop","chestdisplay","cdB","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"lime_wool",count:1,components:{"minecraft:custom_model_data":1111114}}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,scores={itemPresetB=4}] run summon armor_stand 1592 79 424 {Tags:["lobbyprop","chestdisplay","cdB","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"light_blue_wool",count:1,components:{"minecraft:custom_model_data":1111113}}],HandItems:[{},{}],DisabledSlots:2039583}

#5 = chests and ender
execute if entity @e[tag=w,scores={itemPresetB=5}] run summon armor_stand 1590 79 423 {Tags:["lobbyprop","chestdisplay","cdB","tpMeUp","tpNudge"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"chest",count:1}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,scores={itemPresetB=5}] run summon armor_stand 1591 79 423 {Tags:["lobbyprop","chestdisplay","cdB","tpMeUp","tpNudge"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"ender_chest",count:1}],HandItems:[{},{}],DisabledSlots:2039583}

#6 = chests and enchanting
execute if entity @e[tag=w,scores={itemPresetB=6}] run summon armor_stand 1590 79 423 {Tags:["lobbyprop","chestdisplay","cdB","tpMeUp","tpNudge"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"chest",count:1}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,scores={itemPresetB=6}] run summon armor_stand 1591 79 423 {Tags:["lobbyprop","chestdisplay","cdB","tpMeUp","enchtable","tpNudge"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"enchanting_table",count:1,components:{"minecraft:custom_model_data":1111111}}],HandItems:[{},{}],DisabledSlots:2039583}

#7 = chests ender and enchanting
execute if entity @e[tag=w,scores={itemPresetB=7}] run summon armor_stand 1591 79 422 {Tags:["lobbyprop","chestdisplay","cdB","tpMeUp","tpNudge","tpNudge2"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"ender_chest",count:1}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,scores={itemPresetB=7}] run summon armor_stand 1590 79 422 {Tags:["lobbyprop","chestdisplay","cdB","tpMeUp","enchtable","tpNudge","tpNudge2"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"enchanting_table",count:1,components:{"minecraft:custom_model_data":1111111}}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,scores={itemPresetB=7}] run summon armor_stand 1591 79 423 {Tags:["lobbyprop","chestdisplay","cdB","tpMeUp","tpNudge2"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"chest",count:1}],HandItems:[{},{}],DisabledSlots:2039583}

#8 = capsules and enchanting
execute if entity @e[tag=w,scores={itemPresetB=8}] run summon armor_stand 1590 79 423 {Tags:["lobbyprop","chestdisplay","cdB","tpMeUp","tpNudge"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"glass",count:1,components:{"minecraft:custom_model_data":1111116}}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,scores={itemPresetB=8}] run summon armor_stand 1591 79 423 {Tags:["lobbyprop","chestdisplay","cdB","tpMeUp","enchtable","tpNudge"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"enchanting_table",count:1,components:{"minecraft:custom_model_data":1111111}}],HandItems:[{},{}],DisabledSlots:2039583}

#9 = specialty and enchanting
execute if entity @e[tag=w,scores={itemPresetB=9}] run summon armor_stand 1590 79 422 {Tags:["lobbyprop","chestdisplay","cdB","tpMeUp","tpNudge2"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"red_wool",count:1,components:{"minecraft:custom_model_data":1111111}}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,scores={itemPresetB=9}] run summon armor_stand 1591 79 422 {Tags:["lobbyprop","chestdisplay","cdB","tpMeUp","tpNudge2"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"yellow_wool",count:1,components:{"minecraft:custom_model_data":1111112}}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,scores={itemPresetB=9}] run summon armor_stand 1592 79 422 {Tags:["lobbyprop","chestdisplay","cdB","tpMeUp","tpNudge2"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"magenta_wool",count:1,components:{"minecraft:custom_model_data":1111115}}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,scores={itemPresetB=9}] run summon armor_stand 1590 79 423 {Tags:["lobbyprop","chestdisplay","cdB","tpMeUp","tpNudge2"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"lime_wool",count:1,components:{"minecraft:custom_model_data":1111114}}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,scores={itemPresetB=9}] run summon armor_stand 1592 79 423 {Tags:["lobbyprop","chestdisplay","cdB","tpMeUp","tpNudge2"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"light_blue_wool",count:1,components:{"minecraft:custom_model_data":1111113}}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,scores={itemPresetB=9}] run summon armor_stand 1591 79 423 {Tags:["lobbyprop","chestdisplay","cdB","tpMeUp","tpNudge2","enchtable"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"enchanting_table",count:1,components:{"minecraft:custom_model_data":1111111}}],HandItems:[{},{}],DisabledSlots:2039583}

#10 = ender chest only
execute if entity @e[tag=w,scores={itemPresetB=10}] run summon armor_stand 1591 79 423 {Tags:["lobbyprop","chestdisplay","cdB","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"ender_chest",count:1}],HandItems:[{},{}],DisabledSlots:2039583}

#11 = buffet
execute if entity @e[tag=w,scores={itemPresetB=11}] run summon armor_stand 1590 79 422 {Tags:["lobbyprop","chestdisplay","cdB","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"ender_chest",count:1}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,scores={itemPresetB=11}] run summon armor_stand 1591 79 422 {Tags:["lobbyprop","chestdisplay","cdB","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"red_wool",count:1,components:{"minecraft:custom_model_data":1111111}}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,scores={itemPresetB=11}] run summon armor_stand 1592 79 422 {Tags:["lobbyprop","chestdisplay","cdB","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"yellow_wool",count:1,components:{"minecraft:custom_model_data":1111112}}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,scores={itemPresetB=11}] run summon armor_stand 1590 79 423 {Tags:["lobbyprop","chestdisplay","cdB","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"light_blue_wool",count:1,components:{"minecraft:custom_model_data":1111113}}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,scores={itemPresetB=11}] run summon armor_stand 1591 79 423 {Tags:["lobbyprop","chestdisplay","cdB","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"magenta_wool",count:1,components:{"minecraft:custom_model_data":1111115}}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,scores={itemPresetB=11}] run summon armor_stand 1592 79 423 {Tags:["lobbyprop","chestdisplay","cdB","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"lime_wool",count:1,components:{"minecraft:custom_model_data":1111114}}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,scores={itemPresetB=11}] run summon armor_stand 1590 79 424 {Tags:["lobbyprop","chestdisplay","cdB","tpMeUp","enchtable"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"enchanting_table",count:1,components:{"minecraft:custom_model_data":1111111}}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,scores={itemPresetB=11}] run summon armor_stand 1591 79 424 {Tags:["lobbyprop","chestdisplay","cdB","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"chest",count:1}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,scores={itemPresetB=11}] run summon armor_stand 1592 79 424 {Tags:["lobbyprop","chestdisplay","cdB","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"glass",count:1,components:{"minecraft:custom_model_data":1111116}}],HandItems:[{},{}],DisabledSlots:2039583}


execute as @e[tag=tpNudge] at @s run tp @s ~.5 ~ ~
execute as @e[tag=tpNudge2] at @s run tp @s ~ ~ ~.5
execute as @e[tag=tpMeUp] at @s run tp @s ~ ~1 ~

#execute as @e[tag=cdB,tag=enchtable] at @s run summon item ~ ~1.9 ~ {Tags:["lobbyprop","cdB"],PickupDelay:32767,Age:-32768,NoGravity:1b,Invulnerable:1b,Item:{id:"minecraft:book",count:1,components:{"minecraft:custom_data":{stay:1b}}}}

tag @e[tag=tpMeUp] remove tpMeUp
tag @e[tag=tpNudge] remove tpNudge
tag @e[tag=tpNudge2] remove tpNudge2

function sprint_racer:game_logic/0/misc_lobby_happenings/spawn_container_name_battle