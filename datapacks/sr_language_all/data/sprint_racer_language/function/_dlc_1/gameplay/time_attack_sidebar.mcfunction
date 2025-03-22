scoreboard objectives remove medals
scoreboard objectives add medals dummy ["",{translate:"sr.game.medals_earned",color:"white",bold:true}]

function sprint_racer:game_logic/6/count_medals

#note: "Bronze", "Silver", "Gold", "Diamond" are safe to edit

team leave Total
team join colorGold Bronze
team join colorGray Silver
team join colorYellow Gold
team join colorAqua Diamond

scoreboard players operation Total medals = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] medalTotal
scoreboard players operation Bronze medals = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] medalBronze
scoreboard players operation Silver medals = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] medalSilver
scoreboard players operation Gold medals = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] medalGold
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={medalDiamond=1..}] run scoreboard players operation Diamond medals = @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] medalDiamond

scoreboard objectives setdisplay sidebar medals