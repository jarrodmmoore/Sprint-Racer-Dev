execute if entity @s[scores={aiRotOffset=0}] facing entity @e[limit=1,sort=nearest,tag=myCHILDtarget] feet rotated ~ 0 run function sprint_racer:ai/general/movement/movement_scaler/_index

execute if entity @s[scores={aiRotOffset=1..10}] facing entity @e[limit=1,sort=nearest,tag=myCHILDtarget] feet rotated ~10 0 run function sprint_racer:ai/general/movement/movement_scaler/_index
execute if entity @s[scores={aiRotOffset=11..20}] facing entity @e[limit=1,sort=nearest,tag=myCHILDtarget] feet rotated ~20 0 run function sprint_racer:ai/general/movement/movement_scaler/_index
execute if entity @s[scores={aiRotOffset=21..44}] facing entity @e[limit=1,sort=nearest,tag=myCHILDtarget] feet rotated ~33 0 run function sprint_racer:ai/general/movement/movement_scaler/_index
execute if entity @s[scores={aiRotOffset=45}] facing entity @e[limit=1,sort=nearest,tag=myCHILDtarget] feet rotated ~45 0 run function sprint_racer:ai/general/movement/movement_scaler/_index
execute if entity @s[scores={aiRotOffset=46..90}] facing entity @e[limit=1,sort=nearest,tag=myCHILDtarget] feet rotated ~90 0 run function sprint_racer:ai/general/movement/movement_scaler/_index
execute if entity @s[scores={aiRotOffset=91..}] facing entity @e[limit=1,sort=nearest,tag=myCHILDtarget] feet rotated ~180 0 run function sprint_racer:ai/general/movement/movement_scaler/_index

execute if entity @s[scores={aiRotOffset=-10..-1}] facing entity @e[limit=1,sort=nearest,tag=myCHILDtarget] feet rotated ~-10 0 run function sprint_racer:ai/general/movement/movement_scaler/_index
execute if entity @s[scores={aiRotOffset=-20..-11}] facing entity @e[limit=1,sort=nearest,tag=myCHILDtarget] feet rotated ~-20 0 run function sprint_racer:ai/general/movement/movement_scaler/_index
execute if entity @s[scores={aiRotOffset=-44..-21}] facing entity @e[limit=1,sort=nearest,tag=myCHILDtarget] feet rotated ~-33 0 run function sprint_racer:ai/general/movement/movement_scaler/_index
execute if entity @s[scores={aiRotOffset=-45}] facing entity @e[limit=1,sort=nearest,tag=myCHILDtarget] feet rotated ~-45 0 run function sprint_racer:ai/general/movement/movement_scaler/_index
execute if entity @s[scores={aiRotOffset=-90..-46}] facing entity @e[limit=1,sort=nearest,tag=myCHILDtarget] feet rotated ~-90 0 run function sprint_racer:ai/general/movement/movement_scaler/_index
execute if entity @s[scores={aiRotOffset=..-91}] facing entity @e[limit=1,sort=nearest,tag=myCHILDtarget] feet rotated ~180 0 run function sprint_racer:ai/general/movement/movement_scaler/_index