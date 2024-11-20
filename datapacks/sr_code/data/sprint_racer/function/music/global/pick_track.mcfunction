tag @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,tag=currentBGM] remove currentBGM

#turn off music if no music was allowed
execute unless entity @e[limit=1,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,tag=setBGM] unless entity @e[limit=1,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,tag=musicViable] run function sprint_racer:music/global/stop_music

#choose random (unless "setBGM" exists)
execute unless entity @e[limit=1,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,tag=setBGM] unless entity @e[limit=1,type=armor_stand,tag=musicViable,tag=random,x=1548,y=155,z=406,distance=..1,tag=!lastBGM] as @e[limit=1,sort=random,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,tag=musicViable,scores={rNumber=1..28}] run function sprint_racer:music/global/_start_index
execute unless entity @e[limit=1,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,tag=setBGM] as @e[limit=1,sort=random,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,tag=musicViable,scores={rNumber=1..28},tag=!lastBGM] run function sprint_racer:music/global/_start_index

#choose specific track (if "setBGM" exists)
execute as @e[limit=1,sort=random,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,tag=setBGM] run function sprint_racer:music/global/_start_index