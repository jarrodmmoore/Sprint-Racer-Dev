execute if entity @s[tag=AImaster,scores={rNumber=1}] run tag @e[tag=ai1] add dataTarget
execute if entity @s[tag=AImaster,scores={rNumber=2}] run tag @e[tag=ai2] add dataTarget
execute if entity @s[tag=AImaster,scores={rNumber=3}] run tag @e[tag=ai3] add dataTarget
execute if entity @s[tag=AImaster,scores={rNumber=4}] run tag @e[tag=ai4] add dataTarget
execute if entity @s[tag=AImaster,scores={rNumber=5}] run tag @e[tag=ai5] add dataTarget
execute if entity @s[tag=AImaster,scores={rNumber=6}] run tag @e[tag=ai6] add dataTarget
execute if entity @s[tag=AImaster,scores={rNumber=7}] run tag @e[tag=ai7] add dataTarget
execute if entity @s[tag=AImaster,scores={rNumber=8}] run tag @e[tag=ai8] add dataTarget
execute if entity @s[tag=AImaster,scores={rNumber=9}] run tag @e[tag=ai9] add dataTarget

scoreboard players operation @e[tag=dataTarget] battPosDisplay = @s battPosDisplay
scoreboard players operation @e[tag=dataTarget] itemPosition = @s itemPosition
scoreboard players operation @e[tag=dataTarget] playerLives = @s playerLives

tag @e[tag=dataTarget] remove dataTarget