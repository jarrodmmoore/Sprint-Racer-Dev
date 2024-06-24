# "Gamemode:", "Race", "Battle", "Choice" are all safe to modify :)

scoreboard players set Gamemode: lobbyDisplay 2
scoreboard players display numberformat Gamemode: lobbyDisplay blank

team join colorRed Battle
scoreboard players set Battle lobbyDisplay 0
scoreboard players display numberformat Battle lobbyDisplay blank