tag @e[tag=activeplayer,scores={check=1..},dx=9,dy=9,dz=9] add finTarget

scoreboard players operation @e[tag=finTarget] nCheck = @s nCheck
execute as @e[tag=finTarget] run scoreboard players operation @s nCheck -= @s check
tag @e[tag=finTarget,scores={nCheck=..0}] add finishLap

execute if entity @s[tag=finWarn] run tag @a[tag=finTarget,scores={nCheck=1..}] add finWarn
execute if entity @s[tag=finWrongWay] run tag @a[tag=finTarget,scores={nCheck=..-1}] add finWrongWay

execute as @a[tag=finTarget,tag=finWarn,gamemode=adventure] run scoreboard players set @s[scores={actionbarState=..6}] actionbarState 8
execute as @a[tag=finTarget,tag=finWarn,gamemode=adventure] run scoreboard players set @s[scores={actionbarState=..6}] actionbarState2 40

execute as @a[tag=finTarget,tag=finWrongWay,gamemode=adventure] run scoreboard players set @s[scores={actionbarState=..7}] actionbarState 7
execute as @a[tag=finTarget,tag=finWrongWay,gamemode=adventure] run scoreboard players set @s[scores={actionbarState=..7}] actionbarState2 40

tag @e[tag=finTarget] remove finTarget