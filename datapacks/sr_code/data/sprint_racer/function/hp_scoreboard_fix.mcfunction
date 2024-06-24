scoreboard players remove @s hpSet 1

execute if entity @s[scores={hpSet=21}] run effect clear @s
execute if entity @s[scores={hpSet=21}] run effect give @s absorption 1 0 true

#just kidding I found a better solution for this
#execute if entity @s[scores={hpSet=20}] run function sprint_racer:repeat_scoreboard_setup_just_to_be_safe

execute if entity @s[scores={hpSet=20}] unless score @s playerID matches 2.. run function sprint_racer:give_ids2

execute if entity @s[scores={hpSet=10}] run effect give @s instant_health 1 100 true

execute if entity @s[scores={hpSet=..0}] run scoreboard players reset @s hpSet