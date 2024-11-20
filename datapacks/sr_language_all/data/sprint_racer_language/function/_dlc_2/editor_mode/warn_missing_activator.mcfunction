scoreboard players set @s actionbarState2 5
scoreboard players set @s actionbarState 99

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={currentTimeMsec=..4}] run title @s actionbar ["",{"translate":"sr.editor.warn_missing_activator","color":"red","bold":true}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={currentTimeMsec=5..}] run title @s actionbar ["",{"translate":"sr.editor.warn_missing_activator","color":"white","bold":true}]
