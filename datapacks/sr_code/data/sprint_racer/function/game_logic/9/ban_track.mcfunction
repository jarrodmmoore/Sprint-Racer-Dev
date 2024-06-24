execute if entity @e[tag=w,scores={tvPoolMode=1}] run tag @e[tag=focusT] add rtBlacklist
execute if entity @e[tag=w,scores={tvPoolMode=2}] run tag @e[tag=focusT] add btBlacklist

scoreboard players set @a inputCooldown 10

execute as @a at @s run playsound minecraft:entity.villager.no master @s ~ 100000 ~ 100000
execute as @a at @s run playsound minecraft:block.note_block.banjo master @s ~ 100000 ~ 100000 .5