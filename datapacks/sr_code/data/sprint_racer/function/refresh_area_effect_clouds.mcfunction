#alright, so area effect clouds can last up to 60 years, right?
#60 years is a long time, but it's not forever and that makes me feel uncomfortable
#this will refresh their lifespan every now and then, picking 5 of them at random

execute as @e[tag=refreshcloud,limit=5,sort=random,type=marker] run data merge entity @s {Age:-2147483648,Duration:-1,WaitTime:-2147483648}