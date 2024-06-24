execute as @a[tag=playing,gamemode=adventure] at @s rotated ~ 0 positioned ^ ^ ^2 run scoreboard players add @a[tag=playing,gamemode=adventure,distance=..3] invis_cram 1
#scoreboard players set @a[tag=alwayshide] invis_cram 100

scoreboard players remove @a[scores={invis_cram_t=1..}] invis_cram_t 1

#invisible players do thing
execute as @a[tag=playing,gamemode=adventure,scores={invis_cram=2..}] unless entity @s[scores={invis_cram_t=1..9}] run function sprint_racer:game_logic/1/invisible_nearby/player_hide
execute as @a[tag=playing,gamemode=adventure,tag=invis_cram,scores={invis_cram=..1}] unless entity @s[scores={invis_cram_t=10..}] run function sprint_racer:game_logic/1/invisible_nearby/player_show

scoreboard players set @a[gamemode=adventure] invis_cram 0