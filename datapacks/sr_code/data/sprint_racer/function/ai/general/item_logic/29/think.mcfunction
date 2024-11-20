tag @s add impGotItem

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=3}] unless entity @s[scores={aiJBIntensity=8..}] run function sprint_racer:ai/general/item_logic/29/use

scoreboard players set @s[scores={aiHasItem29=..0}] aiHoldingItem 0