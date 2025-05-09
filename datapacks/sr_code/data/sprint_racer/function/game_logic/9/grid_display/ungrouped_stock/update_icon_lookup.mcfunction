#executed by a stock track armor stand

#figure out what map_id should represent us

#-----
#exit out and show nothing if we're a custom track that's hidden

#race
#praia classic (requires cheat code)
execute if score #trackGridMode value matches 1 if score #trackGridIterate value matches 37 unless entity @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1,tag=56] run return 0

#casino chase (don't show if COPPA mode is on)
execute if score #trackGridMode value matches 1 if score #trackGridIterate value matches 46 unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!COPPA] run return 0

#cotton void (requires cheat code)
execute if score #trackGridMode value matches 1 if score #trackGridIterate value matches 50 unless entity @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1,tag=38] run return 0

#battle
#underworld (requires cheat code)
execute if score #trackGridMode value matches 2 if score #trackGridIterate value matches 50 unless entity @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1,tag=46] run return 0
#-----

#our rNumber should map cleanly onto the map we want to display
scoreboard players operation #trackGridFetchMap value = @s rNumber

#stock race track with id over 50 needs an offset of +100000
execute if score #trackGridMode value matches 1 if score #trackGridFetchMap value matches 51.. run scoreboard players add #trackGridFetchMap value 100000

#id offset of +1000 for battle maps
execute if score #trackGridMode value matches 2 run scoreboard players add #trackGridFetchMap value 1000

#also report back if we're banned
execute if score #trackGridMode value matches 1 if entity @s[tag=rtBlacklist] run scoreboard players set #trackGridFetchBanned value 1
execute if score #trackGridMode value matches 2 if entity @s[tag=btBlacklist] run scoreboard players set #trackGridFetchBanned value 1