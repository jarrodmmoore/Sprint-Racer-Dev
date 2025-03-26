execute if score #AIBC_visualize value matches 1 if entity @s[scores={AIBC_dir1=1..}] run summon marker ~ ~ ~-1 {Particle:{type:"block",block_state:{Name:"air"}},Duration:100,Tags:["BCtrail","setDir","dir1"]}
scoreboard players operation @e[tag=BCtrail,tag=setDir,type=marker] AIBC_dir1 = @s AIBC_dir1
tag @e[tag=setDir,type=marker] remove setDir

execute if score #AIBC_visualize value matches 1 if entity @s[scores={AIBC_dir2=1..}] run summon marker ~ ~ ~-1 {Particle:{type:"block",block_state:{Name:"air"}},Duration:100,Tags:["BCtrail","setDir","dir2"]}
scoreboard players operation @e[tag=BCtrail,tag=setDir,type=marker] AIBC_dir1 = @s AIBC_dir2
tag @e[tag=setDir,type=marker] remove setDir

execute if score #AIBC_visualize value matches 1 if entity @s[scores={AIBC_dir3=1..}] run summon marker ~ ~ ~-1 {Particle:{type:"block",block_state:{Name:"air"}},Duration:100,Tags:["BCtrail","setDir","dir3"]}
scoreboard players operation @e[tag=BCtrail,tag=setDir,type=marker] AIBC_dir1 = @s AIBC_dir3
tag @e[tag=setDir,type=marker] remove setDir

execute if score #AIBC_visualize value matches 1 if entity @s[scores={AIBC_dir4=1..}] run summon marker ~ ~ ~-1 {Particle:{type:"block",block_state:{Name:"air"}},Duration:100,Tags:["BCtrail","setDir","dir4"]}
scoreboard players operation @e[tag=BCtrail,tag=setDir,type=marker] AIBC_dir1 = @s AIBC_dir4
tag @e[tag=setDir,type=marker] remove setDir

execute if score #AIBC_visualize value matches 1 if entity @s[scores={AIBC_event=3..6,AIBC_condition=1..}] run summon marker ~ ~ ~-1 {Particle:{type:"block",block_state:{Name:"air"}},Duration:100,Tags:["BCtrail","setDir","dir5"]}
execute if score #AIBC_visualize value matches 1 if entity @s[scores={AIBC_event=10..12,AIBC_condition=1..}] run summon marker ~ ~ ~-1 {Particle:{type:"block",block_state:{Name:"air"}},Duration:100,Tags:["BCtrail","setDir","dir5"]}
scoreboard players operation @e[tag=BCtrail,tag=setDir,type=marker] AIBC_dir1 = @s AIBC_condition
tag @e[tag=setDir,type=marker] remove setDir

execute if entity @s[scores={AIBC_event=2,AIBC_condition=1..}] run summon marker ~ ~ ~-1 {Particle:{type:"block",block_state:{Name:"air"}},Duration:100,Tags:["BCtrail","setDir","pearllook"]}
scoreboard players operation @e[tag=BCtrail,tag=setDir,type=marker] AIBC_dir1 = @s AIBC_condition
tag @e[tag=setDir,type=marker] remove setDir

execute if entity @s[scores={AIBC_spread=1}] run particle mycelium ~ ~.5 ~ .5 0 .5 0 5
execute if entity @s[scores={AIBC_spread=2}] run particle mycelium ~ ~.5 ~ 1 0 1 0 10
execute if entity @s[scores={AIBC_spread=3}] run particle mycelium ~ ~.5 ~ 1.5 0 1.5 0 15
execute if entity @s[scores={AIBC_spread=4}] run particle mycelium ~ ~.5 ~ 2 0 2 0 20
execute if entity @s[scores={AIBC_spread=5}] run particle mycelium ~ ~.5 ~ 2.5 0 2.5 0 25

execute if entity @s[tag=hasOptimalSpread,scores={AIBC_spread=1..}] run particle dust{color:[1.0,1.0,1.0],scale:1} ^ ^.2 ^1 0 0 0 1 1 force @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{bc_connector:1b}}}}]
execute if entity @s[tag=hasOptimalSpread,scores={AIBC_spread=2..}] run particle dust{color:[1.0,1.0,1.0],scale:1} ^ ^.2 ^2 0 0 0 1 1 force @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{bc_connector:1b}}}}]
execute if entity @s[tag=hasOptimalSpread,scores={AIBC_spread=3..}] run particle dust{color:[1.0,1.0,1.0],scale:1} ^ ^.2 ^3 0 0 0 1 1 force @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{bc_connector:1b}}}}]
execute if entity @s[tag=hasOptimalSpread,scores={AIBC_spread=4..}] run particle dust{color:[1.0,1.0,1.0],scale:1} ^ ^.2 ^4 0 0 0 1 1 force @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{bc_connector:1b}}}}]
execute if entity @s[tag=hasOptimalSpread,scores={AIBC_spread=5..}] run particle dust{color:[1.0,1.0,1.0],scale:1} ^ ^.2 ^5 0 0 0 1 1 force @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{bc_connector:1b}}}}]

execute if entity @s[scores={AIBC_event=1}] run particle falling_dust{block_state:"minecraft:emerald_block"} ~ ~.2 ~ .3 0 .3 1 5
execute if entity @s[scores={AIBC_event=6}] run particle falling_dust{block_state:"minecraft:lapis_block"} ~ ~.2 ~ .3 0 .3 1 5
execute if entity @s[scores={AIBC_event=6}] run particle cloud ~ ~5 ~ .1 2.5 .1 0 1
execute if entity @s[scores={AIBC_event=7,AIBC_condition=1..2}] run particle firework ~ ~ ~ .85 0 .85 0 10
execute if entity @s[scores={AIBC_event=7,AIBC_condition=3..5}] run particle firework ~ ~ ~ 1.5 0 1.5 0 20
execute if entity @s[scores={AIBC_event=7,AIBC_condition=6..10}] run particle firework ~ ~ ~ 3 0 3 0 30
execute if entity @s[scores={AIBC_event=8,AIBC_condition=1..2}] run particle smoke ~ ~ ~ .85 0 .85 0 10
execute if entity @s[scores={AIBC_event=8,AIBC_condition=3..5}] run particle smoke ~ ~ ~ 1.5 0 1.5 0 20
execute if entity @s[scores={AIBC_event=8,AIBC_condition=6..10}] run particle smoke ~ ~ ~ 3 0 3 0 30
execute if entity @s[scores={AIBC_event=9,AIBC_condition=1..5}] run particle happy_villager ~ ~ ~ 5 0 5 0 10
execute if entity @s[scores={AIBC_event=9,AIBC_condition=6..10}] run particle happy_villager ~ ~ ~ 10 0 10 0 20
execute if entity @s[scores={AIBC_event=9,AIBC_condition=11..15}] run particle happy_villager ~ ~ ~ 15 0 15 0 30

execute if entity @s[tag=requireGround] run particle block{block_state:"minecraft:stone"} ~ ~.2 ~ .3 0 .3 1 1
execute if entity @s[tag=elytraPath] run particle cloud ~ ~.2 ~ .3 .3 .3 .05 1