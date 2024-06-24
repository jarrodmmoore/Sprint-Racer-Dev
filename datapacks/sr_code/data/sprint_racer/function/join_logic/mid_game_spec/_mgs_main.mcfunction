#this is run by w
scoreboard players remove @s specJoinTime 1
execute if entity @s[tag=halftick] run scoreboard players remove @s specJoinTime 1

scoreboard players enable @a[team=spectator] specJoin
execute if entity @s[scores={specJoinTime=200..}] as @a[gamemode=spectator,team=spectator] unless entity @s[scores={specJoinTime=1}] run function sprint_racer_language:_dlc_2/join_messages/offer_join_spectator