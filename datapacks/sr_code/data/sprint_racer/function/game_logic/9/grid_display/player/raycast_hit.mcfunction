#focus on the nearest item frame within 2m of us
scoreboard players operation #test value = @e[limit=1,sort=nearest,type=item_frame,tag=trackGridFrame,distance=..2] customDummyID

#grid frame should make particles
execute at @e[limit=1,sort=nearest,type=item_frame,tag=trackGridFrame,distance=..2] run function sprint_racer:game_logic/9/grid_display/player/particles_on_selected_track