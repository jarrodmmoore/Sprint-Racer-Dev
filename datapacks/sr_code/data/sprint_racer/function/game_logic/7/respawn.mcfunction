execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,tag=09a] if entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig"}}}] at @s as @e[limit=1,sort=nearest,tag=playerkart] run function sprint_racer:cheats/kart_burst

execute if entity @s[scores={check=..0}] run tp @s @e[limit=1,sort=nearest,tag=finishline,tag=posCalc]

execute if entity @s[scores={check=1}] run tp @s @e[limit=1,sort=nearest,tag=checkpoint,scores={check=1},tag=posCalc]
execute if entity @s[scores={check=2}] run tp @s @e[limit=1,sort=nearest,tag=checkpoint,scores={check=2},tag=posCalc]
execute if entity @s[scores={check=3}] run tp @s @e[limit=1,sort=nearest,tag=checkpoint,scores={check=3},tag=posCalc]
execute if entity @s[scores={check=4}] run tp @s @e[limit=1,sort=nearest,tag=checkpoint,scores={check=4},tag=posCalc]
execute if entity @s[scores={check=5}] run tp @s @e[limit=1,sort=nearest,tag=checkpoint,scores={check=5},tag=posCalc]

execute if entity @s[scores={check=6}] run tp @s @e[limit=1,sort=nearest,tag=checkpoint,scores={check=6},tag=posCalc]
execute if entity @s[scores={check=7}] run tp @s @e[limit=1,sort=nearest,tag=checkpoint,scores={check=7},tag=posCalc]
execute if entity @s[scores={check=8}] run tp @s @e[limit=1,sort=nearest,tag=checkpoint,scores={check=8},tag=posCalc]
execute if entity @s[scores={check=9}] run tp @s @e[limit=1,sort=nearest,tag=checkpoint,scores={check=9},tag=posCalc]
execute if entity @s[scores={check=10}] run tp @s @e[limit=1,sort=nearest,tag=checkpoint,scores={check=10},tag=posCalc]

execute if entity @s[scores={check=11}] run tp @s @e[limit=1,sort=nearest,tag=checkpoint,scores={check=11},tag=posCalc]
execute if entity @s[scores={check=12}] run tp @s @e[limit=1,sort=nearest,tag=checkpoint,scores={check=12},tag=posCalc]
execute if entity @s[scores={check=13}] run tp @s @e[limit=1,sort=nearest,tag=checkpoint,scores={check=13},tag=posCalc]
execute if entity @s[scores={check=14}] run tp @s @e[limit=1,sort=nearest,tag=checkpoint,scores={check=14},tag=posCalc]
execute if entity @s[scores={check=15}] run tp @s @e[limit=1,sort=nearest,tag=checkpoint,scores={check=15},tag=posCalc]

execute if entity @s[scores={check=16}] run tp @s @e[limit=1,sort=nearest,tag=checkpoint,scores={check=16},tag=posCalc]
execute if entity @s[scores={check=17}] run tp @s @e[limit=1,sort=nearest,tag=checkpoint,scores={check=17},tag=posCalc]
execute if entity @s[scores={check=18}] run tp @s @e[limit=1,sort=nearest,tag=checkpoint,scores={check=18},tag=posCalc]
execute if entity @s[scores={check=19}] run tp @s @e[limit=1,sort=nearest,tag=checkpoint,scores={check=19},tag=posCalc]
execute if entity @s[scores={check=20}] run tp @s @e[limit=1,sort=nearest,tag=checkpoint,scores={check=20},tag=posCalc]

execute if entity @s[scores={check=21}] run tp @s @e[limit=1,sort=nearest,tag=checkpoint,scores={check=21},tag=posCalc]
execute if entity @s[scores={check=22}] run tp @s @e[limit=1,sort=nearest,tag=checkpoint,scores={check=22},tag=posCalc]
execute if entity @s[scores={check=23}] run tp @s @e[limit=1,sort=nearest,tag=checkpoint,scores={check=23},tag=posCalc]
execute if entity @s[scores={check=24}] run tp @s @e[limit=1,sort=nearest,tag=checkpoint,scores={check=24},tag=posCalc]
execute if entity @s[scores={check=25}] run tp @s @e[limit=1,sort=nearest,tag=checkpoint,scores={check=25},tag=posCalc]

#make sure we got teleported to a node
execute if entity @s[scores={check=..0}] run tp @s @e[limit=1,sort=nearest,tag=finishline]
execute if entity @s[scores={check=1..}] run tp @s @e[limit=1,sort=nearest,tag=checkpoint]

#this feature is kinda nice, but I had to disable it since it would cause problems if checkpoints were missed
#execute if entity @s[scores={lastTeleport=1..25}] run function sprint_racer:game_logic/1/respawn_at_teleporter

execute if entity @e[tag=w,type=armor_stand,limit=1,tag=customTesting] run function sprint_racer:game_logic/10/respawn_detect

scoreboard players set @s hitstun 0
scoreboard players set @s moveSpeed 0
scoreboard players set @s raceAccel 10
scoreboard players set @s rateDecel 500
scoreboard players reset @s burn
scoreboard players reset @s electrocute
scoreboard players reset @s anvil

scoreboard players reset @s death