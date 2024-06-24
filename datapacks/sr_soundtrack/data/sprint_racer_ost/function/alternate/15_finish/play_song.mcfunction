#stopsound @s record

#playsound <song path>
playsound minecraft:sprint_racer_ost_replace/finish1 record @s ~ ~10 ~ .4 1 0

#musicTime is song length (seconds) multiplied by 20
#scoreboard players set @s musicTime 1200

#we "auto-loop now :)
scoreboard players set @s musicTime 3