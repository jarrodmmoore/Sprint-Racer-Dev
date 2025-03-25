item replace entity @s armor.chest with minecraft:elytra[unbreakable={},enchantments={binding_curse:1,vanishing_curse:1},tooltip_display={hidden_components:[enchantments,unbreakable]}] 1

#hopefully this will help bad connection players
execute if block ~ ~1 ~ air if block ~ ~2 ~ air run tp @s ~ ~1 ~

#break out of scripted sequence if we're in one
scoreboard players set @s scriptMove 0

effect give @s levitation 1 15 true
effect give @s[tag=elytraMed] levitation 1 20 true
effect give @s[tag=elytraLong] levitation 1 25 true
effect give @s slow_falling 1 0 false

playsound minecraft:entity.shulker.shoot master @s ~ ~ ~ 1 .6
particle cloud ~ ~.1 ~ 0.5 0.1 0.5 .1 25 force
particle firework ~ ~.1 ~ 0.5 0.1 0.5 .1 25 force

tag @s remove elytraShort
tag @s remove elytraMed
tag @s remove elytraLong

#give firework for rocket boost after slot opens up
clear @s firework_rocket[custom_data~{rocketboost:1b}]
function sprint_racer_language:gameplay/give_item/firework

scoreboard players set @s elytraTimer 1
scoreboard players set @s[scores={actionbarState=..1}] actionbarState2 35
scoreboard players set @s[scores={actionbarState=..1}] actionbarState -3

scoreboard players set @s inputCooldown 10