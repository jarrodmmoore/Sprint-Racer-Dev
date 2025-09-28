#do the correct pose based on what we're doing
execute if score @s[tag=!inWater] moveState matches 0..2 unless score @s aiSubBehavior matches 5 run data modify entity @s pose set value "standing"
execute if score @s[tag=inWater] moveState matches 0..2 unless score @s aiSubBehavior matches 5 run data modify entity @s pose set value "swimming"
execute if score @s moveState matches 3 unless score @s aiSubBehavior matches 5 run data modify entity @s pose set value "crouching"
execute if entity @s[scores={elytraTimer=30..,aiSubBehavior=5}] run data modify entity @s pose set value "fall_flying"
