#bring up extra hotbar options when things are selected
execute if entity @e[tag=selected,sort=nearest,type=marker] run tag @s add selecting

#special controls for AI breadcrumbs
execute if entity @s[tag=executor] unless entity @e[tag=selected] if entity @e[distance=..3,tag=AIBC] run tag @s add nearAIBC
execute if entity @s[tag=executor] unless entity @e[tag=selected] if entity @e[distance=..3,tag=AIBC] run tag @e[distance=..3,tag=AIBC,limit=1,sort=nearest] add selectAIBC
execute as @e[tag=selectAIBC,tag=AIBC,type=marker] at @s run particle falling_dust{block_state:"minecraft:red_concrete"} ~ ~ ~ .2 .2 .2 0 5 normal

#special controls for chests
execute if entity @s[tag=executor] unless entity @e[tag=selected] if entity @e[distance=..3,tag=itemchest] run tag @s add nearChest
execute if entity @s[tag=executor] unless entity @e[tag=selected] if entity @e[distance=..3,tag=itemchest] run tag @e[distance=..3,tag=itemchest,limit=1,sort=nearest] add selectChest
execute as @e[tag=selectChest,tag=itemchest,type=marker] at @s run particle falling_dust{block_state:"minecraft:orange_concrete"} ~ ~ ~ .2 .2 .2 0 5 normal

#special controls for checkpoints/finline
execute if entity @s[tag=executor] unless entity @e[tag=selected] if entity @e[distance=..3,tag=finishline] run tag @s add nearCheck
execute if entity @s[tag=executor,tag=!nearCheck] unless entity @e[tag=selected] if entity @e[distance=..3,tag=checkpoint] run tag @s add nearCheck
execute if entity @s[tag=executor] unless entity @e[tag=selected] if entity @e[distance=..3,tag=finishline] run tag @e[distance=..3,tag=finishline,limit=1,sort=nearest] add selectCheck
execute if entity @s[tag=executor] unless entity @e[tag=selected] unless entity @e[distance=..3,tag=finishline] if entity @e[distance=..3,tag=checkpoint] run tag @e[distance=..3,tag=checkpoint,limit=1,sort=nearest] add selectCheck
execute as @e[tag=selectCheck,type=marker] at @s run particle falling_dust{block_state:"minecraft:white_concrete"} ~ ~ ~ .2 .2 .2 0 5 normal

#convert armor stands to area effect clouds (NO LONGER NEEDED)
#execute as @e[tag=node,type=armor_stand] at @s run function sprint_racer:game_logic/2/convert_armor_stand_to_aec/_index

#hotbar display
function sprint_racer_language:_dlc_2/editor_mode/hotbar_display_new2

#drop egg, bring up config menus
execute if entity @s[scores={dropCowEgg=1..}] run function sprint_racer_language:editor_mode/config/config_finishline
execute if entity @s[scores={dropSheepEgg=1..}] run function sprint_racer_language:editor_mode/config/config_checkpoint
execute if entity @s[scores={dropVillagerEgg=1..}] run function sprint_racer_language:_dlc_3/editor_mode/config/config_itemchest
execute if entity @s[scores={dropWitchEgg=1..}] run function sprint_racer_language:editor_mode/config/config_jumpboost
execute if entity @s[scores={dropDrownedEgg=1..}] run function sprint_racer_language:_dlc_1/editor_mode/config/config_playerstart
execute if entity @s[scores={dropBlazeEgg=1..}] run function sprint_racer_language:editor_mode/config/config_speedboost
execute if entity @s[scores={dropSpiderEgg=1..}] run function sprint_racer_language:editor_mode/config/config_resistance
execute if entity @s[scores={dropBatEgg=1..}] run function sprint_racer_language:editor_mode/config/config_elytrajump
execute if entity @s[scores={dropEndermanEgg=1..}] run function sprint_racer_language:editor_mode/config/config_teleporter
execute if entity @s[scores={dropEndermiteEgg=1..}] run function sprint_racer_language:editor_mode/config/config_scriptmove
execute if entity @s[scores={dropPigEgg=1..}] run function sprint_racer_language:_dlc_3/editor_mode/config/config_breadcrumb
execute if entity @s[scores={dropRedDye=1..}] run function sprint_racer_language:_dlc_3/editor_mode/config/edit_breadcrumb
execute if entity @s[scores={dropOrangeDye=1..}] run function sprint_racer_language:_dlc_3/editor_mode/config/edit_itemchest
execute if entity @s[scores={dropWhiteDye=1..}] at @s run function sprint_racer:game_logic/2/index_checkpoint_edit
execute if entity @s[scores={dropStick=1..}] at @s run function sprint_racer_language:_dlc_3/editor_mode/config/config_connector
execute if entity @s[scores={dropChickEgg=1..}] at @s run function sprint_racer_language:_dlc_3/editor_mode/config/config_target

#tag clean-up
tag @s remove nearAIBC
tag @e[tag=selectAIBC,type=marker] remove selectAIBC
tag @s remove nearChest
tag @e[tag=selectChest,type=marker] remove selectChest
tag @s remove nearCheck
tag @e[tag=selectCheck,type=marker] remove selectCheck

#setting checkpoint visuals
execute if entity @s[tag=setVisualLine] run function sprint_racer:game_logic/2/checkpoint_menu_edit/visual_line/listen
tag @s[tag=swappedHands] remove swappedHands

#throw snowball to select the nearest unselected node
execute if entity @s[scores={snowball=1..}] run tag @e[sort=nearest,limit=1,tag=!selected,tag=node,tag=!NOSELECT] add selected
execute if entity @s[scores={snowball=1..}] run scoreboard players reset @s snowball
kill @e[type=snowball,distance=..2]

#drop barrier to deselect all selected nodes
execute if entity @s[scores={dropBarrier=1..}] run effect clear @e[tag=selected,tag=node]
execute if entity @s[scores={dropBarrier=1..}] run tag @e[tag=selected,tag=node] remove selected
execute if entity @s[scores={dropBarrier=1..}] run scoreboard players reset @s dropBarrier

#throw ender pearl to make all selected nodes face you
execute if entity @s[scores={enderPearl=1..}] as @e[tag=node,tag=selected] at @s run tp @s ~ ~ ~ facing entity @a[sort=nearest,limit=1,scores={playerState=2,enderPearl=1..}] feet
execute if entity @s[scores={enderPearl=1..}] run function sprint_racer_language:editor_mode/nodes_facing_self
execute if entity @s[scores={enderPearl=1..}] run scoreboard players reset @s enderPearl
kill @e[type=ender_pearl,distance=..2]

#breadcrumb connector
execute if items entity @s weapon.mainhand *[custom_data~{bc_connector:1b}] at @s run function sprint_racer:game_logic/2/breadcrumb_connector/hold_stick
execute if entity @s[tag=executor] if score global pathSource matches 1 as @e[limit=1,type=marker,tag=AIBC,sort=nearest,scores={pathSource=1}] at @s run particle block{block_state:"minecraft:stripped_oak_wood"} ~ ~ ~ 0.2 0.2 0.2 1 4 force @a[gamemode=creative]

#bring up node face direction menu
execute if entity @s[scores={dropDispenser=1..}] run function sprint_racer_language:editor_mode/node_face_direction_menu
execute if entity @s[scores={dropDispenser=1..}] run scoreboard players reset @s dropDispenser

#selected nodes glow
execute as @e[tag=selected,tag=node] at @s run particle end_rod ~ ~1 ~ .1 .5 .1 0 3 force @a[scores={playerState=2}]

#AI breadcrumbs show connecting trails
scoreboard players add #AIBC_visualize value 1
execute if score #AIBC_visualize value matches 20.. run scoreboard players set #AIBC_visualize value 0
execute if entity @s[tag=executor] as @e[tag=AIBC,type=marker,distance=..40,limit=10,sort=nearest] at @s run function sprint_racer:game_logic/2/breadcrumb_visuals/create_trails
execute if entity @e[tag=BCtrail] run function sprint_racer:game_logic/2/breadcrumb_visuals/_trails_main

#spawn egg was used, create a node or use the eraser
execute if entity @s[tag=executor] if entity @e[type=vex,tag=killme,distance=..10] run function sprint_racer:game_logic/2/spawn/spawn_activator
execute if entity @s[tag=executor] if entity @e[type=drowned,tag=killme,distance=..10] run function sprint_racer:game_logic/2/spawn/spawn_playerstart
execute if entity @s[tag=executor] if entity @e[type=cow,tag=killme,distance=..10] run function sprint_racer:game_logic/2/spawn/spawn_finishline
execute if entity @s[tag=executor] if entity @e[type=sheep,tag=killme,distance=..10] run function sprint_racer:game_logic/2/spawn/spawn_checkpoint
execute if entity @s[tag=executor] if entity @e[type=villager,tag=killme,distance=..10] run function sprint_racer:game_logic/2/spawn/spawn_itemchest
execute if entity @s[tag=executor] if entity @e[type=zombie_villager,tag=killme,distance=..10] run function sprint_racer:game_logic/2/spawn/spawn_itemchest_5plus
execute if entity @s[tag=executor] if entity @e[type=witch,tag=killme,distance=..10] run function sprint_racer:game_logic/2/spawn/spawn_jumpboost
execute if entity @s[tag=executor] if entity @e[type=blaze,tag=killme,distance=..10] run function sprint_racer:game_logic/2/spawn/spawn_speedboost
execute if entity @s[tag=executor] if entity @e[type=spider,tag=killme,distance=..10] run function sprint_racer:game_logic/2/spawn/spawn_resistance
execute if entity @s[tag=executor] if entity @e[type=bat,tag=killme,distance=..10] run function sprint_racer:game_logic/2/spawn/spawn_elytrajump
execute if entity @s[tag=executor] if entity @e[type=enderman,tag=killme,distance=..10] run function sprint_racer:game_logic/2/spawn/spawn_teleporter
execute if entity @s[tag=executor] if entity @e[type=endermite,tag=killme,distance=..10] run function sprint_racer:game_logic/2/spawn/spawn_scriptmove
execute if entity @s[tag=executor] if entity @e[type=pig,tag=killme,distance=..10] run function sprint_racer:game_logic/2/spawn/spawn_breadcrumb
execute if entity @s[tag=executor] if entity @e[type=chicken,tag=killme,distance=..10] run function sprint_racer:game_logic/2/spawn/spawn_target
execute if entity @s[tag=executor,tag=!selecting] if entity @e[type=creeper,tag=killme,distance=..10] run function sprint_racer:game_logic/2/spawn/spawn_eraser
execute if entity @s[tag=executor,tag=selecting] if entity @e[type=creeper,tag=killme,distance=..10] run function sprint_racer:game_logic/2/spawn/spawn_eraser_selecting

#if player is executor, cause nearby nodes to show particles
execute if entity @s[tag=executor] as @e[tag=node,distance=..50,limit=20,sort=nearest] at @s run function sprint_racer:game_logic/2/node_particle
execute if entity @s[tag=executor] if entity @e[tag=w,type=armor_stand,limit=1,tag=!halftick,scores={oTimerGlobal=1}] as @e[tag=node,distance=..35,limit=40,sort=nearest] at @s run function sprint_racer:game_logic/2/node_nametag
execute if entity @s[tag=executor] if entity @e[tag=w,type=armor_stand,limit=1,tag=halftick] as @e[tag=node,distance=..35,limit=40,sort=nearest] at @s run function sprint_racer:game_logic/2/node_nametag
execute if entity @s[tag=executor] as @e[type=!armor_stand,tag=showDispenser,tag=node,distance=..50,limit=20,sort=nearest] at @s run function sprint_racer:game_logic/2/show_dispenser_direction

#show visual boundaries for checkpoints and finishlines
#draw lines by quickly teleporting area effect cloud and showing particles
execute if entity @s[tag=executor] as @e[tag=node,tag=visualBound,distance=..10,limit=1,sort=nearest] at @s run function sprint_racer:game_logic/2/visualize_boundaries
execute as @e[type=area_effect_cloud,tag=vis_edge] at @s run function sprint_racer:game_logic/2/boundary_edges/index
execute if score #halftick value matches 1 as @e[type=area_effect_cloud,tag=vis_edge] at @s run function sprint_racer:game_logic/2/boundary_edges/index