function sprint_racer:game_logic/1/position_calc/subtitle_display

#execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={timeRemaining=1..}] run function sprint_racer:game_logic/1/position_calc/subtitle_display

#slow flash for player in last, more than 5sec until elimination
#execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={timeRemaining=1..,timeUntilElim=101..,currentTimeMsec=..4}] run function sprint_racer:game_logic/1/position_calc/subtitle_display
#execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={timeRemaining=1..,timeUntilElim=101..,currentTimeMsec=5..}] run function sprint_racer:game_logic/1/position_calc/subtitle_display_danger

#fast flash for player in last, less than 5sec until elimination
#execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={timeRemaining=1..,timeUntilElim=..100,currentTimeMsec=..1}] run function sprint_racer:game_logic/1/position_calc/subtitle_display
#execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={timeRemaining=1..,timeUntilElim=..100,currentTimeMsec=2..3}] run function sprint_racer:game_logic/1/position_calc/subtitle_display_danger
#execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={timeRemaining=1..,timeUntilElim=..100,currentTimeMsec=4..5}] run function sprint_racer:game_logic/1/position_calc/subtitle_display
#execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={timeRemaining=1..,timeUntilElim=..100,currentTimeMsec=6..7}] run function sprint_racer:game_logic/1/position_calc/subtitle_display_danger
#execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={timeRemaining=1..,timeUntilElim=..100,currentTimeMsec=8..}] run function sprint_racer:game_logic/1/position_calc/subtitle_display