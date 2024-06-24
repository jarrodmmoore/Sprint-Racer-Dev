#OLD, not very precise
#execute if entity @e[tag=self,scores={aiTDistance=..5}] run tp @s ^ ^ ^2
#execute if entity @e[tag=self,scores={aiTDistance=6..10}] run tp @s ^ ^ ^4
#execute if entity @e[tag=self,scores={aiTDistance=11..15}] run tp @s ^ ^ ^6
#execute if entity @e[tag=self,scores={aiTDistance=16..20}] run tp @s ^ ^ ^8
#execute if entity @e[tag=self,scores={aiTDistance=21..}] run tp @s ^ ^ ^10

#OLD, disabled due to being laggy
#tp @s ^ ^ ^.5
#scoreboard players remove @e[tag=self,scores={aiTDistance=1..}] aiTDistance 1

#execute if entity @e[tag=self,scores={aiTDistance=1..}] run function sprint_racer:ai/general/item_logic/lead_projectile

#the farther away the target is, the more we attempt to lead the projectile!
#(this is recursive)
tp @s ~ ~ ~
scoreboard players remove #aiTDistance value 1
execute if score #aiTDistance value matches 1.. positioned ^ ^ ^.5 run function sprint_racer:ai/general/item_logic/lead_projectile