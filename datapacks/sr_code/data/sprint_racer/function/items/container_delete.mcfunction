#if we're just an item drop, die and exit
execute if entity @s[type=item] run return run kill @s
#=====

#executed by an item container that is being deleted

#display entity attached to this chest needs to die
#usually it would die on its own because it has a lifespan on it
#but we need to consider the possibility that this chest is a chest from a newly imported custom track (meaning it has no scoreboard data)
#so let's make 100% sure the display entity dies
execute on passengers run scoreboard players reset @s[type=!player]
execute on passengers run kill @s[type=!player]

#now the armor_stand can die safely
kill @s