playsound minecraft:entity.ender_dragon.hurt master @a ~ ~ ~ 1 .5
tp @s @e[limit=1,sort=nearest,tag=imgoinghere]

#function sprint_racer:ai/general/clear_old_ai_targets
execute at @s run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/target_nearest_instead

function sprint_racer:game_logic/1/charity_item/_index

scoreboard players set @s elytraTimer 0