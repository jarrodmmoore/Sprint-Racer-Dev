execute if entity @s[scores={speedlevel=1}] run bossbar set minecraft:speedo name {"text":" "}
execute if entity @s[scores={speedlevel=2}] run bossbar set minecraft:speedo name {"translate":"sr.speedomoter.sneak.speed_3"}
execute if entity @s[scores={speedlevel=3}] run bossbar set minecraft:speedo name {"translate":"sr.speedomoter.sneak.speed_4"}
execute if entity @s[scores={speedlevel=4}] run bossbar set minecraft:speedo name {"translate":"sr.speedomoter.sneak.speed_5"}
execute if entity @s[scores={speedlevel=5}] run bossbar set minecraft:speedo name {"translate":"sr.speedomoter.sneak.speed_6"}
execute if entity @s[scores={speedlevel=6}] run bossbar set minecraft:speedo name {"translate":"sr.speedomoter.sneak.speed_7"}
execute if entity @s[scores={speedlevel=7}] run bossbar set minecraft:speedo name {"translate":"sr.speedomoter.sneak.speed_8"}
execute if entity @s[scores={speedBoost=1..20}] run bossbar set minecraft:speedo name {"translate":"sr.speedomoter.sneak.speed_21"}
execute if entity @s[scores={speedBoost=31..50}] run bossbar set minecraft:speedo name {"translate":"sr.speedomoter.sneak.speed_31"}