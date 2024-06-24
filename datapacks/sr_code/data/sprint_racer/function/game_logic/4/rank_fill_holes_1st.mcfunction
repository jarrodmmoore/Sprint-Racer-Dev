execute if entity @a[scores={finishPos=2..}] unless entity @a[scores={finishPos=1}] run scoreboard players remove @a[scores={finishPos=2..}] finishPos 1

#repeat if there's still a gap
execute if entity @a[scores={finishPos=2..}] unless entity @a[scores={finishPos=1}] run function sprint_racer:game_logic/4/rank_fill_holes_1st