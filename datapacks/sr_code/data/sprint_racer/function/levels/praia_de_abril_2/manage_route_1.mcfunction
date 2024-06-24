#rooftops
execute if block 1560 90 -895 air run clone 1560 86 -895 1560 88 -893 1560 90 -895
execute unless block 1567 90 -896 air run fill 1567 90 -896 1562 91 -896 air
execute if block 1563 90 -899 white_stained_glass run fill 1563 90 -899 1565 92 -899 air

#junction 1
#emerald gate (open)
execute if block 1539 71 -887 white_stained_glass run fill 1539 71 -888 1551 74 -887 air
#gold/diamond gate (closed)
execute if block 1537 71 -886 air if block 1538 74 -872 air run clone 1537 66 -886 1538 69 -872 1537 71 -886

#junction 2
#gold gate (leave open in case someone sneaks in here lap 1)
execute if block 1484 71 -888 air unless block 1498 74 -887 air run fill 1484 71 -888 1498 74 -887 air
#diamond gate (closed)
execute if block 1482 71 -886 air if block 1483 74 -872 air run clone 1482 66 -886 1483 69 -872 1482 71 -886

#drop-down to switch (gold only)
execute if block 1504 82 -899 air if block 1504 86 -896 air run fill 1504 82 -899 1504 86 -896 yellow_stained_glass
execute if block 1500 82 -895 air if block 1503 86 -895 air run fill 1500 82 -895 1503 86 -895 yellow_stained_glass


###ai routes
#rooftops
execute unless block 1565 88 -894 emerald_block if entity @e[type=marker,tag=pda2_r1,limit=1] run scoreboard players set @e[type=marker,tag=pda2_r1] AIBC_dir1 103
execute unless block 1565 88 -894 emerald_block if entity @e[type=marker,tag=pda2_r1,limit=1] run setblock 1565 88 -894 emerald_block

#junction 1
execute unless block 1545 69 -880 emerald_block if entity @e[type=marker,tag=pda2_r2,limit=1] run scoreboard players set @e[type=marker,tag=pda2_r2] AIBC_dir1 99
execute unless block 1545 69 -880 emerald_block if entity @e[type=marker,tag=pda2_r2,limit=1] run setblock 1545 69 -880 emerald_block

#dropdown to switch
execute unless block 1509 80 -893 emerald_block if entity @e[type=marker,tag=pda2_r3,limit=1] run scoreboard players set @e[type=marker,tag=pda2_r3] AIBC_dir1 115
execute unless block 1509 80 -893 emerald_block if entity @e[type=marker,tag=pda2_r3,limit=1] run setblock 1509 80 -893 emerald_block

#junction 2
execute unless block 1509 69 -879 gold_block if entity @e[type=marker,tag=pda2_r4,limit=1] run scoreboard players set @e[type=marker,tag=pda2_r4] AIBC_dir1 115
execute unless block 1509 69 -879 gold_block if entity @e[type=marker,tag=pda2_r4,limit=1] run setblock 1509 69 -879 gold_block