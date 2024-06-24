#???

#execute if entity @a[distance=..6,gamemode=adventure] run function sprint_racer:game_logic/5/spook

setblock 782 59 406 stone
fill 782 61 405 782 63 407 air

execute as @a[x=782,y=59,z=406,distance=..50] at @s run tp @s ~ ~ ~ ~180 ~
effect give @a[x=782,y=59,z=406,distance=..50] blindness 1 3 true
playsound minecraft:entity.elder_guardian.curse master @a 782 62 406 5 .8