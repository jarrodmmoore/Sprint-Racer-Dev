tag @s add impGotItem

execute if entity @e[tag=w,type=armor_stand,scores={gameState=3}] if entity @s[scores={elytraTimer=..0}] run function sprint_racer:ai/general/item_logic/12/use

scoreboard players set @s[scores={aiHasItem12=..0}] aiHoldingItem 0