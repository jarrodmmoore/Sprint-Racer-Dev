scoreboard players operation #rememberOurPos value = @e[tag=currentMaster,type=armor_stand,limit=1] racePosDisplay

execute if entity @s[tag=very_easy_ai,scores={aiSkill=..1}] run function sprint_racer:ai/race/rubberbanding/1_very_easy
execute if entity @s[tag=!very_easy_ai,scores={aiSkill=..1}] run function sprint_racer:ai/race/rubberbanding/1
execute if entity @s[scores={aiSkill=2}] run function sprint_racer:ai/race/rubberbanding/2
execute if entity @s[tag=!rb_ahead,scores={aiSkill=3..}] run function sprint_racer:ai/race/rubberbanding/3
execute if entity @s[tag=rb_ahead,scores={aiSkill=3..}] run function sprint_racer:ai/race/rubberbanding/3_tryhard

tag @e[tag=previousPlayer] remove previousPlayer
tag @e[tag=nextPlayer] remove nextPlayer

#no rubberbanding? set all to 0 unless tryhard mode
execute if entity @e[tag=w,type=armor_stand,tag=noRubberBand] run scoreboard players set @s[tag=!rb_ahead] aiRubberBand 0
execute if entity @s[tag=sa_kitty] run scoreboard players remove @s[scores={aiRubberBand=1..}] aiRubberBand 1

#minimum value 1 for certain mobs
execute if entity @s[tag=min_rb_1,tag=!very_easy_ai] run scoreboard players set @s[scores={aiRubberBand=..1}] aiRubberBand 1