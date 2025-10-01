###################################################################################### ! REMEMBER TO SET MAP mapVersion BELOW !
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=realms] run tellraw @s ["",{text:"Map version: 1.6.9",bold:false,color:"gray"}]
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] mapVersion 10609

#warn if command blocks disabled
execute if score #commandBlockCheck value matches -1 run tellraw @a ["",{text:"\uE075 Command blocks are not enabled. Please enable command blocks, or parts of Sprint Racer won't work properly.",color:"red",bold:true}]