#rubberbanding stuff
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={currentTimeMsec=1,oTimer=1,gameTime=..99999}] run function sprint_racer:ai/race/rubberbanding/_skill_index

#go after chests
execute if entity @s[scores={aiActMCooldown=..0,itemCooldown=..0,aiStuckTime=..0,aiHasNormal=1..}] if entity @e[tag=itemcontainer,type=armor_stand,distance=..6,tag=!chest10,tag=!aiCantSee] run tag @s add newbehave
execute if entity @s[scores={aiActMCooldown=..0,itemCooldown=..0,aiStuckTime=..0,aiHasNormal=..0}] if entity @e[tag=itemcontainer,type=armor_stand,distance=..6,tag=!chest2,tag=!chest10,tag=!aiCantSee] run tag @s add newbehave
execute if entity @s[tag=inWater,scores={aiActMCooldown=..0,itemCooldown=..0,aiStuckTime=..0,aiHasNormal=1..}] if entity @e[tag=itemchest,type=armor_stand,distance=..6,tag=!chest10,tag=!aiCantSee] run tag @s add newbehave
execute if entity @s[tag=inWater,scores={aiActMCooldown=..0,itemCooldown=..0,aiStuckTime=..0,aiHasNormal=..0}] if entity @e[tag=itemchest,type=armor_stand,distance=..6,tag=!chest2,tag=!chest10,tag=!aiCantSee] run tag @s add newbehave
tag @s[tag=newbehave,scores={elytraTimer=1..}] remove newbehave
scoreboard players set @s[tag=newbehave] aiSubBehavior 1
scoreboard players set @s[tag=newbehave] aiSubBTimer 40
tag @s[tag=newbehave] remove newbehave

#flying with elytra
execute if entity @s[scores={elytraTimer=1..,aiSubBehavior=..4}] run tag @s add newbehave
scoreboard players set @s[tag=newbehave] aiSubBehavior 5
execute if entity @s[tag=newbehave,type=mannequin] run data merge entity @s {FallFlying:1b}
scoreboard players set @s[tag=newbehave] aiSubBTimer 40
tag @s[tag=newbehave] remove newbehave