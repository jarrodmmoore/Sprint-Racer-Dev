tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,tag=bSortSelect] remove bSortSelect

###hidden tracks don't show up. EVER. unless they're unlocked ;)
execute unless entity @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1,tag=46] run tag @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=50}] add bSortSelect

#filter mode 0: don't apply any filters

#filter mode 1: don't return any banned tracks
execute if score #bFilterType value matches 1 run tag @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,tag=btBlacklist] add bSortSelect

#filter mode 2: tiny tracks only
execute if score #bFilterType value matches 2 run tag @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,tag=!trackTiny] add bSortSelect

#filter mode 3: small tracks only
execute if score #bFilterType value matches 3 run tag @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,tag=!trackSmall] add bSortSelect

#filter mode 4: medium tracks only
execute if score #bFilterType value matches 4 run tag @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,tag=!trackMedium] add bSortSelect

#filter mode 5: large tracks only
execute if score #bFilterType value matches 5 run tag @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,tag=!trackLarge] add bSortSelect