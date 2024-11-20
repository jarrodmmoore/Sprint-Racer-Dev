execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=absorpAlways] if score global playerRequire matches ..4 run effect give @a[tag=playing] minecraft:absorption 1000000 0 true

execute if score global playerRequire matches 5..8 run effect give @a[tag=playing] minecraft:absorption 1000000 0 true
execute if score global playerRequire matches 9..11 run effect give @a[tag=playing] minecraft:absorption 1000000 1 true
execute if score global playerRequire matches 12.. run effect give @a[tag=playing] minecraft:absorption 1000000 2 true

execute if score global playerRequire matches 5.. run tag @a[tag=playing] add absorption
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=absorpAlways] if score global playerRequire matches ..4 run tag @a[tag=playing] add absorption