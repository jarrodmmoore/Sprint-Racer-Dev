tag @e[tag=random,type=armor_stand,tag=rSortSelect] remove rSortSelect

###hidden tracks don't show up. EVER. unless they're unlocked ;)
execute if entity @e[tag=w,type=armor_stand,tag=realms] run tag @e[type=armor_stand,tag=random,scores={rNumber=46}] add rSortSelect
execute unless entity @e[type=armor_stand,tag=cheats,tag=38] run tag @e[type=armor_stand,tag=random,scores={rNumber=50}] add rSortSelect
execute unless entity @e[type=armor_stand,tag=cheats,tag=56] run tag @e[type=armor_stand,tag=random,scores={rNumber=37}] add rSortSelect

#filter mode 0: don't apply any filters

#filter mode 1: don't return any banned tracks
execute if score #rFilterType value matches 1 run tag @e[type=armor_stand,tag=random,tag=rtBlacklist] add rSortSelect

#filter mode 2: novice tracks only
execute if score #rFilterType value matches 2 run tag @e[type=armor_stand,tag=random,tag=!trackNovice,tag=!trackTutorial] add rSortSelect

#filter mode 3: intermediate tracks only
execute if score #rFilterType value matches 3 run tag @e[type=armor_stand,tag=random,tag=!trackIntermed] add rSortSelect

#filter mode 4: expert tracks only
execute if score #rFilterType value matches 4 run tag @e[type=armor_stand,tag=random,tag=!trackExpert] add rSortSelect

#filter mode 5: master tracks only
execute if score #rFilterType value matches 5 run tag @e[type=armor_stand,tag=random,tag=!trackMaster] add rSortSelect