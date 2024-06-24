#go after chests
execute if entity @s[scores={aiActMCooldown=..0,aiBehavior=..2,itemCooldown=..0,aiStuckTime=..0,aiHasNormal=1..}] if entity @e[tag=itemcontainer,type=armor_stand,distance=..6,tag=!chest10,tag=!aiCantSee] run tag @s add newbehave
execute if entity @s[scores={aiActMCooldown=..0,aiBehavior=..2,itemCooldown=..0,aiStuckTime=..0,aiHasNormal=..0}] if entity @e[tag=itemcontainer,type=armor_stand,distance=..6,tag=!chest2,tag=!chest10,tag=!aiCantSee] run tag @s add newbehave
execute if entity @s[tag=inWater,scores={aiActMCooldown=..0,aiBehavior=..2,itemCooldown=..0,aiStuckTime=..0,aiHasNormal=1..}] if entity @e[tag=itemchest,type=armor_stand,distance=..6,tag=!chest10,tag=!aiCantSee] run tag @s add newbehave
execute if entity @s[tag=inWater,scores={aiActMCooldown=..0,aiBehavior=..2,itemCooldown=..0,aiStuckTime=..0,aiHasNormal=..0}] if entity @e[tag=itemchest,type=armor_stand,distance=..6,tag=!chest2,tag=!chest10,tag=!aiCantSee] run tag @s add newbehave
scoreboard players set @e[tag=newbehave,limit=1] aiSubBehavior 1
scoreboard players set @e[tag=newbehave,limit=1] aiSubBTimer 40
tag @e[tag=newbehave] remove newbehave

#go after players or avoid them
scoreboard players remove @s[scores={aiChaseTime=1..,aiBehavior=..2}] aiChaseTime 1
scoreboard players remove @s[scores={aiChaseTime=1..,aiBehavior=..2}] aiChaseTime 1
scoreboard players remove @s[scores={aiRunAwayTime=1..,aiBehavior=..2}] aiRunAwayTime 1
execute if score #halftick value matches 1 run scoreboard players remove @s[scores={aiRunAwayTime=1..,aiBehavior=..2}] aiRunAwayTime 1
execute if entity @s[scores={aiSkill=..1,aiActCCooldown=..0,aiBehavior=..2,aiSubBehavior=..0,aiChaseTime=..0}] if entity @e[tag=activeplayer,distance=..7,tag=!myCHILD] run tag @s add newbehave
execute if entity @s[scores={aiSkill=2,aiActCCooldown=..0,aiBehavior=..2,aiSubBehavior=..0,aiChaseTime=..0}] if entity @e[tag=activeplayer,distance=..10,tag=!myCHILD] run tag @s add newbehave
execute if entity @s[scores={aiSkill=3..,aiActCCooldown=..0,aiBehavior=..2,aiSubBehavior=..0,aiChaseTime=..0}] if entity @e[tag=activeplayer,distance=..15,tag=!myCHILD] run tag @s add newbehave
execute if entity @s[tag=newbehave] run function sprint_racer:ai/battle/think_about_chasing_player
tag @e[tag=newbehave] remove newbehave

#flying with elytra
execute if entity @s[scores={elytraTimer=1..,aiSubBehavior=..4}] run tag @s add newbehave
scoreboard players set @e[tag=newbehave,limit=1] aiSubBehavior 5
scoreboard players set @e[tag=newbehave,limit=1] aiSubBTimer 40
tag @e[tag=newbehave] remove newbehave

#engagement
scoreboard players remove @s[scores={AIBC_engagemt=1..}] AIBC_engagemt 1
execute if score #halftick value matches 1 run scoreboard players remove @s[scores={AIBC_engagemt=1..}] AIBC_engagemt 1
execute if entity @e[tag=activeplayer,distance=1..5] run scoreboard players add @s[scores={AIBC_engagemt=..500}] AIBC_engagemt 8
execute if score #halftick value matches 1 if entity @e[tag=activeplayer,distance=1..5] run scoreboard players add @s[scores={AIBC_engagemt=..500}] AIBC_engagemt 8