#executed by a player (no loop, this one is instantaneous)

#give the item our enderman friend stole for us
function sprint_racer:items/item_tick/give_stolen_item/_index

#feedback
execute if entity @s[scores={giveItem=0..}] at @s anchored eyes positioned ^ ^ ^5 run particle happy_villager ~ ~ ~ 0.25 0.25 0.25 1 20 force @a
execute if entity @s[scores={giveItem=0..}] run playsound entity.ender_eye.death master @a ~ ~ ~ 1.75 1.2
execute if entity @s[scores={giveItem=..-1}] run function sprint_racer_language:gameplay/misc_item_text/enderman_found_nothing

#reset scores
scoreboard players set @s giveItem -1
scoreboard players set @s giveQty 0
scoreboard players set @s enderman 501