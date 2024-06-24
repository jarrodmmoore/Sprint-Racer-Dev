scoreboard players operation @s rNumber = @e[limit=1,tag=random,sort=random,scores={rNumber=1..9}] rNumber

data merge entity @s[scores={rNumber=1}] {Motion:[0.0d,0.4d,0.2d]}
data merge entity @s[scores={rNumber=2}] {Motion:[0.1d,0.4d,0.1d]}
data merge entity @s[scores={rNumber=3}] {Motion:[0.2d,0.4d,0.0d]}
data merge entity @s[scores={rNumber=4}] {Motion:[0.0d,0.4d,-0.2d]}
data merge entity @s[scores={rNumber=5}] {Motion:[-0.1d,0.4d,-0.1d]}
data merge entity @s[scores={rNumber=6}] {Motion:[-0.2d,0.4d,0.0d]}
data merge entity @s[scores={rNumber=7}] {Motion:[-0.1d,0.4d,0.1d]}
data merge entity @s[scores={rNumber=8}] {Motion:[0.1d,0.4d,-0.1d]}
data merge entity @s[scores={rNumber=9}] {Motion:[0.0d,0.4d,0.0d]}

tag @s remove giveVelocity