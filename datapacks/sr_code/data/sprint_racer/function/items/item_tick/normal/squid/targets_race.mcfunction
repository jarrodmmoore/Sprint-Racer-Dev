#only target players ahead of the user's position
tag @s add self
execute unless entity @s[scores={itemPosition=1..}] run tag @e[limit=4,tag=activeplayer,tag=!self,scores={invisibility=..0,invulTime=..0}] add squidTarget
execute if entity @s[scores={itemPosition=1}] run tag @e[limit=8,tag=activeplayer,tag=!self,scores={itemPosition=2..8,invisibility=..0,invulTime=..0}] add squidTarget
execute if entity @s[scores={itemPosition=2}] run tag @e[limit=8,tag=activeplayer,tag=!self,scores={itemPosition=1,invisibility=..0,invulTime=..0}] add squidTarget
execute if entity @s[scores={itemPosition=3}] run tag @e[limit=8,tag=activeplayer,tag=!self,scores={itemPosition=1..2,invisibility=..0,invulTime=..0}] add squidTarget
execute if entity @s[scores={itemPosition=4}] run tag @e[limit=8,tag=activeplayer,tag=!self,scores={itemPosition=1..3,invisibility=..0,invulTime=..0}] add squidTarget
execute if entity @s[scores={itemPosition=5}] run tag @e[limit=8,tag=activeplayer,tag=!self,scores={itemPosition=1..4,invisibility=..0,invulTime=..0}] add squidTarget
execute if entity @s[scores={itemPosition=6}] run tag @e[limit=8,tag=activeplayer,tag=!self,scores={itemPosition=1..5,invisibility=..0,invulTime=..0}] add squidTarget
execute if entity @s[scores={itemPosition=7}] run tag @e[limit=8,tag=activeplayer,tag=!self,scores={itemPosition=1..6,invisibility=..0,invulTime=..0}] add squidTarget
execute if entity @s[scores={itemPosition=8}] run tag @e[limit=8,tag=activeplayer,tag=!self,scores={itemPosition=1..7,invisibility=..0,invulTime=..0}] add squidTarget
execute if entity @s[scores={itemPosition=9..}] run tag @e[limit=8,tag=activeplayer,tag=!self,scores={itemPosition=1..8,invisibility=..0,invulTime=..0}] add squidTarget
tag @s remove self

#don't blind teammates
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=teamplay] if entity @s[tag=playerOrange] run tag @e[tag=squidTarget,tag=playerOrange] remove squidTarget
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=teamplay] if entity @s[tag=playerCyan] run tag @e[tag=squidTarget,tag=playerCyan] remove squidTarget