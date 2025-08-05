#keep going forward

#particle
particle dust_color_transition{from_color:[0.5f,0.8f,0.8f],to_color:[0f,0f,0f],scale:1.8} ~ ~ ~ 0.05 0.05 0.05 0.01 1 force

#detect players once in a while
scoreboard players add #test value 1
execute if score #test value matches 4.. run function sprint_racer:items/item_tick/elite/shoot_obliterator_try_find_player

#keep going if able
execute if loaded ^ ^ ^1 if block ^ ^ ^.5 #sprint_racer:missile_do_not_explode if block ^ ^ ^1 #sprint_racer:missile_do_not_explode positioned ^ ^ ^1 run function sprint_racer:items/item_tick/elite/shoot_obliterator_cyan_raycast