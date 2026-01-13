tag @e[tag=selectAIBC,tag=AIBC,type=marker] add setup

scoreboard players operation @e[limit=1,tag=node,type=marker,tag=setup,tag=AIBC] AIBC_id = @s AIBC_id
scoreboard players operation @e[limit=1,tag=node,type=marker,tag=setup,tag=AIBC] AIBC_dir1 = @s AIBC_dir1
scoreboard players operation @e[limit=1,tag=node,type=marker,tag=setup,tag=AIBC] AIBC_dir2 = @s AIBC_dir2
scoreboard players operation @e[limit=1,tag=node,type=marker,tag=setup,tag=AIBC] AIBC_dir3 = @s AIBC_dir3
scoreboard players operation @e[limit=1,tag=node,type=marker,tag=setup,tag=AIBC] AIBC_dir4 = @s AIBC_dir4
scoreboard players operation @e[limit=1,tag=node,type=marker,tag=setup,tag=AIBC] AIBC_hook = @s AIBC_hook
scoreboard players operation @e[limit=1,tag=node,type=marker,tag=setup,tag=AIBC] AIBC_spread = @s AIBC_spread
tag @e[limit=1,tag=node,type=marker,tag=setup,tag=AIBC,tag=hasOptimalSpread,scores={AIBC_spread=0}] remove hasOptimalSpread
scoreboard players operation @e[limit=1,tag=node,type=marker,tag=setup,tag=AIBC] AIBC_event = @s AIBC_event
scoreboard players operation @e[limit=1,tag=node,type=marker,tag=setup,tag=AIBC] AIBC_condition = @s AIBC_condition
execute as @e[limit=1,tag=node,type=marker,tag=setup,tag=AIBC] run tag @s remove AIBC_deadend
execute as @e[limit=1,tag=node,type=marker,tag=setup,tag=AIBC,scores={AIBC_dir1=0,AIBC_dir2=0,AIBC_dir3=0,AIBC_dir4=0}] run tag @s add AIBC_deadend
execute if entity @s[tag=requireGround] run tag @e[limit=1,tag=node,type=marker,tag=setup,tag=AIBC] add requireGround
execute if entity @s[tag=!requireGround] run tag @e[limit=1,tag=node,type=marker,tag=setup,tag=AIBC] remove requireGround
execute if entity @s[tag=megaShortcut] run tag @e[limit=1,tag=node,type=marker,tag=setup,tag=AIBC] add megaShortcut
execute if entity @s[tag=!megaShortcut] run tag @e[limit=1,tag=node,type=marker,tag=setup,tag=AIBC] remove megaShortcut
execute if entity @s[tag=elytraPath] run tag @e[limit=1,tag=node,type=marker,tag=setup,tag=AIBC] add elytraPath
execute if entity @s[tag=!elytraPath] run tag @e[limit=1,tag=node,type=marker,tag=setup,tag=AIBC] remove elytraPath
execute as @e[limit=1,tag=node,type=marker,tag=setup,tag=AIBC] run function sprint_racer:game_logic/2/spawn/name_breadcrumb_index
tag @e[limit=1,tag=node,type=marker,tag=setup,tag=AIBC] remove setup