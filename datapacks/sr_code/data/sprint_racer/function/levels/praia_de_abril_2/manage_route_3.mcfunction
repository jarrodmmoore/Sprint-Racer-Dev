#rooftops (must go the side way)
execute if block 1560 90 -895 yellow_stained_glass run fill 1560 90 -895 1560 92 -893 air
execute unless block 1567 90 -896 yellow_banner run clone 1562 87 -896 1567 87 -896 1562 90 -896
execute unless block 1563 90 -899 white_stained_glass run clone 1563 86 -899 1565 88 -899 1563 90 -899

#junction 1
#emerald gate (closed)
execute unless block 1539 71 -887 white_stained_glass run clone 1539 66 -888 1551 69 -887 1539 71 -888
#gold/diamond gate (open)
execute if block 1537 71 -886 air unless block 1538 74 -872 air run fill 1537 71 -886 1538 74 -872 air

#junction 2
#gold gate (closed)
execute if block 1484 71 -888 air if block 1498 74 -887 air run clone 1484 66 -888 1498 69 -887 1484 71 -888
#diamond gate (open)
execute if block 1482 71 -886 air unless block 1483 74 -872 air run fill 1482 71 -886 1483 74 -872 air

#drop-down to switch (gold only)
execute if block 1504 82 -899 air if block 1504 86 -896 air run fill 1504 82 -899 1504 86 -896 yellow_stained_glass
execute if block 1500 82 -895 air if block 1503 86 -895 air run fill 1500 82 -895 1503 86 -895 yellow_stained_glass


###ai routes
#rooftops
execute unless block 1565 88 -894 gold_block if entity @e[type=marker,tag=pda2_r1,limit=1] run scoreboard players set @e[type=marker,tag=pda2_r1] AIBC_dir1 94
execute unless block 1565 88 -894 gold_block if entity @e[type=marker,tag=pda2_r1,limit=1] run setblock 1565 88 -894 gold_block

#junction 1
execute unless block 1545 69 -880 gold_block if entity @e[type=marker,tag=pda2_r2,limit=1] run scoreboard players set @e[type=marker,tag=pda2_r2] AIBC_dir1 114
execute unless block 1545 69 -880 gold_block if entity @e[type=marker,tag=pda2_r2,limit=1] run setblock 1545 69 -880 gold_block

#dropdown to switch
execute unless block 1509 80 -893 diamond_block if entity @e[type=marker,tag=pda2_r3,limit=1] run scoreboard players set @e[type=marker,tag=pda2_r3] AIBC_dir1 123
execute unless block 1509 80 -893 diamond_block if entity @e[type=marker,tag=pda2_r3,limit=1] run setblock 1509 80 -893 diamond_block

#junction 2
execute unless block 1509 69 -879 diamond_block if entity @e[type=marker,tag=pda2_r4,limit=1] run scoreboard players set @e[type=marker,tag=pda2_r4] AIBC_dir1 123
execute unless block 1509 69 -879 diamond_block if entity @e[type=marker,tag=pda2_r4,limit=1] run setblock 1509 69 -879 diamond_block