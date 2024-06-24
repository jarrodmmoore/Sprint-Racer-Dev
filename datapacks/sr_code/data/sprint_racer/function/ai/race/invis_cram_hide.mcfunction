effect give @s invisibility 1 5 true
tag @s[tag=!invis_cram] add invis_cram

execute if entity @s[scores={invisibility=..0}] run particle dust{color:[0.7,0.7,1.0],scale:2.2} ~ ~.3 ~ 0 0 0 1 2 force @a[distance=..30]