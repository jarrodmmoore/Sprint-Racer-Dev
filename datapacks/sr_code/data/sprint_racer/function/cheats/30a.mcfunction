effect give @a[gamemode=adventure] minecraft:nausea 15 101 true
effect clear @a[gamemode=!adventure] nausea

execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=0}] run effect clear @a[gamemode=adventure] nausea
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=4}] run effect clear @a[gamemode=adventure] nausea
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=6}] run effect clear @a[gamemode=adventure] nausea
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=9..10}] run effect clear @a[gamemode=adventure] nausea