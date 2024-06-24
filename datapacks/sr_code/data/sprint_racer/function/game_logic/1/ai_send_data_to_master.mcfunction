execute if entity @s[tag=ai1] run tag @e[tag=AImaster,type=armor_stand,limit=1,scores={rNumber=1}] add dataTarget
execute if entity @s[tag=ai2] run tag @e[tag=AImaster,type=armor_stand,limit=1,scores={rNumber=2}] add dataTarget
execute if entity @s[tag=ai3] run tag @e[tag=AImaster,type=armor_stand,limit=1,scores={rNumber=3}] add dataTarget
execute if entity @s[tag=ai4] run tag @e[tag=AImaster,type=armor_stand,limit=1,scores={rNumber=4}] add dataTarget
execute if entity @s[tag=ai5] run tag @e[tag=AImaster,type=armor_stand,limit=1,scores={rNumber=5}] add dataTarget
execute if entity @s[tag=ai6] run tag @e[tag=AImaster,type=armor_stand,limit=1,scores={rNumber=6}] add dataTarget
execute if entity @s[tag=ai7] run tag @e[tag=AImaster,type=armor_stand,limit=1,scores={rNumber=7}] add dataTarget
execute if entity @s[tag=ai8] run tag @e[tag=AImaster,type=armor_stand,limit=1,scores={rNumber=8}] add dataTarget
execute if entity @s[tag=ai9] run tag @e[tag=AImaster,type=armor_stand,limit=1,scores={rNumber=9}] add dataTarget

scoreboard players operation @e[tag=dataTarget,type=armor_stand,limit=1] check = @s check
scoreboard players operation @e[tag=dataTarget,type=armor_stand,limit=1] lap = @s lap
scoreboard players operation @e[tag=dataTarget,type=armor_stand,limit=1] itemLuck = @s itemLuck
scoreboard players operation @e[tag=dataTarget,type=armor_stand,limit=1] lapFake = @s lapFake
scoreboard players operation @e[tag=dataTarget,type=armor_stand,limit=1] lastTeleport = @s lastTeleport
scoreboard players set @e[tag=dataTarget,type=armor_stand,limit=1] timeSinceCheck 0

scoreboard players operation @e[tag=dataTarget,type=armor_stand,limit=1] aiTacticsA = @s tacticsSequence
scoreboard players operation @e[tag=dataTarget,type=armor_stand,limit=1] aiTacticsB = @s tacticsStep

tag @e[tag=dataTarget,type=armor_stand,limit=1] remove dataTarget