#behind every AI player is an armor stand "puppet master" sitting at worldspawn
#this makes sure its respective AI entity respawns after death and etc

tag @s add currentMaster


#identify the entity that belongs to this AImaster for use throughout this function and its children
execute if score @s rNumber matches 1 run tag @e[tag=ai1,limit=1,scores={validAI1=1..}] add myCHILD
execute if score @s rNumber matches 2 run tag @e[tag=ai2,limit=1,scores={validAI2=1..}] add myCHILD
execute if score @s rNumber matches 3 run tag @e[tag=ai3,limit=1,scores={validAI3=1..}] add myCHILD
execute if score @s rNumber matches 4 run tag @e[tag=ai4,limit=1,scores={validAI4=1..}] add myCHILD
execute if score @s rNumber matches 5 run tag @e[tag=ai5,limit=1,scores={validAI5=1..}] add myCHILD
execute if score @s rNumber matches 6 run tag @e[tag=ai6,limit=1,scores={validAI6=1..}] add myCHILD
execute if score @s rNumber matches 7 run tag @e[tag=ai7,limit=1,scores={validAI7=1..}] add myCHILD
execute if score @s rNumber matches 8 run tag @e[tag=ai8,limit=1,scores={validAI8=1..}] add myCHILD
execute if score @s rNumber matches 9 run tag @e[tag=ai9,limit=1,scores={validAI9=1..}] add myCHILD

#==============================
#myCHILD runs this function
execute as @e[tag=myCHILD,limit=1] at @s run function sprint_racer:ai/general/_ai_child_lazy
#==============================

#clean up tags
tag @e[tag=myCHILD] remove myCHILD
tag @s remove currentMaster
tag @e[tag=inWater,tag=ai] remove inWater