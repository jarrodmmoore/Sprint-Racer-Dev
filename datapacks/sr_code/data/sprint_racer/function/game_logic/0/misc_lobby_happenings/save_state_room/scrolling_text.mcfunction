scoreboard players set global saveStateSeq1 1
scoreboard players add global saveStateSeq2 1
execute if score global saveStateSeq2 matches 31.. run scoreboard players set global saveStateSeq2 -1

#less relevant texts are skipped when lever is not flicked
execute if score global saveStateSeq2 matches 8 if block 1615 88 456 lever[powered=false] run scoreboard players add global saveStateSeq2 1
execute if score global saveStateSeq2 matches 13 if block 1615 88 456 lever[powered=false] run scoreboard players add global saveStateSeq2 1
execute if score global saveStateSeq2 matches 15 if block 1615 88 456 lever[powered=false] run scoreboard players add global saveStateSeq2 1
execute if score global saveStateSeq2 matches 17 if block 1615 88 456 lever[powered=false] run scoreboard players add global saveStateSeq2 1
execute if score global saveStateSeq2 matches 19 if block 1615 88 456 lever[powered=false] run scoreboard players add global saveStateSeq2 1
execute if score global saveStateSeq2 matches 20 if block 1615 88 456 lever[powered=false] run scoreboard players add global saveStateSeq2 1
execute if score global saveStateSeq2 matches 21 if block 1615 88 456 lever[powered=false] run scoreboard players add global saveStateSeq2 1
execute if score global saveStateSeq2 matches 22 if block 1615 88 456 lever[powered=false] run scoreboard players add global saveStateSeq2 1
execute if score global saveStateSeq2 matches 23 if block 1615 88 456 lever[powered=false] run scoreboard players add global saveStateSeq2 1
execute if score global saveStateSeq2 matches 24 if block 1615 88 456 lever[powered=false] run scoreboard players add global saveStateSeq2 1
execute if score global saveStateSeq2 matches 25 if block 1615 88 456 lever[powered=false] run scoreboard players add global saveStateSeq2 1
execute if score global saveStateSeq2 matches 26 if block 1615 88 456 lever[powered=false] run scoreboard players add global saveStateSeq2 1
execute if score global saveStateSeq2 matches 29 if block 1615 88 456 lever[powered=false] run scoreboard players add global saveStateSeq2 1
execute if score global saveStateSeq2 matches 30 if block 1615 88 456 lever[powered=false] run scoreboard players add global saveStateSeq2 1


#summon the right texts
execute if score global saveStateSeq2 matches 0 run function sprint_racer:game_logic/0/misc_lobby_happenings/save_state_room/text_0

execute if score global saveStateSeq2 matches 1 run function sprint_racer:game_logic/0/misc_lobby_happenings/save_state_room/text_1
execute if score global saveStateSeq2 matches 2 run function sprint_racer:game_logic/0/misc_lobby_happenings/save_state_room/text_2
execute if score global saveStateSeq2 matches 3 run function sprint_racer:game_logic/0/misc_lobby_happenings/save_state_room/text_3

execute if score global saveStateSeq2 matches 4 run function sprint_racer:game_logic/0/misc_lobby_happenings/save_state_room/text_4
execute if score global saveStateSeq2 matches 5 run function sprint_racer:game_logic/0/misc_lobby_happenings/save_state_room/text_5
execute if score global saveStateSeq2 matches 6 run function sprint_racer:game_logic/0/misc_lobby_happenings/save_state_room/text_6

execute if score global saveStateSeq2 matches 7 run function sprint_racer:game_logic/0/misc_lobby_happenings/save_state_room/text_7
execute if score global saveStateSeq2 matches 8 run function sprint_racer:game_logic/0/misc_lobby_happenings/save_state_room/text_8
execute if score global saveStateSeq2 matches 9 run function sprint_racer:game_logic/0/misc_lobby_happenings/save_state_room/text_9
execute if score global saveStateSeq2 matches 10 run function sprint_racer:game_logic/0/misc_lobby_happenings/save_state_room/text_10

execute if score global saveStateSeq2 matches 11 run function sprint_racer:game_logic/0/misc_lobby_happenings/save_state_room/text_11
execute if score global saveStateSeq2 matches 12 run function sprint_racer:game_logic/0/misc_lobby_happenings/save_state_room/text_12
execute if score global saveStateSeq2 matches 13 run function sprint_racer:game_logic/0/misc_lobby_happenings/save_state_room/text_13
execute if score global saveStateSeq2 matches 14 run function sprint_racer:game_logic/0/misc_lobby_happenings/save_state_room/text_14
execute if score global saveStateSeq2 matches 15 run function sprint_racer:game_logic/0/misc_lobby_happenings/save_state_room/text_15

execute if score global saveStateSeq2 matches 16 run function sprint_racer:game_logic/0/misc_lobby_happenings/save_state_room/text_16
execute if score global saveStateSeq2 matches 17 run function sprint_racer:game_logic/0/misc_lobby_happenings/save_state_room/text_17
execute if score global saveStateSeq2 matches 18 run function sprint_racer:game_logic/0/misc_lobby_happenings/save_state_room/text_18
execute if score global saveStateSeq2 matches 19 run function sprint_racer:game_logic/0/misc_lobby_happenings/save_state_room/text_19

execute if score global saveStateSeq2 matches 20 run function sprint_racer:game_logic/0/misc_lobby_happenings/save_state_room/text_20
execute if score global saveStateSeq2 matches 21 run function sprint_racer:game_logic/0/misc_lobby_happenings/save_state_room/text_21
execute if score global saveStateSeq2 matches 22 run function sprint_racer:game_logic/0/misc_lobby_happenings/save_state_room/text_22

execute if score global saveStateSeq2 matches 23 run function sprint_racer:game_logic/0/misc_lobby_happenings/save_state_room/text_23
execute if score global saveStateSeq2 matches 24 run function sprint_racer:game_logic/0/misc_lobby_happenings/save_state_room/text_24

#25 is skipped as it's no longer needed. still exists and gets saved, just buried in obscurity.
#execute if score global saveStateSeq2 matches 25 run function sprint_racer:game_logic/0/misc_lobby_happenings/save_state_room/text_25
execute if score global saveStateSeq2 matches 25 run scoreboard players add global saveStateSeq2 1

execute if score global saveStateSeq2 matches 26 run function sprint_racer:game_logic/0/misc_lobby_happenings/save_state_room/text_26

execute if score global saveStateSeq2 matches 27 run function sprint_racer:game_logic/0/misc_lobby_happenings/save_state_room/text_27
execute if score global saveStateSeq2 matches 28 run function sprint_racer:game_logic/0/misc_lobby_happenings/save_state_room/text_28

execute if score global saveStateSeq2 matches 29 run function sprint_racer:game_logic/0/misc_lobby_happenings/save_state_room/text_29
execute if score global saveStateSeq2 matches 30 run function sprint_racer:game_logic/0/misc_lobby_happenings/save_state_room/text_30
