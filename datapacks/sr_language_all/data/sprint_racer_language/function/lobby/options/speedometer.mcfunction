#tellraw @s ["",{text:" "}]

tag @s remove optSetB
tag @s add optSetA

tag @s[tag=optSetA,tag=mps] add optSetB
execute if entity @s[tag=optSetB] run tag @s add mph
execute if entity @s[tag=optSetB] run tag @s remove kph
execute if entity @s[tag=optSetB] run tag @s remove mps
execute if entity @s[tag=optSetB] run tag @s remove mcunits
execute if entity @s[tag=optSetB] run tag @s remove nounits
#execute if entity @s[tag=optSetB] run tellraw @s ["",{text:"MPH",color:"aqua",bold:true}]
#execute if entity @s[tag=optSetB] run tellraw @s ["",{text:"Your speedometer now displays in miles per hour",color:"aqua"}]
execute if entity @s[tag=optSetB] run playsound minecraft:block.note_block.hat master @s
tag @s[tag=optSetB] remove optSetA
tag @s[tag=optSetB] remove optSetB

tag @s[tag=optSetA,tag=mph] add optSetB
execute if entity @s[tag=optSetB] run tag @s add kph
execute if entity @s[tag=optSetB] run tag @s remove mps
execute if entity @s[tag=optSetB] run tag @s remove mcunits
execute if entity @s[tag=optSetB] run tag @s remove nounits
execute if entity @s[tag=optSetB] run tag @s remove mph
#execute if entity @s[tag=optSetB] run tellraw @s ["",{text:"KPH",color:"aqua",bold:true}]
#execute if entity @s[tag=optSetB] run tellraw @s ["",{text:"Your speedometer now displays in kilometers per hour",color:"aqua"}]
execute if entity @s[tag=optSetB] run playsound minecraft:block.note_block.hat master @s
tag @s[tag=optSetB] remove optSetA
tag @s[tag=optSetB] remove optSetB

tag @s[tag=optSetA,tag=kph] add optSetB
execute if entity @s[tag=optSetB] run tag @s add mcunits
execute if entity @s[tag=optSetB] run tag @s remove mps
execute if entity @s[tag=optSetB] run tag @s remove kph
execute if entity @s[tag=optSetB] run tag @s remove nounits
execute if entity @s[tag=optSetB] run tag @s remove mph
#execute if entity @s[tag=optSetB] run tellraw @s ["",{text:"MINECRAFT",color:"aqua",bold:true}]
#execute if entity @s[tag=optSetB] run tellraw @s ["",{text:"Your speedometer now displays your speed potion effect",color:"aqua"}]
execute if entity @s[tag=optSetB] run playsound minecraft:block.note_block.hat master @s
tag @s[tag=optSetB] remove optSetA
tag @s[tag=optSetB] remove optSetB

tag @s[tag=optSetA,tag=mcunits] add optSetB
execute if entity @s[tag=optSetB] run tag @s add nounits
execute if entity @s[tag=optSetB] run tag @s remove mps
execute if entity @s[tag=optSetB] run tag @s remove kph
execute if entity @s[tag=optSetB] run tag @s remove mcunits
execute if entity @s[tag=optSetB] run tag @s remove mph
#execute if entity @s[tag=optSetB] run tellraw @s ["",{text:"NONE",color:"red",bold:true}]
#execute if entity @s[tag=optSetB] run tellraw @s ["",{text:"Your speedometer will not display any units",color:"red"}]
execute if entity @s[tag=optSetB] run playsound minecraft:block.note_block.hat master @s
tag @s[tag=optSetB] remove optSetA
tag @s[tag=optSetB] remove optSetB

tag @s[tag=optSetA,tag=nounits] add optSetB
execute if entity @s[tag=optSetB] run tag @s add mps
execute if entity @s[tag=optSetB] run tag @s remove nounits
execute if entity @s[tag=optSetB] run tag @s remove kph
execute if entity @s[tag=optSetB] run tag @s remove mcunits
execute if entity @s[tag=optSetB] run tag @s remove mph
#execute if entity @s[tag=optSetB] run tellraw @s ["",{text:"M\/S",color:"aqua",bold:true}]
#execute if entity @s[tag=optSetB] run tellraw @s ["",{text:"Your speedometer now displays in meters (blocks) per second",color:"aqua"}]
execute if entity @s[tag=optSetB] run playsound minecraft:block.note_block.hat master @s
tag @s[tag=optSetB] remove optSetA
tag @s[tag=optSetB] remove optSetB


#missing tags, give new one
tag @s[tag=optSetA] add mps
tag @s[tag=optSetA] remove optSetA

tag @s remove optSetB