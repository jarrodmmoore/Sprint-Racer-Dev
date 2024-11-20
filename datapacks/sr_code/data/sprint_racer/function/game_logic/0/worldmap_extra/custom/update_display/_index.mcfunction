#particles for race track
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={wmCustomMode=1}] run particle dust{color:[0.6,0.6,1.0],scale:2} 2482 100 266 0 .8 .8 1 15
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={wmCustomMode=1}] run particle dust{color:[0.6,0.6,1.0],scale:2} 2482 103 266 0 .8 .8 1 15
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={wmCustomMode=1}] run particle dust{color:[0.6,0.6,1.0],scale:2} 2482 100 269 0 .8 .8 1 15
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={wmCustomMode=1}] run particle dust{color:[0.6,0.6,1.0],scale:2} 2482 103 269 0 .8 .8 1 15

#particles for battle track
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={wmCustomMode=2}] run particle dust{color:[1.0,0.3,0.3],scale:2} 2482 100 266 0 .8 .8 1 15
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={wmCustomMode=2}] run particle dust{color:[1.0,0.3,0.3],scale:2} 2482 103 266 0 .8 .8 1 15
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={wmCustomMode=2}] run particle dust{color:[1.0,0.3,0.3],scale:2} 2482 100 269 0 .8 .8 1 15
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={wmCustomMode=2}] run particle dust{color:[1.0,0.3,0.3],scale:2} 2482 103 269 0 .8 .8 1 15

#race tracks
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={wmCustomMode=1}] if entity @e[tag=customtrack,tag=customrace] run function sprint_racer:game_logic/0/worldmap_extra/custom/update_display/race_custom
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={wmCustomMode=1}] unless entity @e[tag=customtrack,tag=customrace] run function sprint_racer:game_logic/0/worldmap_extra/custom/update_display/empty

#battle tracks
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={wmCustomMode=2}] if entity @e[tag=customtrack,tag=custombattle] run function sprint_racer:game_logic/0/worldmap_extra/custom/update_display/battle_custom
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={wmCustomMode=2}] unless entity @e[tag=customtrack,tag=custombattle] run function sprint_racer:game_logic/0/worldmap_extra/custom/update_display/empty

#custom preview image? override what just got displayed with that
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={wmCustomMode=1}] if entity @e[tag=customtrack,tag=customrace] as @e[type=armor_stand,limit=1,tag=wmCustomT,tag=customPreview] run function sprint_racer:game_logic/10/update_display/custom_preview/__worldmap_custom
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={wmCustomMode=2}] if entity @e[tag=customtrack,tag=custombattle] as @e[type=armor_stand,limit=1,tag=wmCustomT,tag=customPreview] run function sprint_racer:game_logic/10/update_display/custom_preview/__worldmap_custom