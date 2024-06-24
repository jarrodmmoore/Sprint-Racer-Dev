#sort and filter must exist
scoreboard players add #rSortType value 0
scoreboard players add #bSortType value 0
scoreboard players add #rFilterType value 0
scoreboard players add #bFilterType value 0

#reset "recently played" list
scoreboard players set @e[type=armor_stand,tag=random] rSortRecent 0
scoreboard players set @e[type=armor_stand,tag=random] rSortPopular 0

#reset "most popular" statistic
scoreboard players set @e[type=armor_stand,tag=random] bSortRecent 0
scoreboard players set @e[type=armor_stand,tag=random] bSortPopular 0

#generate randomization numbers
function sprint_racer:worldmap/generate_random_order_race
function sprint_racer:worldmap/generate_random_order_battle

################
#rSortDifficulty
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=1}] rSortDifficulty 9
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=2}] rSortDifficulty 1
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=3}] rSortDifficulty 8
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=4}] rSortDifficulty 22
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=5}] rSortDifficulty 13
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=6}] rSortDifficulty 26
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=7}] rSortDifficulty 25
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=8}] rSortDifficulty 36
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=9}] rSortDifficulty 34
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=10}] rSortDifficulty 44
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=11}] rSortDifficulty 35
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=12}] rSortDifficulty 41
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=13}] rSortDifficulty 17
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=14}] rSortDifficulty 38
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=15}] rSortDifficulty 15
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=16}] rSortDifficulty 47
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=17}] rSortDifficulty 6
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=18}] rSortDifficulty 49
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=19}] rSortDifficulty 16
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=20}] rSortDifficulty 4
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=21}] rSortDifficulty 10
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=22}] rSortDifficulty 37
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=23}] rSortDifficulty 2
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=24}] rSortDifficulty 48
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=25}] rSortDifficulty 7
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=26}] rSortDifficulty 24
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=27}] rSortDifficulty 23
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=28}] rSortDifficulty 42
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=29}] rSortDifficulty 27
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=30}] rSortDifficulty 11
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=31}] rSortDifficulty 40
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=32}] rSortDifficulty 18
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=33}] rSortDifficulty 20
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=34}] rSortDifficulty 45
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=35}] rSortDifficulty 43
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=36}] rSortDifficulty 12
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=37}] rSortDifficulty 28
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=38}] rSortDifficulty 29
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=39}] rSortDifficulty 30
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=40}] rSortDifficulty 3
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=41}] rSortDifficulty 39
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=42}] rSortDifficulty 19
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=43}] rSortDifficulty 14
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=44}] rSortDifficulty 21
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=45}] rSortDifficulty 33
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=46}] rSortDifficulty 46
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=47}] rSortDifficulty 32
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=48}] rSortDifficulty 31
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=49}] rSortDifficulty 5
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=50}] rSortDifficulty 50
################

################
#rSortAlphabet
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=1}] rSortAlphabet 36
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=2}] rSortAlphabet 18
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=3}] rSortAlphabet 39
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=4}] rSortAlphabet 41
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=5}] rSortAlphabet 22
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=6}] rSortAlphabet 30
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=7}] rSortAlphabet 24
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=8}] rSortAlphabet 3
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=9}] rSortAlphabet 23
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=10}] rSortAlphabet 34
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=11}] rSortAlphabet 47
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=12}] rSortAlphabet 46
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=13}] rSortAlphabet 16
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=14}] rSortAlphabet 14
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=15}] rSortAlphabet 21
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=16}] rSortAlphabet 20
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=17}] rSortAlphabet 7
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=18}] rSortAlphabet 48
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=19}] rSortAlphabet 11
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=20}] rSortAlphabet 13
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=21}] rSortAlphabet 9
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=22}] rSortAlphabet 15
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=23}] rSortAlphabet 28
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=24}] rSortAlphabet 49
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=25}] rSortAlphabet 37
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=26}] rSortAlphabet 25
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=27}] rSortAlphabet 5
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=28}] rSortAlphabet 4
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=29}] rSortAlphabet 38
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=30}] rSortAlphabet 26
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=31}] rSortAlphabet 29
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=32}] rSortAlphabet 17
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=33}] rSortAlphabet 10
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=34}] rSortAlphabet 19
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=35}] rSortAlphabet 43
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=36}] rSortAlphabet 50
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=37}] rSortAlphabet 33
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=38}] rSortAlphabet 31
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=39}] rSortAlphabet 1
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=40}] rSortAlphabet 45
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=41}] rSortAlphabet 44
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=42}] rSortAlphabet 27
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=43}] rSortAlphabet 12
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=44}] rSortAlphabet 35
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=45}] rSortAlphabet 42
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=46}] rSortAlphabet 2
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=47}] rSortAlphabet 40
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=48}] rSortAlphabet 32
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=49}] rSortAlphabet 8
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=50}] rSortAlphabet 6
################

################
#bSortSize
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=1}] bSortSize 11
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=2}] bSortSize 16
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=3}] bSortSize 13
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=4}] bSortSize 5
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=5}] bSortSize 9
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=6}] bSortSize 18
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=7}] bSortSize 8
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=8}] bSortSize 10
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=9}] bSortSize 14
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=10}] bSortSize 17
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=11}] bSortSize 12
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=12}] bSortSize 4
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=13}] bSortSize 1
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=14}] bSortSize 7
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=15}] bSortSize 3
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=16}] bSortSize 15
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=17}] bSortSize 2
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=50}] bSortSize 6
################

################
#bSortAlphabet
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=1}] bSortAlphabet 17
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=2}] bSortAlphabet 15
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=3}] bSortAlphabet 5
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=4}] bSortAlphabet 14
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=5}] bSortAlphabet 11
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=6}] bSortAlphabet 13
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=7}] bSortAlphabet 8
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=8}] bSortAlphabet 6
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=9}] bSortAlphabet 9
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=10}] bSortAlphabet 2
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=11}] bSortAlphabet 4
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=12}] bSortAlphabet 16
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=13}] bSortAlphabet 10
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=14}] bSortAlphabet 3
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=15}] bSortAlphabet 7
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=16}] bSortAlphabet 12
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=17}] bSortAlphabet 1
scoreboard players set @e[type=armor_stand,tag=random,scores={rNumber=50}] bSortAlphabet 17
################