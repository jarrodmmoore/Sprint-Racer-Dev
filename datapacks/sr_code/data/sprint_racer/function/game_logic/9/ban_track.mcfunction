execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=1}] run tag @e[tag=focusT] add rtBlacklist
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={tvPoolMode=2}] run tag @e[tag=focusT] add btBlacklist

scoreboard players set @a inputCooldown 10

execute as @a at @s run playsound minecraft:entity.villager.no master @s ~ 100000 ~ 100000
execute as @a at @s run playsound minecraft:block.note_block.banjo master @s ~ 100000 ~ 100000 .5

#custom track manager: need to update display
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=10}] run function sprint_racer:game_logic/10/grid_display/ungrouped_custom/update_display