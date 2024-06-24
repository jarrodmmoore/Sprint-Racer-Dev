clear @s anvil[custom_data~{elite17:1b}] 1

tag @s add self

playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 1 1.25

#anvil up to 4 players
#scoreboard players operation @s repeatCount = @e[limit=1,tag=w] playerCountI
#scoreboard players set @s[scores={repeatCount=4..}] repeatCount 4
scoreboard players set @s repeatCount 4

execute unless entity @e[tag=w,type=armor_stand,tag=teamplay] run function sprint_racer:items/item_tick/elite/anvil_of_injustice_repeat
execute if entity @e[tag=w,type=armor_stand,tag=teamplay] if entity @s[tag=playerCyan] run function sprint_racer:items/item_tick/elite/anvil_of_injustice_repeat_teams_cyan
execute if entity @e[tag=w,type=armor_stand,tag=teamplay] if entity @s[tag=playerOrange] run function sprint_racer:items/item_tick/elite/anvil_of_injustice_repeat_teams_orange
execute if entity @e[tag=anvilled] as @e[limit=1,tag=anvilled] run function sprint_racer_language:gameplay/misc_item_text/anvil/injustice_is_served
tag @e[tag=anvilled] remove anvilled

#kill some chicken mines as well because why not
scoreboard players set @e[limit=5,tag=chickenmine,sort=random] anvil 0

tag @s remove self

scoreboard players set @s inputCooldown 20