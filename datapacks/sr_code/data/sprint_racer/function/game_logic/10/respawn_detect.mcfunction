execute if entity @s[type=player] run scoreboard players add global resetAttempts 1

#after 20 resets, force end the track test
execute if score global resetAttempts matches 20.. run function sprint_racer_language:_dlc_3/track_test_ended_20_resets