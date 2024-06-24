execute unless entity @s[scores={setHorn=2..10}] run playsound minecraft:sr_horns/honk1 master @a[scores={setHorn=0..}] ~ ~ ~ .5

execute if entity @s[scores={setHorn=2}] run playsound minecraft:sr_horns/honk2 master @a[scores={setHorn=0..}] ~ ~ ~ .5
execute if entity @s[scores={setHorn=3}] run playsound minecraft:sr_horns/honk3 master @a[scores={setHorn=0..}] ~ ~ ~ .5
execute if entity @s[scores={setHorn=4}] run playsound minecraft:sr_horns/honk4 master @a[scores={setHorn=0..}] ~ ~ ~ .5
execute if entity @s[scores={setHorn=5}] run playsound minecraft:sr_horns/honk5 master @a[scores={setHorn=0..}] ~ ~ ~ .5
execute if entity @s[scores={setHorn=6}] run playsound minecraft:sr_horns/honk6 master @a[scores={setHorn=0..}] ~ ~ ~ .5
execute if entity @s[scores={setHorn=7}] run playsound minecraft:sr_horns/honk7 master @a[scores={setHorn=0..}] ~ ~ ~ .5
execute if entity @s[scores={setHorn=8}] run playsound minecraft:sr_horns/honk8 master @a[scores={setHorn=0..}] ~ ~ ~ .5
execute if entity @s[scores={setHorn=9}] run playsound minecraft:sr_horns/honk9 master @a[scores={setHorn=0..}] ~ ~ ~ .5
execute if entity @s[scores={setHorn=10}] run playsound minecraft:sr_horns/honk10 master @a[scores={setHorn=0..}] ~ ~ ~ .4

execute unless entity @s[scores={setHorn=10}] at @s run function sprint_racer_language:_dlc_4/cheats/honk
execute if entity @s[scores={setHorn=10}] at @s run function sprint_racer_language:_dlc_4/cheats/honk_10

scoreboard players set @s inputCooldown 15