execute if score #trackGridMode value matches 1 as @e[tag=trackStandR,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..}] if score @s rNumber = #test value run tag @s remove rtBlacklist
execute if score #trackGridMode value matches 2 as @e[tag=trackStandB,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..}] if score @s rNumber = #test value run tag @s remove btBlacklist

scoreboard players set @s inputCooldown 7

execute at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1.2
execute at @s run playsound minecraft:block.note_block.banjo master @s ~ ~ ~ 1.2 1

#need to update display
function sprint_racer:game_logic/9/grid_display/ungrouped_stock/update_display