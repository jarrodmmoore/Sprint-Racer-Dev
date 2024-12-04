#close route to pool if it's open
execute if loaded 628 61 69 unless block 637 61 71 air if entity @e[tag=ccneo_bc2,type=marker,scores={AIBC_id=1..}] run function sprint_racer:levels/crash_course_neo/pool_entry_close

#close door to exit pool (only on lap 1! we don't want to trap players in the pool)
execute if score #ccneo_lap value matches ..1 if loaded 622 61 -24 if loaded 626 63 -24 if block 622 61 -24 air run fill 622 61 -24 626 63 -24 white_stained_glass replace air

#close elytra route
execute if loaded 528 61 -32 if loaded 528 61 -33 if loaded 527 61 -32 if loaded 527 61 -33 if block 527 61 -36 white_stained_glass if entity @e[tag=ccneo_bc3,type=marker,scores={AIBC_id=1..}] run function sprint_racer:levels/crash_course_neo/close_elytra_route