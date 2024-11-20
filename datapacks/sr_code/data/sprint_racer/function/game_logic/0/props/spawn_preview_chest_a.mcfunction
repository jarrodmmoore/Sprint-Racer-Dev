kill @e[tag=lobbyprop,tag=chestdisplay,tag=cdA]
kill @e[type=item,tag=lobbyprop,tag=cdA]

#center is 1572 90 440

#1 = random
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=1}] run summon armor_stand 1595 79 423 {Tags:["lobbyprop","chestdisplay","cdA","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"black_concrete",count:1}],HandItems:[{},{}],DisabledSlots:2039583}

#2 = chests only
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=2}] run summon armor_stand 1595 79 423 {Tags:["lobbyprop","chestdisplay","cdA","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"chest",count:1}],HandItems:[{},{}],DisabledSlots:2039583}

#3 = capsules only
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=3}] run summon armor_stand 1595 79 423 {Tags:["lobbyprop","chestdisplay","cdA","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"glass",count:1,components:{"minecraft:custom_model_data":1111116}}],HandItems:[{},{}],DisabledSlots:2039583}

#4 = specialty only
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=4}] run summon armor_stand 1595 79 423 {Tags:["lobbyprop","chestdisplay","cdA","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"red_wool",count:1,components:{"minecraft:custom_model_data":1111111}}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=4}] run summon armor_stand 1594 79 422 {Tags:["lobbyprop","chestdisplay","cdA","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"yellow_wool",count:1,components:{"minecraft:custom_model_data":1111112}}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=4}] run summon armor_stand 1596 79 422 {Tags:["lobbyprop","chestdisplay","cdA","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"magenta_wool",count:1,components:{"minecraft:custom_model_data":1111115}}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=4}] run summon armor_stand 1594 79 424 {Tags:["lobbyprop","chestdisplay","cdA","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"lime_wool",count:1,components:{"minecraft:custom_model_data":1111114}}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=4}] run summon armor_stand 1596 79 424 {Tags:["lobbyprop","chestdisplay","cdA","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"light_blue_wool",count:1,components:{"minecraft:custom_model_data":1111113}}],HandItems:[{},{}],DisabledSlots:2039583}

#5 = chests and ender
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=5}] run summon armor_stand 1594 79 423 {Tags:["lobbyprop","chestdisplay","cdA","tpMeUp","tpNudge"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"chest",count:1}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=5}] run summon armor_stand 1595 79 423 {Tags:["lobbyprop","chestdisplay","cdA","tpMeUp","tpNudge"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"ender_chest",count:1}],HandItems:[{},{}],DisabledSlots:2039583}

#6 = chests and enchanting
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=6}] run summon armor_stand 1594 79 423 {Tags:["lobbyprop","chestdisplay","cdA","tpMeUp","tpNudge"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"chest",count:1}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=6}] run summon armor_stand 1595 79 423 {Tags:["lobbyprop","chestdisplay","cdA","tpMeUp","enchtable","tpNudge"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"enchanting_table",count:1,components:{"minecraft:custom_model_data":1111111}}],HandItems:[{},{}],DisabledSlots:2039583}

#7 = chests ender and enchanting
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=7}] run summon armor_stand 1595 79 422 {Tags:["lobbyprop","chestdisplay","cdA","tpMeUp","tpNudge","tpNudge2"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"ender_chest",count:1}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=7}] run summon armor_stand 1594 79 422 {Tags:["lobbyprop","chestdisplay","cdA","tpMeUp","enchtable","tpNudge","tpNudge2"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"enchanting_table",count:1,components:{"minecraft:custom_model_data":1111111}}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=7}] run summon armor_stand 1595 79 423 {Tags:["lobbyprop","chestdisplay","cdA","tpMeUp","tpNudge2"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"chest",count:1}],HandItems:[{},{}],DisabledSlots:2039583}

#8 = capsules and enchanting
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=8}] run summon armor_stand 1594 79 423 {Tags:["lobbyprop","chestdisplay","cdA","tpMeUp","tpNudge"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"glass",count:1,components:{"minecraft:custom_model_data":1111116}}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=8}] run summon armor_stand 1595 79 423 {Tags:["lobbyprop","chestdisplay","cdA","tpMeUp","enchtable","tpNudge"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"enchanting_table",count:1,components:{"minecraft:custom_model_data":1111111}}],HandItems:[{},{}],DisabledSlots:2039583}

#9 = specialty and enchanting
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=9}] run summon armor_stand 1594 79 422 {Tags:["lobbyprop","chestdisplay","cdA","tpMeUp","tpNudge2"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"red_wool",count:1,components:{"minecraft:custom_model_data":1111111}}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=9}] run summon armor_stand 1595 79 422 {Tags:["lobbyprop","chestdisplay","cdA","tpMeUp","tpNudge2"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"yellow_wool",count:1,components:{"minecraft:custom_model_data":1111112}}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=9}] run summon armor_stand 1596 79 422 {Tags:["lobbyprop","chestdisplay","cdA","tpMeUp","tpNudge2"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"magenta_wool",count:1,components:{"minecraft:custom_model_data":1111115}}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=9}] run summon armor_stand 1594 79 423 {Tags:["lobbyprop","chestdisplay","cdA","tpMeUp","tpNudge2"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"lime_wool",count:1,components:{"minecraft:custom_model_data":1111114}}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=9}] run summon armor_stand 1596 79 423 {Tags:["lobbyprop","chestdisplay","cdA","tpMeUp","tpNudge2"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"light_blue_wool",count:1,components:{"minecraft:custom_model_data":1111113}}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=9}] run summon armor_stand 1595 79 423 {Tags:["lobbyprop","chestdisplay","cdA","tpMeUp","tpNudge2","enchtable"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"enchanting_table",count:1,components:{"minecraft:custom_model_data":1111111}}],HandItems:[{},{}],DisabledSlots:2039583}

#10 = ender chest only
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=10}] run summon armor_stand 1595 79 423 {Tags:["lobbyprop","chestdisplay","cdA","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"ender_chest",count:1}],HandItems:[{},{}],DisabledSlots:2039583}

#11 = buffet
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=11}] run summon armor_stand 1594 79 422 {Tags:["lobbyprop","chestdisplay","cdA","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"ender_chest",count:1}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=11}] run summon armor_stand 1595 79 422 {Tags:["lobbyprop","chestdisplay","cdA","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"red_wool",count:1,components:{"minecraft:custom_model_data":1111111}}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=11}] run summon armor_stand 1596 79 422 {Tags:["lobbyprop","chestdisplay","cdA","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"yellow_wool",count:1,components:{"minecraft:custom_model_data":1111112}}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=11}] run summon armor_stand 1594 79 423 {Tags:["lobbyprop","chestdisplay","cdA","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"light_blue_wool",count:1,components:{"minecraft:custom_model_data":1111113}}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=11}] run summon armor_stand 1595 79 423 {Tags:["lobbyprop","chestdisplay","cdA","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"magenta_wool",count:1,components:{"minecraft:custom_model_data":1111115}}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=11}] run summon armor_stand 1596 79 423 {Tags:["lobbyprop","chestdisplay","cdA","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"lime_wool",count:1,components:{"minecraft:custom_model_data":1111114}}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=11}] run summon armor_stand 1594 79 424 {Tags:["lobbyprop","chestdisplay","cdA","tpMeUp","enchtable"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"enchanting_table",count:1,components:{"minecraft:custom_model_data":1111111}}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=11}] run summon armor_stand 1595 79 424 {Tags:["lobbyprop","chestdisplay","cdA","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"chest",count:1}],HandItems:[{},{}],DisabledSlots:2039583}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=11}] run summon armor_stand 1596 79 424 {Tags:["lobbyprop","chestdisplay","cdA","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"glass",count:1,components:{"minecraft:custom_model_data":1111116}}],HandItems:[{},{}],DisabledSlots:2039583}


execute as @e[tag=tpNudge] at @s run tp @s ~.5 ~ ~
execute as @e[tag=tpNudge2] at @s run tp @s ~ ~ ~.5
execute as @e[tag=tpMeUp] at @s run tp @s ~ ~1 ~

#execute as @e[tag=cdA,tag=enchtable] at @s run summon item ~ ~1.9 ~ {Tags:["lobbyprop","cdA"],PickupDelay:32767,Age:-32768,NoGravity:1b,Invulnerable:1b,Item:{id:"minecraft:book",count:1,components:{"minecraft:custom_data":{stay:1b}}}}

tag @e[tag=tpMeUp] remove tpMeUp
tag @e[tag=tpNudge] remove tpNudge
tag @e[tag=tpNudge2] remove tpNudge2

function sprint_racer:game_logic/0/misc_lobby_happenings/spawn_container_name_race