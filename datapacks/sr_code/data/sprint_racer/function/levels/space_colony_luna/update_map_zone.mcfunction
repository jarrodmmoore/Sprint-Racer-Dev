#magenta wool = show route 1
execute if block ~ 6 ~ magenta_wool run scoreboard players set @s mapZone 1

#pink wool = show route 2
execute if block ~ 6 ~ pink_wool run scoreboard players set @s mapZone 2

#purple wool = show route 3
execute if block ~ 6 ~ purple_wool run scoreboard players set @s mapZone 3


#orange wool = adopt scl_progress value directly
execute if block ~ 6 ~ orange_wool run scoreboard players operation @s mapZone = global scl_progress


#y=7
#cyan wool = change mapZone 3 to mapZone 2
execute if block ~ 7 ~ cyan_wool run scoreboard players set @s[scores={mapZone=3}] mapZone 2

#y=8
#cyan wool = change mapZone 1 to mapZone 2
execute if block ~ 8 ~ cyan_wool run scoreboard players set @s[scores={mapZone=1}] mapZone 2