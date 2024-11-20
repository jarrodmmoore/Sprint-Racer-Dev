setblock 1591 72 427 minecraft:stone_button[powered=false,facing=south]

execute as @a at @s run playsound minecraft:block.fire.extinguish master @s ~ 100000 ~ 100000 1.5
function sprint_racer_language:_dlc_3/grand_prix/clear_all

#erase all
fill 1584 39 373 1587 39 423 stone

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gpNumber 0
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] gpRound 1

tag @e[type=armor_stand,tag=gpNo1] remove gpNo1
tag @e[type=armor_stand,tag=gpNo2] remove gpNo2
tag @e[type=armor_stand,tag=gpNo3] remove gpNo3
tag @e[type=armor_stand,tag=gpNo4] remove gpNo4
tag @e[type=armor_stand,tag=gpNo5] remove gpNo5
tag @e[type=armor_stand,tag=gpNo6] remove gpNo6
tag @e[type=armor_stand,tag=gpNo7] remove gpNo7
tag @e[type=armor_stand,tag=gpNo8] remove gpNo8
tag @e[type=armor_stand,tag=gpNo9] remove gpNo9
tag @e[type=armor_stand,tag=gpNo10] remove gpNo10

tag @e[type=armor_stand,tag=gpNo11] remove gpNo11
tag @e[type=armor_stand,tag=gpNo12] remove gpNo12
tag @e[type=armor_stand,tag=gpNo13] remove gpNo13
tag @e[type=armor_stand,tag=gpNo14] remove gpNo14
tag @e[type=armor_stand,tag=gpNo15] remove gpNo15
tag @e[type=armor_stand,tag=gpNo16] remove gpNo16
tag @e[type=armor_stand,tag=gpNo17] remove gpNo17
tag @e[type=armor_stand,tag=gpNo18] remove gpNo18
tag @e[type=armor_stand,tag=gpNo19] remove gpNo19
tag @e[type=armor_stand,tag=gpNo20] remove gpNo20

tag @e[type=armor_stand,tag=gpNo21] remove gpNo21
tag @e[type=armor_stand,tag=gpNo22] remove gpNo22
tag @e[type=armor_stand,tag=gpNo23] remove gpNo23
tag @e[type=armor_stand,tag=gpNo24] remove gpNo24
tag @e[type=armor_stand,tag=gpNo25] remove gpNo25
tag @e[type=armor_stand,tag=gpNo26] remove gpNo26
tag @e[type=armor_stand,tag=gpNo27] remove gpNo27
tag @e[type=armor_stand,tag=gpNo28] remove gpNo28
tag @e[type=armor_stand,tag=gpNo29] remove gpNo29
tag @e[type=armor_stand,tag=gpNo30] remove gpNo30

tag @e[type=armor_stand,tag=gpNo31] remove gpNo31
tag @e[type=armor_stand,tag=gpNo32] remove gpNo32
tag @e[type=armor_stand,tag=gpNo33] remove gpNo33
tag @e[type=armor_stand,tag=gpNo34] remove gpNo34
tag @e[type=armor_stand,tag=gpNo35] remove gpNo35
tag @e[type=armor_stand,tag=gpNo36] remove gpNo36
tag @e[type=armor_stand,tag=gpNo37] remove gpNo37
tag @e[type=armor_stand,tag=gpNo38] remove gpNo38
tag @e[type=armor_stand,tag=gpNo39] remove gpNo39
tag @e[type=armor_stand,tag=gpNo40] remove gpNo40

tag @e[type=armor_stand,tag=gpNo41] remove gpNo41
tag @e[type=armor_stand,tag=gpNo42] remove gpNo42
tag @e[type=armor_stand,tag=gpNo43] remove gpNo43
tag @e[type=armor_stand,tag=gpNo44] remove gpNo44
tag @e[type=armor_stand,tag=gpNo45] remove gpNo45
tag @e[type=armor_stand,tag=gpNo46] remove gpNo46
tag @e[type=armor_stand,tag=gpNo47] remove gpNo47
tag @e[type=armor_stand,tag=gpNo48] remove gpNo48
tag @e[type=armor_stand,tag=gpNo49] remove gpNo49
tag @e[type=armor_stand,tag=gpNo50] remove gpNo50

function sprint_racer:game_logic/11/update_display