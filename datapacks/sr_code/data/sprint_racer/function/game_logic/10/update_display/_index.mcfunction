#particles for race track
execute if entity @e[tag=w,type=armor_stand,tag=!NOPARTICLE,scores={tvPoolMode=1}] run particle dust{color:[0.6,0.6,1.0],scale:2} 1594 80 369 0 .8 .8 1 15
execute if entity @e[tag=w,type=armor_stand,tag=!NOPARTICLE,scores={tvPoolMode=1}] run particle dust{color:[0.6,0.6,1.0],scale:2} 1594 80 372 0 .8 .8 1 15
execute if entity @e[tag=w,type=armor_stand,tag=!NOPARTICLE,scores={tvPoolMode=1}] run particle dust{color:[0.6,0.6,1.0],scale:2} 1594 82 369 0 .8 .8 1 15
execute if entity @e[tag=w,type=armor_stand,tag=!NOPARTICLE,scores={tvPoolMode=1}] run particle dust{color:[0.6,0.6,1.0],scale:2} 1594 82 372 0 .8 .8 1 15

#particles for battle track
execute if entity @e[tag=w,type=armor_stand,tag=!NOPARTICLE,scores={tvPoolMode=2}] run particle dust{color:[1.0,0.3,0.3],scale:2} 1594 80 369 0 .8 .8 1 15
execute if entity @e[tag=w,type=armor_stand,tag=!NOPARTICLE,scores={tvPoolMode=2}] run particle dust{color:[1.0,0.3,0.3],scale:2} 1594 80 372 0 .8 .8 1 15
execute if entity @e[tag=w,type=armor_stand,tag=!NOPARTICLE,scores={tvPoolMode=2}] run particle dust{color:[1.0,0.3,0.3],scale:2} 1594 82 369 0 .8 .8 1 15
execute if entity @e[tag=w,type=armor_stand,tag=!NOPARTICLE,scores={tvPoolMode=2}] run particle dust{color:[1.0,0.3,0.3],scale:2} 1594 82 372 0 .8 .8 1 15

#race tracks
execute if entity @e[tag=w,type=armor_stand,scores={tvPoolMode=1}] if entity @e[tag=customtrack,tag=customrace] run function sprint_racer:game_logic/10/update_display/race_custom
execute if entity @e[tag=w,type=armor_stand,scores={tvPoolMode=1}] unless entity @e[tag=customtrack,tag=customrace] run function sprint_racer:game_logic/10/update_display/empty

#battle tracks
execute if entity @e[tag=w,type=armor_stand,scores={tvPoolMode=2}] if entity @e[tag=customtrack,tag=custombattle] run function sprint_racer:game_logic/10/update_display/battle_custom
execute if entity @e[tag=w,type=armor_stand,scores={tvPoolMode=2}] unless entity @e[tag=customtrack,tag=custombattle] run function sprint_racer:game_logic/10/update_display/empty

#custom preview will override the generic one
execute as @e[limit=1,type=armor_stand,tag=focusT,tag=customtrack,tag=customPreview] run function sprint_racer:game_logic/10/update_display/custom_preview/__track_manager
execute as @e[tag=focusT,type=armor_stand,limit=1] unless entity @s[scores={customPreview=11000..}] run scoreboard players set @s customPreview 11000

tag @e[tag=w,type=armor_stand] remove NOPARTICLE