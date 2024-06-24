#no unfinished players remain, start the end sequence (60 ticks with no active players)
scoreboard players add @s timeOut 1
execute if entity @a[tag=playing,tag=!finished] run scoreboard players set @s timeOut 0
execute if entity @s[scores={timeOut=60..}] run scoreboard players set @s timeRemaining -1

#don't time out in credits, will auto-end once the sequence plays out
scoreboard players set @s timeOut 0

#end sequence
execute if entity @s[scores={timeRemaining=..-1}] run function sprint_racer:game_logic/12/end_sequence