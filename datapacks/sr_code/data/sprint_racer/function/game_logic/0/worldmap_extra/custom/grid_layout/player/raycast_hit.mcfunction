#focus on the nearest item frame within 2m of us
scoreboard players operation #test value = @e[limit=1,sort=nearest,type=item_frame,tag=trackGridFrameCustom,distance=..2] customDummyID

#grid frame should make particles
execute at @e[limit=1,sort=nearest,type=item_frame,tag=trackGridFrameCustom,distance=..2] run function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/player/particles_on_selected_track