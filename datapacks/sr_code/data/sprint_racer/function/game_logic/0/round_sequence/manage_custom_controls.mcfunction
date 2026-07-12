kill @e[tag=customRoundControls,type=interaction]
kill @e[tag=customRoundControls,type=text_display]
execute as @e[limit=1,tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=optCustomRounds] positioned 1581 88 448 align xyz rotated 0 0 run function sprint_racer:game_logic/0/round_sequence/summon_custom_controls