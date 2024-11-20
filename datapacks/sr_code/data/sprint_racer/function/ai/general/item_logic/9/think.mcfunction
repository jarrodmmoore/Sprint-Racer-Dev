tag @s add impGotItem

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=3}] unless entity @s[scores={aiJBIntensity=5..}] run function sprint_racer:ai/general/item_logic/9/use

scoreboard players set @s[scores={aiHasItem9=..0}] aiHoldingItem 0