#reset the timer variable we were using
scoreboard players set @s AIBC_hook 0

#show respawn progress using a text display (it always renders full bright regardless of camera angle)
scoreboard players operation #test value = @s itemBlockState
execute positioned ~ ~.6 ~ if loaded ~ ~ ~ summon text_display run function sprint_racer:items/chest_waiting_for_respawn_timer_wheel_summon