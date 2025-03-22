# "Round:" is safe to modify :)

scoreboard players operation Round: lobbyDisplay = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1,type=armor_stand] gpRound
$scoreboard players display numberformat Round: lobbyDisplay fixed ["",{text:"[$(num1)/$(num2)]"}]