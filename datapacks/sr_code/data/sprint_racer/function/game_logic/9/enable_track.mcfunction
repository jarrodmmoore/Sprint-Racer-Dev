execute if entity @e[tag=w,scores={tvPoolMode=1}] run tag @e[tag=focusT] remove rtBlacklist
execute if entity @e[tag=w,scores={tvPoolMode=2}] run tag @e[tag=focusT] remove btBlacklist

scoreboard players set @a inputCooldown 10

execute as @a at @s run playsound minecraft:entity.villager.yes master @s ~ 100000 ~ 100000
execute as @a at @s run playsound minecraft:block.note_block.banjo master @s ~ 100000 ~ 100000 1