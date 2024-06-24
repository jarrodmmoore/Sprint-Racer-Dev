#find out parent
tag @e[limit=1,sort=nearest,type=chicken,tag=cmineactive] add chickenParent


#get our team and ID from parent
scoreboard players operation #myID value = @e[limit=1,type=chicken,tag=chickenParent] playerID
execute if score global aiHasItem40 matches 1 if entity @e[limit=1,type=chicken,tag=chickenParent,tag=playerCyan] run tag @s add itemCyan

#no teams, target nearest player that doesn't have out ID
execute if score global aiHasItem40 matches 0 as @e[tag=activeplayer] unless score @s playerID = #myID value run tag @s add chickenTarget

#teams, target nearest player on the opposing team
execute if score global aiHasItem40 matches 1 if entity @s[tag=itemCyan] run tag @e[tag=activeplayer,tag=!playerCyan] add chickenTarget
execute if score global aiHasItem40 matches 1 if entity @s[tag=!itemCyan] run tag @e[tag=activeplayer,tag=!playerOrange] add chickenTarget

#go at nearest target
execute if entity @e[tag=chickenTarget,limit=1] run data modify entity @s AngryAt set from entity @e[tag=chickenTarget,limit=1,sort=nearest] UUID
data modify entity @s AngerTime set value 300

#clear tags
tag @e[tag=chickenParent,type=chicken] remove chickenParent
tag @e[tag=chickenTarget] remove chickenTarget

#reset timer
scoreboard players set @s age 10