summon marker ~ ~ ~ {Tags:["setup","node","AIBC"]}

#carry over scoreboard stuff
scoreboard players operation @e[tag=setup] AIBC_id = @s AIBC_id
scoreboard players operation @e[tag=setup] AIBC_dir1 = @s AIBC_dir1
scoreboard players operation @e[tag=setup] AIBC_dir2 = @s AIBC_dir2
scoreboard players operation @e[tag=setup] AIBC_dir3 = @s AIBC_dir3
scoreboard players operation @e[tag=setup] AIBC_dir4 = @s AIBC_dir4
scoreboard players operation @e[tag=setup] AIBC_hook = @s AIBC_hook
scoreboard players operation @e[tag=setup] AIBC_spread = @s AIBC_spread
scoreboard players operation @e[tag=setup] AIBC_event = @s AIBC_event
scoreboard players operation @e[tag=setup] AIBC_condition = @s AIBC_condition
execute if entity @s[tag=AIBC_deadend] run tag @e[tag=setup] add AIBC_deadend
execute if entity @s[tag=megaShortcut] run tag @e[tag=setup] add megaShortcut
execute if entity @s[tag=requireGround] run tag @e[tag=setup] add requireGround
execute if entity @s[tag=elytraPath] run tag @e[tag=setup] add elytraPath

#name self
execute as @e[tag=setup] run function sprint_racer:game_logic/2/spawn/name_breadcrumb_index

tp @e[tag=setup] @s
tag @e[tag=setup] remove setup
kill @s