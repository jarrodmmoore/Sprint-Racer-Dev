execute if entity @s[scores={speedlevel=1}] run bossbar set minecraft:speedo name {"text":" "}
execute if entity @s[scores={speedlevel=2}] run bossbar set minecraft:speedo name {"text":"1.832 m/s"}
execute if entity @s[scores={speedlevel=3}] run bossbar set minecraft:speedo name {"text":"2.094 m/s"}
execute if entity @s[scores={speedlevel=4}] run bossbar set minecraft:speedo name {"text":"2.356 m/s"}
execute if entity @s[scores={speedlevel=5}] run bossbar set minecraft:speedo name {"text":"2.618 m/s"}
execute if entity @s[scores={speedlevel=6}] run bossbar set minecraft:speedo name {"text":"2.880 m/s"}
execute if entity @s[scores={speedlevel=7}] run bossbar set minecraft:speedo name {"text":"3.142 m/s"}
execute if entity @s[scores={speedBoost=1..20}] run bossbar set minecraft:speedo name {"text":"6.548 m/s"}
execute if entity @s[scores={speedBoost=31..50}] run bossbar set minecraft:speedo name {"text":"9.168 m/s"}
#interval is 0.262 m/s