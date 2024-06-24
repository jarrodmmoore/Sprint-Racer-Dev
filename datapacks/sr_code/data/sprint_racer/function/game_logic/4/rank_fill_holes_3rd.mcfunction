execute if entity @a[scores={finishPos=4..}] unless entity @a[scores={finishPos=3}] run scoreboard players remove @a[scores={finishPos=4..}] finishPos 1

#repeat if there's still a gap
execute if entity @a[scores={finishPos=4..}] unless entity @a[scores={finishPos=3}] run function sprint_racer:game_logic/4/rank_fill_holes_3rd