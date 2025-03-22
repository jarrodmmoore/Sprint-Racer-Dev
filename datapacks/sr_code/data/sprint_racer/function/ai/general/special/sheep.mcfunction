execute unless entity @s[name="jeb_"] run data merge entity @s {CustomName:{text:"jeb_"}}

execute unless entity @s[scores={invisibility=1..}] run particle dust{color:[1.0,0.5,0.5],scale:1} ^ ^1 ^-1 0 0 0 1 1
execute unless entity @s[scores={invisibility=1..}] run particle dust{color:[1.0,1.0,0.5],scale:1} ^ ^.8 ^-1 0 0 0 1 1
execute unless entity @s[scores={invisibility=1..}] run particle dust{color:[0.5,1.0,0.5],scale:1} ^ ^.6 ^-1 0 0 0 1 1
execute unless entity @s[scores={invisibility=1..}] run particle dust{color:[0.5,0.5,1.0],scale:1} ^ ^.4 ^-1 0 0 0 1 1
execute unless entity @s[scores={invisibility=1..}] run particle dust{color:[1.0,0.5,1.0],scale:1} ^ ^.2 ^-1 0 0 0 1 1