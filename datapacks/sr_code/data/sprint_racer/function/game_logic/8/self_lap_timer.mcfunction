scoreboard players add @s taLapMsec 1

#correct negative seconds (if needed, ever?)
execute if entity @s[scores={taLapSec=..-1}] run scoreboard players remove @s taLapMin 1
execute if entity @s[scores={taLapSec=..-1}] run scoreboard players add @s taLapSec 60

#increment timer, carry numbers whenever needed
execute if entity @s[scores={taLapMsec=10..}] run scoreboard players add @s taLapSec 1
execute if entity @s[scores={taLapMsec=10..}] run scoreboard players remove @s taLapMsec 10
execute if entity @s[scores={taLapSec=60..}] run scoreboard players add @s taLapMin 1
execute if entity @s[scores={taLapSec=60..}] run scoreboard players remove @s taLapSec 60