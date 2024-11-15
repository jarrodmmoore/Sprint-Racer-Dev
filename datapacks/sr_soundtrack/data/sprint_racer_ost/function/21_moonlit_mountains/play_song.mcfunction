stopsound @s record

#playsound <song path>
execute if entity @s[tag=!musicLooped21] run playsound minecraft:sprint_racer_ost/echo_dance_intro record @s ~ ~10 ~ .5 1 0
execute if entity @s[tag=musicLooped21] run playsound minecraft:sprint_racer_ost/echo_dance record @s ~ ~10 ~ .5 1 0

#musicTime is song length (seconds) multiplied by 20
execute if entity @s[tag=!musicLooped21] run scoreboard players set @s musicTime 615
execute if entity @s[tag=musicLooped21] run scoreboard players set @s musicTime 3994

#remember that we listened to the intro so we don't play it again
tag @s add musicLooped21