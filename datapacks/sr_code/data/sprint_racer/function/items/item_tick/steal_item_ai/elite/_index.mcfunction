#pick a random item, assuming we actually have it
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,tag=igotthis] remove igotthis
execute if entity @e[tag=stealTarget1,scores={aiHasItem21=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1}] add igotthis
execute if entity @e[tag=stealTarget1,scores={aiHasItem22=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=2}] add igotthis
execute if entity @e[tag=stealTarget1,scores={aiHasItem23=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=3}] add igotthis
execute if entity @e[tag=stealTarget1,scores={aiHasItem24=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=4}] add igotthis
execute if entity @e[tag=stealTarget1,scores={aiHasItem25=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=5}] add igotthis
execute if entity @e[tag=stealTarget1,scores={aiHasItem26=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=6}] add igotthis
execute if entity @e[tag=stealTarget1,scores={aiHasItem27=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=7}] add igotthis
execute if entity @e[tag=stealTarget1,scores={aiHasItem28=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=8}] add igotthis
execute if entity @e[tag=stealTarget1,scores={aiHasItem29=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=9}] add igotthis
execute if entity @e[tag=stealTarget1,scores={aiHasItem30=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=10}] add igotthis
execute if entity @e[tag=stealTarget1,scores={aiHasItem31=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=11}] add igotthis
execute if entity @e[tag=stealTarget1,scores={aiHasItem32=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=12}] add igotthis
execute if entity @e[tag=stealTarget1,scores={aiHasItem33=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=13}] add igotthis
execute if entity @e[tag=stealTarget1,scores={aiHasItem34=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=14}] add igotthis
execute if entity @e[tag=stealTarget1,scores={aiHasItem35=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=15}] add igotthis
execute if entity @e[tag=stealTarget1,scores={aiHasItem36=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=16}] add igotthis
execute if entity @e[tag=stealTarget1,scores={aiHasItem37=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=17}] add igotthis
execute if entity @e[tag=stealTarget1,scores={aiHasItem38=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=18}] add igotthis
execute if entity @e[tag=stealTarget1,scores={aiHasItem39=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=19}] add igotthis
execute if entity @e[tag=stealTarget1,scores={aiHasItem40=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=20}] add igotthis
execute if entity @e[tag=stealTarget1,scores={aiHasObliterator=1..}] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=21}] add igotthis

scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,tag=igotthis,scores={rNumber=1..21}] rNumber
#DEBUG
#tellraw @s ["",{text:"rNumber = "},{score:{name:"@s",objective:"rNumber"}}]

tag @e[tag=random,x=1548,y=155,z=406,distance=..1,tag=igotthis] remove igotthis

tag @s remove gotEm
scoreboard players set @s giveQty 0
execute if entity @s[tag=!gotEm,scores={rNumber=1}] run function sprint_racer:items/item_tick/steal_item_ai/elite/elite1
execute if entity @s[tag=!gotEm,scores={rNumber=2}] run function sprint_racer:items/item_tick/steal_item_ai/elite/elite2
execute if entity @s[tag=!gotEm,scores={rNumber=3}] run function sprint_racer:items/item_tick/steal_item_ai/elite/elite3
execute if entity @s[tag=!gotEm,scores={rNumber=4}] run function sprint_racer:items/item_tick/steal_item_ai/elite/elite4
execute if entity @s[tag=!gotEm,scores={rNumber=5}] run function sprint_racer:items/item_tick/steal_item_ai/elite/elite5
execute if entity @s[tag=!gotEm,scores={rNumber=6}] run function sprint_racer:items/item_tick/steal_item_ai/elite/elite6
execute if entity @s[tag=!gotEm,scores={rNumber=7}] run function sprint_racer:items/item_tick/steal_item_ai/elite/elite7
execute if entity @s[tag=!gotEm,scores={rNumber=8}] run function sprint_racer:items/item_tick/steal_item_ai/elite/elite8
execute if entity @s[tag=!gotEm,scores={rNumber=9}] run function sprint_racer:items/item_tick/steal_item_ai/elite/elite9
execute if entity @s[tag=!gotEm,scores={rNumber=10}] run function sprint_racer:items/item_tick/steal_item_ai/elite/elite10
execute if entity @s[tag=!gotEm,scores={rNumber=11}] run function sprint_racer:items/item_tick/steal_item_ai/elite/elite11
execute if entity @s[tag=!gotEm,scores={rNumber=12}] run function sprint_racer:items/item_tick/steal_item_ai/elite/elite12
execute if entity @s[tag=!gotEm,scores={rNumber=13}] run function sprint_racer:items/item_tick/steal_item_ai/elite/elite13
execute if entity @s[tag=!gotEm,scores={rNumber=14}] run function sprint_racer:items/item_tick/steal_item_ai/elite/elite14
execute if entity @s[tag=!gotEm,scores={rNumber=15}] run function sprint_racer:items/item_tick/steal_item_ai/elite/elite15
execute if entity @s[tag=!gotEm,scores={rNumber=16}] run function sprint_racer:items/item_tick/steal_item_ai/elite/elite16
execute if entity @s[tag=!gotEm,scores={rNumber=17}] run function sprint_racer:items/item_tick/steal_item_ai/elite/elite17
execute if entity @s[tag=!gotEm,scores={rNumber=18}] run function sprint_racer:items/item_tick/steal_item_ai/elite/elite18
execute if entity @s[tag=!gotEm,scores={rNumber=19}] run function sprint_racer:items/item_tick/steal_item_ai/elite/elite19
execute if entity @s[tag=!gotEm,scores={rNumber=20}] run function sprint_racer:items/item_tick/steal_item_ai/elite/elite20
execute if entity @s[tag=!gotEm,scores={rNumber=21}] run function sprint_racer:items/item_tick/steal_item_ai/elite/obliterator

execute if entity @s[tag=gotEm] run function sprint_racer_language:gameplay/misc_item_text/stolen_item_elite

execute if entity @s[tag=assassin] run tag @e[tag=stealTarget1,scores={itemStolen=1..}] add getClocked
execute if entity @s[tag=assassin] run scoreboard players operation @e[tag=stealTarget1] attackerID = @s playerID
execute if entity @s[tag=assassin] run scoreboard players set @e[tag=stealTarget1] attackTime 100

scoreboard players set @e[tag=stealTarget1] enderSteal 0
scoreboard players set @s enderman 351

#get the stolen item immediately
execute if entity @s[tag=gotEm] if score @s giveItem matches 0.. run function sprint_racer:items/item_tick/enderman_tracking/phase4_instant
tag @s remove gotEm