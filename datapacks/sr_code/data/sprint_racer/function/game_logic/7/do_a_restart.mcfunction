tag @s add fghjkl

#can't restart if other players are waiting to play!
execute if entity @a[tag=!fghjkl,tag=!forcespectate] run tag @s remove fghjkl

execute if entity @s[tag=fghjkl] run function sprint_racer_language:_dlc_1/gameplay/ta_restarted
execute if entity @s[tag=fghjkl] if entity @e[type=marker,tag=playerstart,tag=node,tag=psTimeAttack,tag=!psBattle,scores={nodeState=1..}] as @e[tag=w,type=armor_stand,tag=!noRapidStart] run function sprint_racer:game_logic/7/_initialize_rapid
execute if entity @s[tag=fghjkl] if entity @e[type=marker,tag=playerstart,tag=node,tag=psTimeAttack,tag=!psBattle,scores={nodeState=1..}] as @e[tag=w,type=armor_stand,tag=noRapidStart] run function sprint_racer:game_logic/7/_initialize
execute if entity @s[tag=fghjkl] unless entity @e[type=marker,tag=playerstart,tag=node,tag=psTimeAttack,tag=!psBattle,scores={nodeState=1..}] as @e[tag=w,type=armor_stand] run function sprint_racer:game_logic/7/_initialize

execute unless entity @s[tag=fghjkl] run function sprint_racer_language:_dlc_1/gameplay/ta_cannot_restart
execute unless entity @s[tag=fghjkl] run scoreboard players set @s inputCooldown 7

tag @s remove fghjkl