particle enchanted_hit ^ ^1.5 ^.75 .2 .2 .2 0 20 force

tag @s add noSlow
execute if entity @e[tag=cheats,x=1550,y=148,z=406,distance=..1,tag=09a] run tag @s add ejectkart

scoreboard players operation #setPlayerID value = @s playerID
scoreboard players operation #setCheck value = @s check
execute at @s as @e[limit=1,sort=nearest,type=ender_pearl,tag=!P_rememberAI,tag=!pearlHasID] run function sprint_racer:items/item_tick/pearl_used_tag

scoreboard players reset @s usePearl