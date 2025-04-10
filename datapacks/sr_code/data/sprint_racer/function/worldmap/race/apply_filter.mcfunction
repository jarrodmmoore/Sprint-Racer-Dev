tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,tag=rSortSelect] remove rSortSelect

###hidden tracks don't show up. EVER. unless they're unlocked ;)
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=COPPA] run tag @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=46}] add rSortSelect
execute unless entity @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1,tag=38] run tag @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=50}] add rSortSelect
execute unless entity @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1,tag=56] run tag @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=37}] add rSortSelect

#filter mode 0: don't apply any filters

#filter mode 1: don't return any banned tracks
execute if score #rFilterType value matches 1 run tag @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,tag=rtBlacklist] add rSortSelect

#filter mode 2: novice tracks only
execute if score #rFilterType value matches 2 run tag @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,tag=!trackNovice,tag=!trackTutorial] add rSortSelect

#filter mode 3: intermediate tracks only
execute if score #rFilterType value matches 3 run tag @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,tag=!trackIntermed] add rSortSelect

#filter mode 4: expert tracks only
execute if score #rFilterType value matches 4 run tag @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,tag=!trackExpert] add rSortSelect

#filter mode 5: master tracks only
execute if score #rFilterType value matches 5 run tag @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,tag=!trackMaster] add rSortSelect