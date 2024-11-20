scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] GTplatTimer 1
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={GTplatTimer=31..}] GTplatTimer 1

#GTplatBlue
#GTplatRed

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={GTplatTimer=1}] as @e[tag=CVplatRed,type=armor_stand] at @s run fill ~ ~-1 ~ ~1 ~-1 ~1 air
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={GTplatTimer=1}] as @e[tag=CVplatBlue,type=armor_stand] at @s run fill ~ ~-1 ~ ~1 ~-1 ~1 blue_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={GTplatTimer=1}] as @a[tag=playing,scores={check=1}] run playsound minecraft:entity.vex.charge master @s ~ 100000 ~ 100000 1

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={GTplatTimer=16}] as @e[tag=CVplatBlue,type=armor_stand] at @s run fill ~ ~-1 ~ ~1 ~-1 ~1 air
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={GTplatTimer=16}] as @e[tag=CVplatRed,type=armor_stand] at @s run fill ~ ~-1 ~ ~1 ~-1 ~1 red_stained_glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={GTplatTimer=16}] as @a[tag=playing,scores={check=1}] run playsound minecraft:entity.vex.charge master @s ~ 100000 ~ 100000 1


#shooty
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={GTplatTimer=11}] if entity @a[tag=playing,tag=!finished,scores={check=0}] run function sprint_racer:levels/cotton_void/shooty