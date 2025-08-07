execute if score @s aiSkill matches ..1 store result score #test value run random value -6..6
execute if score @s aiSkill matches 2 store result score #test value run random value -5..5
execute if score @s aiSkill matches 3.. store result score #test value run random value -3..3
execute if score @s aiSkill matches 3.. if entity @s[tag=ai_rival] store result score #test value run random value -2..2

execute if score #test value matches -6 run return run execute rotated ~ ~-6 run function sprint_racer:items/item_tick/elite/shoot_obliterator
execute if score #test value matches -5 run return run execute rotated ~ ~-5 run function sprint_racer:items/item_tick/elite/shoot_obliterator
execute if score #test value matches -4 run return run execute rotated ~ ~-4 run function sprint_racer:items/item_tick/elite/shoot_obliterator
execute if score #test value matches -3 run return run execute rotated ~ ~-3 run function sprint_racer:items/item_tick/elite/shoot_obliterator
execute if score #test value matches -2 run return run execute rotated ~ ~-2 run function sprint_racer:items/item_tick/elite/shoot_obliterator
execute if score #test value matches -1 run return run execute rotated ~ ~-1 run function sprint_racer:items/item_tick/elite/shoot_obliterator
execute if score #test value matches 0 run return run execute rotated ~ ~ run function sprint_racer:items/item_tick/elite/shoot_obliterator
execute if score #test value matches 1 run return run execute rotated ~ ~1 run function sprint_racer:items/item_tick/elite/shoot_obliterator
execute if score #test value matches 2 run return run execute rotated ~ ~2 run function sprint_racer:items/item_tick/elite/shoot_obliterator
execute if score #test value matches 3 run return run execute rotated ~ ~3 run function sprint_racer:items/item_tick/elite/shoot_obliterator
execute if score #test value matches 4 run return run execute rotated ~ ~4 run function sprint_racer:items/item_tick/elite/shoot_obliterator
execute if score #test value matches 5 run return run execute rotated ~ ~5 run function sprint_racer:items/item_tick/elite/shoot_obliterator
execute if score #test value matches 6 run return run execute rotated ~ ~6 run function sprint_racer:items/item_tick/elite/shoot_obliterator