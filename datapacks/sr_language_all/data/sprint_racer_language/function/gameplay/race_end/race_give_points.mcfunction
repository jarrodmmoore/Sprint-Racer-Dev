team join player @a[tag=playing]
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..9}] run function sprint_racer_language:_dlc_2/gameplay/position_display/ai_sidebar_colors

#1st
execute as @e[tag=playing,tag=finished,scores={finishPos=1,addPoints=2..}] run tellraw @a ["",{selector:"@s"},{text:" >> [1st] +",color:"yellow",bold:true},{score:{name:"@s",objective:"addPoints"},color:"yellow",bold:true},{text:" "},{translate:"sr.game.got_points",color:"yellow",bold:true}]
execute as @e[tag=playing,tag=finished,scores={finishPos=1,addPoints=..1}] run tellraw @a ["",{selector:"@s"},{text:" >> [1st] +",color:"yellow",bold:true},{score:{name:"@s",objective:"addPoints"},color:"yellow",bold:true},{text:" "},{translate:"sr.game.got_point",color:"yellow",bold:true}]
execute as @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={finishPos=1}] run function sprint_racer_language:gameplay/race_end/ai_points_1st

#2nd
execute as @e[tag=playing,tag=finished,scores={finishPos=2,addPoints=2..}] run tellraw @a ["",{selector:"@s"},{text:" >> [2nd] +",color:"gray",bold:true},{score:{name:"@s",objective:"addPoints"},color:"gray",bold:true},{text:" "},{translate:"sr.game.got_points",color:"gray",bold:true}]
execute as @e[tag=playing,tag=finished,scores={finishPos=2,addPoints=..1}] run tellraw @a ["",{selector:"@s"},{text:" >> [2nd] +",color:"gray",bold:true},{score:{name:"@s",objective:"addPoints"},color:"gray",bold:true},{text:" "},{translate:"sr.game.got_point",color:"gray",bold:true}]
execute as @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={finishPos=2}] run function sprint_racer_language:gameplay/race_end/ai_points_2nd

#3rd
execute as @e[tag=playing,tag=finished,scores={finishPos=3,addPoints=2..}] run tellraw @a ["",{selector:"@s"},{text:" >> [3rd] +",color:"gold",bold:true},{score:{name:"@s",objective:"addPoints"},color:"gold",bold:true},{text:" "},{translate:"sr.game.got_points",color:"gold",bold:true}]
execute as @e[tag=playing,tag=finished,scores={finishPos=3,addPoints=..1}] run tellraw @a ["",{selector:"@s"},{text:" >> [3rd] +",color:"gold",bold:true},{score:{name:"@s",objective:"addPoints"},color:"gold",bold:true},{text:" "},{translate:"sr.game.got_point",color:"gold",bold:true}]
execute as @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={finishPos=3}] run function sprint_racer_language:gameplay/race_end/ai_points_3rd

#4th
execute as @e[tag=playing,tag=finished,scores={finishPos=4,addPoints=2..}] run tellraw @a ["",{selector:"@s"},{text:" >> [4th] +",color:"white",bold:true},{score:{name:"@s",objective:"addPoints"},color:"white",bold:true},{text:" "},{translate:"sr.game.got_points",color:"white",bold:true}]
execute as @e[tag=playing,tag=finished,scores={finishPos=4,addPoints=..1}] run tellraw @a ["",{selector:"@s"},{text:" >> [4th] +",color:"white",bold:true},{score:{name:"@s",objective:"addPoints"},color:"white",bold:true},{text:" "},{translate:"sr.game.got_point",color:"white",bold:true}]
execute as @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={finishPos=4}] run function sprint_racer_language:gameplay/race_end/ai_points_4th

tag @e[tag=playing,tag=finished,scores={finishPos=1..4}] add best4
tag @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={finishPos=1..4}] add best4

#####
#"..." for players 5th and above (only if there are players who finished 1st through 4th present)
execute if entity @e[tag=best4] as @e[tag=playing,tag=finished,scores={finishPos=5..}] run tellraw @s ["",{text:"...",color:"white",bold:true}]
execute if entity @e[tag=best4] as @e[tag=playing,tag=!finished] run tellraw @s ["",{text:"...",color:"white",bold:true}]

tag @e[tag=best4] remove best4

#5th to 20th (message is only seen by self)
execute as @e[tag=playing,tag=finished,scores={finishPos=5..20,addPoints=2..}] run tellraw @s ["",{selector:"@s"},{text:" >> [",color:"white",bold:true},{score:{name:"@s",objective:"finishPos"},color:"white",bold:true},{text:"th] +",color:"white",bold:true},{score:{name:"@s",objective:"addPoints"},color:"white",bold:true},{text:" "},{translate:"sr.game.got_points",color:"white",bold:true}]
execute as @e[tag=playing,tag=finished,scores={finishPos=5..20,addPoints=..1}] run tellraw @s ["",{selector:"@s"},{text:" >> [",color:"white",bold:true},{score:{name:"@s",objective:"finishPos"},color:"white",bold:true},{text:"th] +",color:"white",bold:true},{score:{name:"@s",objective:"addPoints"},color:"white",bold:true},{text:" "},{translate:"sr.game.got_point",color:"white",bold:true}]

#21st and higher (message is only seen by self)
execute as @e[tag=playing,tag=finished,scores={finishPos=21..,addPoints=2..}] run tellraw @s ["",{selector:"@s"},{text:" >> [",color:"white",bold:true},{score:{name:"@s",objective:"finishPos"},color:"white",bold:true},{text:"] +",color:"white",bold:true},{score:{name:"@s",objective:"addPoints"},color:"white",bold:true},{text:" "},{translate:"sr.game.got_points",color:"white",bold:true}]
execute as @e[tag=playing,tag=finished,scores={finishPos=21..,addPoints=..1}] run tellraw @s ["",{selector:"@s"},{text:" >> [",color:"white",bold:true},{score:{name:"@s",objective:"finishPos"},color:"white",bold:true},{text:"] +",color:"white",bold:true},{score:{name:"@s",objective:"addPoints"},color:"white",bold:true},{text:" "},{translate:"sr.game.got_point",color:"white",bold:true}]

#did not finish
execute as @e[tag=playing,tag=!finished] run tellraw @s ["",{selector:"@s"},{text:" >> [",color:"red",bold:true},{translate:"sr.game.did_not_finish",color:"red",bold:true},{text:"] +0 points",color:"red",bold:true}]


scoreboard players add @a dummyPoints 0
execute as @a[tag=playing] run scoreboard players operation @s points = @s dummyPoints
scoreboard objectives setdisplay sidebar points
scoreboard players add @a[tag=playing,tag=finished] points 0
execute as @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={addPoints=1..}] run function sprint_racer_language:_dlc_3/gameplay/ai_points/display
execute as @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={aiPoints=1..}] run function sprint_racer_language:_dlc_3/gameplay/ai_points/display