#pick a random item, assuming we actually have it
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,tag=igotthis] remove igotthis
execute if entity @e[tag=stealTarget2,scores={aiHasItem1=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1}] add igotthis
execute if entity @e[tag=stealTarget2,scores={aiHasItem2=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=2}] add igotthis
execute if entity @e[tag=stealTarget2,scores={aiHasItem3=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=3}] add igotthis
execute if entity @e[tag=stealTarget2,scores={aiHasItem4=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=4}] add igotthis
execute if entity @e[tag=stealTarget2,scores={aiHasItem5=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=5}] add igotthis
execute if entity @e[tag=stealTarget2,scores={aiHasItem6=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=6}] add igotthis
execute if entity @e[tag=stealTarget2,scores={aiHasItem7=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=7}] add igotthis
execute if entity @e[tag=stealTarget2,scores={aiHasItem8=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=8}] add igotthis
execute if entity @e[tag=stealTarget2,scores={aiHasItem9=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=9}] add igotthis
execute if entity @e[tag=stealTarget2,scores={aiHasItem10=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=10}] add igotthis
execute if entity @e[tag=stealTarget2,scores={aiHasItem11=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=11}] add igotthis
execute if entity @e[tag=stealTarget2,scores={aiHasItem12=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=12}] add igotthis
execute if entity @e[tag=stealTarget2,scores={aiHasItem13=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=13}] add igotthis
execute if entity @e[tag=stealTarget2,scores={aiHasItem14=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=14}] add igotthis
execute if entity @e[tag=stealTarget2,scores={aiHasItem15=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=15}] add igotthis
execute if entity @e[tag=stealTarget2,scores={aiHasItem16=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=16}] add igotthis
execute if entity @e[tag=stealTarget2,scores={aiHasItem17=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=17}] add igotthis
execute if entity @e[tag=stealTarget2,scores={aiHasItem18=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=18}] add igotthis
execute if entity @e[tag=stealTarget2,scores={aiHasItem19=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=19}] add igotthis
execute if entity @e[tag=stealTarget2,scores={aiHasItem20=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=20}] add igotthis

scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,tag=igotthis,scores={rNumber=1..20}] rNumber
#DEBUG
#tellraw @s ["",{text:"rNumber = "},{score:{name:"@s",objective:"rNumber"}}]

tag @e[tag=random,x=1548,y=155,z=406,distance=..1,tag=igotthis] remove igotthis

tag @s remove gotEm
scoreboard players set @s giveQty 0
execute if entity @s[tag=!gotEm,scores={rNumber=1}] run function sprint_racer:items/item_tick/steal_item_ai/normal/no1
execute if entity @s[tag=!gotEm,scores={rNumber=2}] run function sprint_racer:items/item_tick/steal_item_ai/normal/no2
execute if entity @s[tag=!gotEm,scores={rNumber=3}] run function sprint_racer:items/item_tick/steal_item_ai/normal/no3
execute if entity @s[tag=!gotEm,scores={rNumber=4}] run function sprint_racer:items/item_tick/steal_item_ai/normal/no4
execute if entity @s[tag=!gotEm,scores={rNumber=5}] run function sprint_racer:items/item_tick/steal_item_ai/normal/no5
execute if entity @s[tag=!gotEm,scores={rNumber=6}] run function sprint_racer:items/item_tick/steal_item_ai/normal/no6
execute if entity @s[tag=!gotEm,scores={rNumber=7}] run function sprint_racer:items/item_tick/steal_item_ai/normal/no7
execute if entity @s[tag=!gotEm,scores={rNumber=8}] run function sprint_racer:items/item_tick/steal_item_ai/normal/no8
execute if entity @s[tag=!gotEm,scores={rNumber=9}] run function sprint_racer:items/item_tick/steal_item_ai/normal/no9
execute if entity @s[tag=!gotEm,scores={rNumber=10}] run function sprint_racer:items/item_tick/steal_item_ai/normal/no10
execute if entity @s[tag=!gotEm,scores={rNumber=11}] run function sprint_racer:items/item_tick/steal_item_ai/normal/no11
execute if entity @s[tag=!gotEm,scores={rNumber=12}] run function sprint_racer:items/item_tick/steal_item_ai/normal/no12
execute if entity @s[tag=!gotEm,scores={rNumber=13}] run function sprint_racer:items/item_tick/steal_item_ai/normal/no13
execute if entity @s[tag=!gotEm,scores={rNumber=14}] run function sprint_racer:items/item_tick/steal_item_ai/normal/no14
execute if entity @s[tag=!gotEm,scores={rNumber=15}] run function sprint_racer:items/item_tick/steal_item_ai/normal/no15
execute if entity @s[tag=!gotEm,scores={rNumber=16}] run function sprint_racer:items/item_tick/steal_item_ai/normal/no16
execute if entity @s[tag=!gotEm,scores={rNumber=17}] run function sprint_racer:items/item_tick/steal_item_ai/normal/no17
execute if entity @s[tag=!gotEm,scores={rNumber=18}] run function sprint_racer:items/item_tick/steal_item_ai/normal/no18
execute if entity @s[tag=!gotEm,scores={rNumber=19}] run function sprint_racer:items/item_tick/steal_item_ai/normal/no19
execute if entity @s[tag=!gotEm,scores={rNumber=20}] run function sprint_racer:items/item_tick/steal_item_ai/normal/no20

execute if entity @s[tag=gotEm] run function sprint_racer_language:gameplay/misc_item_text/stolen_item_normal

execute if entity @s[tag=assassin] run tag @e[tag=stealTarget2,scores={itemStolen=1..}] add getClocked
execute if entity @s[tag=assassin] run scoreboard players operation @e[tag=stealTarget2] attackerID = @s playerID
execute if entity @s[tag=assassin] run scoreboard players set @e[tag=stealTarget2] attackTime 100

scoreboard players set @e[tag=stealTarget2] enderSteal 0
scoreboard players set @s enderman 351

#get the stolen item immediately
execute if entity @s[tag=gotEm] if score @s giveItem matches 0.. run function sprint_racer:items/item_tick/enderman_tracking/phase4_instant
tag @s remove gotEm