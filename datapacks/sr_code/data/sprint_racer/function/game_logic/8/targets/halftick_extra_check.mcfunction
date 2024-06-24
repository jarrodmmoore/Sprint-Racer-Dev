#stuff that breaks targets
execute as @a[tag=activeplayer] at @s run tag @e[tag=taTargetCore,distance=..2] add targetHit
#execute as @e[type=fireball] at @s if entity @e[tag=taTargetCore,distance=..3] run kill @s
execute as @e[tag=missile,type=armor_stand] at @s if entity @e[tag=taTargetCore,distance=..2] run function sprint_racer:items/item_tick/missile_explode
execute as @e[type=snowball,tag=!targetVisual] at @s run tag @e[tag=taTargetCore,distance=..3] add targetHit
execute as @e[type=tnt,scores={age=1..}] at @s if entity @e[tag=taTargetCore,distance=..3] run scoreboard players set @s age 100