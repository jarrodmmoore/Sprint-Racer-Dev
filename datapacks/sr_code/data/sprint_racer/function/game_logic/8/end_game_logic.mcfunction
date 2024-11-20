execute if entity @s[scores={timeRemaining=1220}] run function sprint_racer_language:_dlc_1/gameplay/time_attack/60_sec_warning
execute if entity @s[scores={timeRemaining=620}] run function sprint_racer_language:_dlc_1/gameplay/time_attack/30_sec_warning

#ding ding, hurry up
execute if score @s timeRemaining matches 100 as @a[gamemode=adventure] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ 100000 ~ 100000 1.2
execute if score @s timeRemaining matches 80 as @a[gamemode=adventure] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ 100000 ~ 100000 1.3
execute if score @s timeRemaining matches 60 as @a[gamemode=adventure] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ 100000 ~ 100000 1.4
execute if score @s timeRemaining matches 40 as @a[gamemode=adventure] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ 100000 ~ 100000 1.5
execute if score @s timeRemaining matches 20 as @a[gamemode=adventure] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ 100000 ~ 100000 1.6

#at 30 seconds remaining and below, show a timer
execute unless entity @a[tag=playing,scores={playerState=2}] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={timeRemaining=0..1220}] run function sprint_racer:game_logic/8/race_end_timer

#no unfinished players remain, start the end sequence (60 ticks with no active players)
scoreboard players add @s timeOut 1
execute if entity @a[tag=playing,limit=1] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] timeOut 0
execute if entity @s[scores={timeOut=60..}] run scoreboard players set @s timeRemaining -1

#end sequence
execute if entity @s[scores={timeRemaining=..-1}] run function sprint_racer:game_logic/8/end_sequence