execute if entity @s[scores={speedlevel=1}] run bossbar set minecraft:speedo name {text:"5.181 m/s"}
execute if entity @s[scores={speedlevel=2}] run bossbar set minecraft:speedo name {text:"6.044 m/s"}
execute if entity @s[scores={speedlevel=3}] run bossbar set minecraft:speedo name {text:"6.907 m/s"}
execute if entity @s[scores={speedlevel=4}] run bossbar set minecraft:speedo name {text:"7.770 m/s"}
execute if entity @s[scores={speedlevel=5}] run bossbar set minecraft:speedo name {text:"8.633 m/s"}
execute if entity @s[scores={speedlevel=6}] run bossbar set minecraft:speedo name {text:"9.496 m/s"}
execute if entity @s[scores={speedlevel=7}] run bossbar set minecraft:speedo name {text:"10.359 m/s"}
execute if entity @s[scores={speedBoost=1..20}] run bossbar set minecraft:speedo name {text:"21.578 m/s"}
execute if entity @s[scores={speedBoost=31..50}] run bossbar set minecraft:speedo name {text:"30.208 m/s"}
#interval is 0.863 m/s