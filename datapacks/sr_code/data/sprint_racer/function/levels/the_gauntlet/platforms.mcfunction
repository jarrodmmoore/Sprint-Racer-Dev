scoreboard players add @e[tag=w,type=armor_stand] GTplatTimer 1
scoreboard players set @e[tag=w,scores={GTplatTimer=151..}] GTplatTimer 1

#GTplatBlue
#GTplatRed

execute if entity @e[tag=w,scores={GTplatTimer=50}] as @e[tag=GTplatBlue,type=armor_stand] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 white_stained_glass
execute if entity @e[tag=w,scores={GTplatTimer=75}] as @e[tag=GTplatBlue,type=armor_stand] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 blue_stained_glass
execute if entity @e[tag=w,scores={GTplatTimer=75}] as @e[tag=GTplatRed,type=armor_stand] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 air
execute if entity @e[tag=w,scores={GTplatTimer=75}] as @a[tag=playing,scores={check=5..6}] run playsound minecraft:entity.vex.charge master @s ~ 100000 ~ 100000 1

execute if entity @e[tag=w,scores={GTplatTimer=125}] as @e[tag=GTplatRed,type=armor_stand] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 white_stained_glass
execute if entity @e[tag=w,scores={GTplatTimer=150}] as @e[tag=GTplatRed,type=armor_stand] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 red_stained_glass
execute if entity @e[tag=w,scores={GTplatTimer=150}] as @e[tag=GTplatBlue,type=armor_stand] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 air
execute if entity @e[tag=w,scores={GTplatTimer=150}] as @a[tag=playing,scores={check=5..6}] run playsound minecraft:entity.vex.charge master @s ~ 100000 ~ 100000 1