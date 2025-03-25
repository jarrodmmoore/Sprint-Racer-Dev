item replace entity @s armor.chest with minecraft:elytra[unbreakable={},enchantments={binding_curse:1,vanishing_curse:1},tooltip_display={hidden_components:[enchantments,unbreakable]},enchantment_glint_override=false] 1

#hopefully this will help bad connection players
execute if block ~ ~1 ~ air if block ~ ~2 ~ air run tp @s ~ ~1 ~

#break out of scripted sequence if we're in one
scoreboard players set @s scriptMove 0

effect give @s levitation 1 22 true
effect give @s[tag=elytraMed] levitation 1 27 true
effect give @s[tag=elytraLong] levitation 1 30 true
effect give @s slow_falling 1 0 false

playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 1 .5
particle cloud ~ ~.1 ~ 0.5 0.1 0.5 .1 25 force

tag @s remove elytraShort
tag @s remove elytraMed
tag @s remove elytraLong

scoreboard players set @s elytraTimer 1
scoreboard players set @s[scores={actionbarState=..1}] actionbarState2 35
scoreboard players set @s[scores={actionbarState=..1}] actionbarState -3

scoreboard players set @s inputCooldown 10