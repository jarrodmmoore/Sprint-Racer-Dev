#1.17 chunk loading is responsible for world hunger
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run schedule function sprint_racer:bootup 10t
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:bootup_delayed

#we need to keep delaying the ACTUAL bootup function until the global entity is loaded

#i know what you're thinking, and you're right
#i should've used fake players instead of entities for variable storage
#please take a time machine back to 2019 and punch me in the face