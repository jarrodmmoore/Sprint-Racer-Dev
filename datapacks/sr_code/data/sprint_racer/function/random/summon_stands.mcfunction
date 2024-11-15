#These are used by track randomization, item randomization, etc

kill @e[tag=random]

kill @e[tag=nVote1]
kill @e[tag=nVote2]
kill @e[tag=nVote3]

scoreboard objectives add rNumber dummy

#voting armor stands
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["nVote1"],UUID:[I;0,102,0,1]}
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["nVote2"],UUID:[I;0,102,0,2]}
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["nVote3"],UUID:[I;0,102,0,3]}

#1
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,1]}
scoreboard players set @e[tag=setme] rNumber 1
tag @e[tag=setme] remove setme

#2
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,2]}
scoreboard players set @e[tag=setme] rNumber 2
tag @e[tag=setme] remove setme

#3
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,3]}
scoreboard players set @e[tag=setme] rNumber 3
tag @e[tag=setme] remove setme

#4
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,4]}
scoreboard players set @e[tag=setme] rNumber 4
tag @e[tag=setme] remove setme

#5
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,5]}
scoreboard players set @e[tag=setme] rNumber 5
tag @e[tag=setme] remove setme

#6
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,6]}
scoreboard players set @e[tag=setme] rNumber 6
tag @e[tag=setme] remove setme

#7
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,7]}
scoreboard players set @e[tag=setme] rNumber 7
tag @e[tag=setme] remove setme

#8
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,8]}
scoreboard players set @e[tag=setme] rNumber 8
tag @e[tag=setme] remove setme

#9
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,9]}
scoreboard players set @e[tag=setme] rNumber 9
tag @e[tag=setme] remove setme

#10
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,10]}
scoreboard players set @e[tag=setme] rNumber 10
tag @e[tag=setme] remove setme

#11
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,11]}
scoreboard players set @e[tag=setme] rNumber 11
tag @e[tag=setme] remove setme

#12
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,12]}
scoreboard players set @e[tag=setme] rNumber 12
tag @e[tag=setme] remove setme

#13
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,13]}
scoreboard players set @e[tag=setme] rNumber 13
tag @e[tag=setme] remove setme

#14
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,14]}
scoreboard players set @e[tag=setme] rNumber 14
tag @e[tag=setme] remove setme

#15
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,15]}
scoreboard players set @e[tag=setme] rNumber 15
tag @e[tag=setme] remove setme

#16
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,16]}
scoreboard players set @e[tag=setme] rNumber 16
tag @e[tag=setme] remove setme

#17
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,17]}
scoreboard players set @e[tag=setme] rNumber 17
tag @e[tag=setme] remove setme

#18
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,18]}
scoreboard players set @e[tag=setme] rNumber 18
tag @e[tag=setme] remove setme

#19
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,19]}
scoreboard players set @e[tag=setme] rNumber 19
tag @e[tag=setme] remove setme

#20
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,20]}
scoreboard players set @e[tag=setme] rNumber 20
tag @e[tag=setme] remove setme

#21
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,21]}
scoreboard players set @e[tag=setme] rNumber 21
tag @e[tag=setme] remove setme

#22
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,22]}
scoreboard players set @e[tag=setme] rNumber 22
tag @e[tag=setme] remove setme

#23
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,23]}
scoreboard players set @e[tag=setme] rNumber 23
tag @e[tag=setme] remove setme

#24
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,24]}
scoreboard players set @e[tag=setme] rNumber 24
tag @e[tag=setme] remove setme

#25
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,25]}
scoreboard players set @e[tag=setme] rNumber 25
tag @e[tag=setme] remove setme

#26
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,26]}
scoreboard players set @e[tag=setme] rNumber 26
tag @e[tag=setme] remove setme

#27
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,27]}
scoreboard players set @e[tag=setme] rNumber 27
tag @e[tag=setme] remove setme

#28
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,28]}
scoreboard players set @e[tag=setme] rNumber 28
tag @e[tag=setme] remove setme

#29
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,29]}
scoreboard players set @e[tag=setme] rNumber 29
tag @e[tag=setme] remove setme

#30
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,30]}
scoreboard players set @e[tag=setme] rNumber 30
tag @e[tag=setme] remove setme

#31
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,31]}
scoreboard players set @e[tag=setme] rNumber 31
tag @e[tag=setme] remove setme

#32
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,32]}
scoreboard players set @e[tag=setme] rNumber 32
tag @e[tag=setme] remove setme

#33
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,33]}
scoreboard players set @e[tag=setme] rNumber 33
tag @e[tag=setme] remove setme

#34
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,34]}
scoreboard players set @e[tag=setme] rNumber 34
tag @e[tag=setme] remove setme

#35
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,35]}
scoreboard players set @e[tag=setme] rNumber 35
tag @e[tag=setme] remove setme

#36
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,36]}
scoreboard players set @e[tag=setme] rNumber 36
tag @e[tag=setme] remove setme

#37
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,37]}
scoreboard players set @e[tag=setme] rNumber 37
tag @e[tag=setme] remove setme

#38
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,38]}
scoreboard players set @e[tag=setme] rNumber 38
tag @e[tag=setme] remove setme

#39
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,39]}
scoreboard players set @e[tag=setme] rNumber 39
tag @e[tag=setme] remove setme

#40
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,40]}
scoreboard players set @e[tag=setme] rNumber 40
tag @e[tag=setme] remove setme

#41
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,41]}
scoreboard players set @e[tag=setme] rNumber 41
tag @e[tag=setme] remove setme

#42
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,42]}
scoreboard players set @e[tag=setme] rNumber 42
tag @e[tag=setme] remove setme

#43
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,43]}
scoreboard players set @e[tag=setme] rNumber 43
tag @e[tag=setme] remove setme

#44
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,44]}
scoreboard players set @e[tag=setme] rNumber 44
tag @e[tag=setme] remove setme

#45
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,45]}
scoreboard players set @e[tag=setme] rNumber 45
tag @e[tag=setme] remove setme

#46
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,46]}
scoreboard players set @e[tag=setme] rNumber 46
tag @e[tag=setme] remove setme

#47
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,47]}
scoreboard players set @e[tag=setme] rNumber 47
tag @e[tag=setme] remove setme

#48
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,48]}
scoreboard players set @e[tag=setme] rNumber 48
tag @e[tag=setme] remove setme

#49
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,49]}
scoreboard players set @e[tag=setme] rNumber 49
tag @e[tag=setme] remove setme

#50
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,50]}
scoreboard players set @e[tag=setme] rNumber 50
tag @e[tag=setme] remove setme

#more stands! we went over 50. hope this doesn't cause problems anywhere...

#51
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,51]}
scoreboard players set @e[tag=setme] rNumber 51
tag @e[tag=setme] remove setme

#52
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,52]}
scoreboard players set @e[tag=setme] rNumber 52
tag @e[tag=setme] remove setme

#53
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,53]}
scoreboard players set @e[tag=setme] rNumber 53
tag @e[tag=setme] remove setme

#54
summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["random","setme"],UUID:[I;0,808,0,54]}
scoreboard players set @e[tag=setme] rNumber 54
tag @e[tag=setme] remove setme

scoreboard players set @e[tag=random,scores={rNumber=1..}] randomCooldown 0
scoreboard players set @e[tag=random,scores={rNumber=1..}] randomCooldown2 0
scoreboard players set @e[tag=random,scores={rNumber=1..}] trackBestTime 0
scoreboard players set @e[tag=random,scores={rNumber=1..}] trackBestTimeB 0
scoreboard players set @e[tag=random,scores={rNumber=1..}] medalRace 0
scoreboard players set @e[tag=random,scores={rNumber=1..}] medalBattle 0

function sprint_racer:random/give_track_tags