#remove the arrow signs after one route change
execute if loaded 435 58 100 unless block 435 61 100 air run fill 435 61 100 435 62 105 air

#open route to pool
execute if loaded 628 61 69 unless block 632 62 69 air run function sprint_racer:levels/crash_course_neo/pool_entry_open

#open door to exit pool
execute if loaded 622 61 -24 if loaded 626 63 -24 if block 622 61 -24 white_stained_glass run fill 622 61 -24 626 63 -24 air replace white_stained_glass

#open elytra route
execute if loaded 528 61 -32 if loaded 528 61 -33 if loaded 527 61 -32 if loaded 527 61 -33 unless block 527 61 -36 white_stained_glass run function sprint_racer:levels/crash_course_neo/open_elytra_route