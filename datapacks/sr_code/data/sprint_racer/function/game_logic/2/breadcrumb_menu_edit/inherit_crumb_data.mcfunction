tag @e[tag=selectAIBC,tag=AIBC,type=marker] add dasme

scoreboard players operation @s AIBC_id = @e[limit=1,tag=node,type=marker,tag=dasme,tag=AIBC] AIBC_id
scoreboard players operation @s AIBC_dir1 = @e[limit=1,tag=node,type=marker,tag=dasme,tag=AIBC] AIBC_dir1
scoreboard players operation @s AIBC_dir2 = @e[limit=1,tag=node,type=marker,tag=dasme,tag=AIBC] AIBC_dir2
scoreboard players operation @s AIBC_dir3 = @e[limit=1,tag=node,type=marker,tag=dasme,tag=AIBC] AIBC_dir3
scoreboard players operation @s AIBC_dir4 = @e[limit=1,tag=node,type=marker,tag=dasme,tag=AIBC] AIBC_dir4
scoreboard players operation @s AIBC_hook = @e[limit=1,tag=node,type=marker,tag=dasme,tag=AIBC] AIBC_hook
scoreboard players operation @s AIBC_spread = @e[limit=1,tag=node,type=marker,tag=dasme,tag=AIBC] AIBC_spread
scoreboard players operation @s AIBC_event = @e[limit=1,tag=node,type=marker,tag=dasme,tag=AIBC] AIBC_event
scoreboard players operation @s AIBC_condition = @e[limit=1,tag=node,type=marker,tag=dasme,tag=AIBC] AIBC_condition
execute if entity @e[limit=1,tag=node,type=marker,tag=dasme,tag=AIBC,tag=megaShortcut] run tag @s add megaShortcut
execute if entity @e[limit=1,tag=node,type=marker,tag=dasme,tag=AIBC,tag=!megaShortcut] run tag @s remove megaShortcut
execute if entity @e[limit=1,tag=node,type=marker,tag=dasme,tag=AIBC,tag=requireGround] run tag @s add requireGround
execute if entity @e[limit=1,tag=node,type=marker,tag=dasme,tag=AIBC,tag=!requireGround] run tag @s remove requireGround
execute if entity @e[limit=1,tag=node,type=marker,tag=dasme,tag=AIBC,tag=elytraPath] run tag @s add elytraPath
execute if entity @e[limit=1,tag=node,type=marker,tag=dasme,tag=AIBC,tag=!elytraPath] run tag @s remove elytraPath
tag @e[limit=1,tag=node,type=marker,tag=dasme,tag=AIBC] remove dasme