#executed by posCalc finish line node
execute store result storage sprint_racer:pos_calc_pos finishline_x int 1 run data get entity @s Pos[0] 1
execute store result storage sprint_racer:pos_calc_pos finishline_y int 1 run data get entity @s Pos[1] 1
execute store result storage sprint_racer:pos_calc_pos finishline_z int 1 run data get entity @s Pos[2] 1

#also forceload our chunk while we're here
execute store result score #chunktest value run forceload query ~ ~
execute if score #chunktest value matches 0 run forceload add ~ ~