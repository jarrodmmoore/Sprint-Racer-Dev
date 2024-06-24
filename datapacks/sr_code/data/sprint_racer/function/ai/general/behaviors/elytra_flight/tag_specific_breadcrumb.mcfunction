tag @s add ef_self

#via breadcrumb event
execute if entity @s[tag=!elytra_specific_2,scores={AIBC_condition=1..}] as @e[type=marker,tag=node,tag=AIBC,scores={AIBC_id=1..}] if score @s AIBC_id = @e[limit=1,sort=nearest,tag=ef_self] AIBC_condition run tag @s add look_at_me
execute if entity @s[tag=elytra_specific_2,scores={AIBC_id=1..}] as @e[type=marker,tag=node,tag=AIBC,scores={AIBC_id=1..}] if score @s AIBC_id = @e[limit=1,sort=nearest,tag=ef_self] AIBC_id run tag @s add look_at_me

execute if entity @s[tag=ai1] run tag @e[limit=1,sort=nearest,type=marker,tag=look_at_me] add aiElyTarget1
execute if entity @s[tag=ai2] run tag @e[limit=1,sort=nearest,type=marker,tag=look_at_me] add aiElyTarget2
execute if entity @s[tag=ai3] run tag @e[limit=1,sort=nearest,type=marker,tag=look_at_me] add aiElyTarget3
execute if entity @s[tag=ai4] run tag @e[limit=1,sort=nearest,type=marker,tag=look_at_me] add aiElyTarget4
execute if entity @s[tag=ai5] run tag @e[limit=1,sort=nearest,type=marker,tag=look_at_me] add aiElyTarget5
execute if entity @s[tag=ai6] run tag @e[limit=1,sort=nearest,type=marker,tag=look_at_me] add aiElyTarget6
execute if entity @s[tag=ai7] run tag @e[limit=1,sort=nearest,type=marker,tag=look_at_me] add aiElyTarget7
execute if entity @s[tag=ai8] run tag @e[limit=1,sort=nearest,type=marker,tag=look_at_me] add aiElyTarget8
execute if entity @s[tag=ai9] run tag @e[limit=1,sort=nearest,type=marker,tag=look_at_me] add aiElyTarget9

#didn't find a target? use auto behavior instead
execute unless entity @e[type=marker,tag=look_at_me] run tag @s remove elytra_specific

tag @e[tag=look_at_me,type=marker] remove look_at_me
tag @s remove ef_self