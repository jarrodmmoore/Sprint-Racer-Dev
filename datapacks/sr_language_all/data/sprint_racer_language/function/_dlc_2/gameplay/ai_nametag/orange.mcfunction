$data merge entity @s {CustomNameVisible:1b,CustomName:{text:"$(name)",color:"gold"}}

#credits zombie shows nametag
execute if entity @s[tag=sa_credits] unless score global gameState matches 12 run data modify entity @s description set value "\uE091"
execute if entity @s[tag=sa_credits] if score global gameState matches 12 run data modify entity @s hide_description set value true