clear @s glass[custom_data~{no6:1b}] 1

tag @s[scores={anvil=..999}] add dodge

effect give @s invisibility 1 1 true
scoreboard players add @s invisibility 160
scoreboard players set @s[scores={invisibility=481..}] invisibility 480

playsound minecraft:entity.vex.hurt master @a

scoreboard players set @s inputCooldown 10