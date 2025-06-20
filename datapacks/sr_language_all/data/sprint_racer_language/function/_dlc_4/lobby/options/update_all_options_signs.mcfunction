#speedometer bossbar
execute if entity @s[tag=nospeedo] run data merge block 1580 88 370 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1025"}},{text:"SPEEDOMETER",bold:true,color:"black"},{text:"[OFF]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute unless entity @s[tag=nospeedo] run data merge block 1580 88 370 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1025"}},{text:"SPEEDOMETER",bold:true,color:"black"},{text:"[ON]",color:"dark_blue"},{text:""}]},is_waxed:1b}

#classic HUD
execute if entity @s[tag=classicHUD] run data merge block 1585 88 370 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1026"}},{text:"IN-GAME HUD",bold:true,color:"black"},{text:"[CLASSIC]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute unless entity @s[tag=classicHUD] run data merge block 1585 88 370 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1026"}},{text:"IN-GAME HUD",bold:true,color:"black"},{text:"[MODERN]",color:"dark_blue"},{text:""}]},is_waxed:1b}

#AI count (race)
execute if entity @s[scores={optRAIcount=1}] run data merge block 1613 89 360 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1027"}},{text:"COUNT",bold:true,color:"black"},{text:"[x1]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[scores={optRAIcount=2}] run data merge block 1613 89 360 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1027"}},{text:"COUNT",bold:true,color:"black"},{text:"[x2]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[scores={optRAIcount=3}] run data merge block 1613 89 360 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1027"}},{text:"COUNT",bold:true,color:"black"},{text:"[x3]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[scores={optRAIcount=4}] run data merge block 1613 89 360 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1027"}},{text:"COUNT",bold:true,color:"black"},{text:"[x4]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[scores={optRAIcount=5}] run data merge block 1613 89 360 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1027"}},{text:"COUNT",bold:true,color:"black"},{text:"[x5]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[scores={optRAIcount=6}] run data merge block 1613 89 360 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1027"}},{text:"COUNT",bold:true,color:"black"},{text:"[x6]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[scores={optRAIcount=7}] run data merge block 1613 89 360 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1027"}},{text:"COUNT",bold:true,color:"black"},{text:"[x7]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[scores={optRAIcount=8}] run data merge block 1613 89 360 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1027"}},{text:"COUNT",bold:true,color:"black"},{text:"[x8]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[scores={optRAIcount=9}] run data merge block 1613 89 360 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1027"}},{text:"COUNT",bold:true,color:"black"},{text:"[x9]",color:"dark_blue"},{text:""}]},is_waxed:1b}
#execute if entity @s[tag=RAIautocount] run data merge block 1613 89 360 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1027"}},{text:"COUNT",bold:true,color:"black"},{text:"[xAUTO]",color:"dark_blue"},{text:""}]},is_waxed:1b}

#AI count (battle)
execute if entity @s[scores={optBAIcount=1}] run data merge block 1613 89 355 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1028"}},{text:"COUNT",bold:true,color:"black"},{text:"[x1]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[scores={optBAIcount=2}] run data merge block 1613 89 355 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1028"}},{text:"COUNT",bold:true,color:"black"},{text:"[x2]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[scores={optBAIcount=3}] run data merge block 1613 89 355 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1028"}},{text:"COUNT",bold:true,color:"black"},{text:"[x3]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[scores={optBAIcount=4}] run data merge block 1613 89 355 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1028"}},{text:"COUNT",bold:true,color:"black"},{text:"[x4]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[scores={optBAIcount=5}] run data merge block 1613 89 355 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1028"}},{text:"COUNT",bold:true,color:"black"},{text:"[x5]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[scores={optBAIcount=6}] run data merge block 1613 89 355 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1028"}},{text:"COUNT",bold:true,color:"black"},{text:"[x6]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[scores={optBAIcount=7}] run data merge block 1613 89 355 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1028"}},{text:"COUNT",bold:true,color:"black"},{text:"[x7]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[scores={optBAIcount=8}] run data merge block 1613 89 355 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1028"}},{text:"COUNT",bold:true,color:"black"},{text:"[x8]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[scores={optBAIcount=9}] run data merge block 1613 89 355 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1028"}},{text:"COUNT",bold:true,color:"black"},{text:"[x9]",color:"dark_blue"},{text:""}]},is_waxed:1b}
#execute if entity @s[tag=BAIautocount] run data merge block 1613 89 355 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1028"}},{text:"COUNT",bold:true,color:"black"},{text:"[xAUTO]",color:"dark_blue"},{text:""}]},is_waxed:1b}

#absorption at race start
execute if entity @s[tag=absorpAlways] run data merge block 1609 80 365 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1013"}},{text:"ABSORPTION",bold:true,color:"black"},{text:"@ RACE START?",bold:true,color:"black"},{text:"[ALWAYS]",color:"dark_blue"}]},is_waxed:1b}
execute if entity @s[tag=absorpNever] run data merge block 1609 80 365 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1013"}},{text:"ABSORPTION",bold:true,color:"black"},{text:"@ RACE START?",bold:true,color:"black"},{text:"[NEVER]",color:"dark_blue"}]},is_waxed:1b}
execute if entity @s[tag=!absorpAlways,tag=!absorpNever] run data merge block 1609 80 365 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1013"}},{text:"ABSORPTION",bold:true,color:"black"},{text:"@ RACE START?",bold:true,color:"black"},{text:"[5+ PLAYERS]",color:"dark_blue"}]},is_waxed:1b}

#extra chests
execute if entity @s[tag=!noExtraChest] run data merge block 1593 79 433 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1015"}},{text:"EXTRA CHESTS",bold:true,color:"black"},{text:"[5+ PLAYERS]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[tag=noExtraChest] run data merge block 1593 79 433 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1015"}},{text:"EXTRA CHESTS",bold:true,color:"black"},{text:"[NEVER]",color:"dark_blue"},{text:""}]},is_waxed:1b}

#grand prix crowd sfx
execute if entity @s[tag=noCrowdSFX] run data merge block 1583 69 431 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1016"}},{text:"CROWD SFX:",bold:true,color:"black"},{text:"[OFF]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[tag=!noCrowdSFX] run data merge block 1583 69 431 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1016"}},{text:"CROWD SFX:",bold:true,color:"black"},{text:"[ON]",color:"dark_blue"},{text:""}]},is_waxed:1b}

#grand prix loop
execute if entity @s[tag=grandprixloop] run data merge block 1583 69 432 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1017"}},{text:"LOOP?",bold:true,color:"black"},{text:"[YES]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[tag=!grandprixloop] run data merge block 1583 69 432 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1017"}},{text:"LOOP?",bold:true,color:"black"},{text:"[NO]",color:"dark_blue"},{text:""}]},is_waxed:1b}

#item balancing
execute if entity @s[tag=timeBalance,tag=optBalance] run data merge block 1594 79 433 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1008"}},{text:"ITEM BALANCE",bold:true,color:"black"},{text:"[ON--TIME]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[tag=!timeBalance,tag=optBalance] run data merge block 1594 79 433 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1008"}},{text:"ITEM BALANCE",bold:true,color:"black"},{text:"[ON--POSITION]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[tag=!timeBalance,tag=!optBalance] run data merge block 1594 79 433 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1008"}},{text:"ITEM BALANCE",bold:true,color:"black"},{text:"[OFF]",color:"dark_blue"},{text:""}]},is_waxed:1b}

#nearby player invisibility
execute if entity @s[scores={allowInvis=0}] run data merge block 1609 80 363 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1019"}},{text:"NEARBY PLAYER",bold:true,color:"black"},{text:"INVISIBILITY",bold:true,color:"black"},{text:"[NEVER]",color:"dark_blue"}]},is_waxed:1b}
execute if entity @s[scores={allowInvis=1}] run data merge block 1609 80 363 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1019"}},{text:"NEARBY PLAYER",bold:true,color:"black"},{text:"INVISIBILITY",bold:true,color:"black"},{text:"[ALWAYS]",color:"dark_blue"}]},is_waxed:1b}
execute if entity @s[scores={allowInvis=2}] run data merge block 1609 80 363 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1019"}},{text:"NEARBY PLAYER",bold:true,color:"black"},{text:"INVISIBILITY",bold:true,color:"black"},{text:"[5+ PLAYERS]",color:"dark_blue"}]},is_waxed:1b}

#reset music on death (no longer needed)
#...

#ai finish
execute if entity @s[tag=allowAIfinish] run data merge block 1615 91 353 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1002"}},{text:"LET AI FINISH?",bold:true,color:"black"},{text:"[YES]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[tag=!allowAIfinish] run data merge block 1615 91 353 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1002"}},{text:"LET AI FINISH?",bold:true,color:"black"},{text:"[NO]",color:"dark_blue"},{text:""}]},is_waxed:1b}

#auto balance
execute if entity @s[tag=autobalance] run data merge block 1600 89 463 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1003"}},{text:"AUTO-BALANCE",bold:true,color:"black"},{text:"[ON]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[tag=!autobalance] run data merge block 1600 89 463 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1003"}},{text:"AUTO-BALANCE",bold:true,color:"black"},{text:"[OFF]",color:"dark_blue"},{text:""}]},is_waxed:1b}

#difficulty ramp-up
execute if entity @s[scores={difficultyRamp=0}] run data merge block 1588 89 453 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1009"}},{text:"DIFFICULTY",bold:true,color:"black"},{text:"RAMP-UP",bold:true,color:"black"},{text:"[OFF]",color:"dark_blue"}]},is_waxed:1b}
execute if entity @s[scores={difficultyRamp=1}] run data merge block 1588 89 453 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1009"}},{text:"DIFFICULTY",bold:true,color:"black"},{text:"RAMP-UP",bold:true,color:"black"},{text:"[ON]",color:"dark_blue"}]},is_waxed:1b}

#endless mode
execute if entity @s[tag=endlessMode] run data merge block 1592 89 456 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1011"}},{text:"ENDLESS MODE",bold:true,color:"black"},{text:"[ON]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[tag=!endlessMode] run data merge block 1592 89 456 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1011"}},{text:"ENDLESS MODE",bold:true,color:"black"},{text:"[OFF]",color:"dark_blue"},{text:""}]},is_waxed:1b}

#teams
execute if entity @s[tag=teamplay] run data merge block 1601 89 463 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1012"}},{text:"TEAMS",bold:true,color:"black"},{text:"[ON]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[tag=!teamplay] run data merge block 1601 89 463 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1012"}},{text:"TEAMS",bold:true,color:"black"},{text:"[OFF]",color:"dark_blue"},{text:""}]},is_waxed:1b}

#tracks
execute if entity @s[tag=optVote] run data merge block 1581 89 449 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1006"}},{text:"TRACKS",bold:true,color:"black"},{text:"[VOTE]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[tag=optRandom] run data merge block 1581 89 449 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1006"}},{text:"TRACKS",bold:true,color:"black"},{text:"[RANDOM]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[tag=optInOrder] run data merge block 1581 89 449 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1006"}},{text:"TRACKS",bold:true,color:"black"},{text:"[IN ORDER]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[tag=optChoose] run data merge block 1581 89 449 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1006"}},{text:"TRACKS",bold:true,color:"black"},{text:"[CHOOSE]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[tag=optRoulette] run data merge block 1581 89 449 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1006"}},{text:"TRACKS",bold:true,color:"black"},{text:"[ROULETTE]",color:"dark_blue"},{text:""}]},is_waxed:1b}

#ai context race
execute if entity @s[tag=optRAIsingle] run data merge block 1613 89 361 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1040"}},{text:"RACE AI",bold:true,color:"black"},{text:"[SINGLEPLAYER]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[tag=optRAIalways] run data merge block 1613 89 361 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1040"}},{text:"RACE AI",bold:true,color:"black"},{text:"[ALWAYS ON]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[tag=optRAInever] run data merge block 1613 89 361 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1040"}},{text:"RACE AI",bold:true,color:"black"},{text:"[ALWAYS OFF]",color:"dark_blue"},{text:""}]},is_waxed:1b}

#ai context battle
execute if entity @s[tag=optBAIsingle] run data merge block 1613 89 356 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1041"}},{text:"BATTLE AI",bold:true,color:"black"},{text:"[SINGLEPLAYER]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[tag=optBAIalways] run data merge block 1613 89 356 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1041"}},{text:"BATTLE AI",bold:true,color:"black"},{text:"[ALWAYS ON]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[tag=optBAInever] run data merge block 1613 89 356 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1041"}},{text:"BATTLE AI",bold:true,color:"black"},{text:"[ALWAYS OFF]",color:"dark_blue"},{text:""}]},is_waxed:1b}

#ai difficulty (removed)
#execute if entity @s[scores={optAIdiff=-1}] run data merge block 1615 89 353 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"function sprint_racer:game_logic/0/options_signs/ai_difficulty"}},{text:"AI DIFFICULTY:",bold:true,color:"black"},{text:"[ADAPTIVE]",color:"dark_blue"},{text:""}]},is_waxed:1b}
#execute if entity @s[scores={optAIdiff=0}] run data merge block 1615 89 353 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"function sprint_racer:game_logic/0/options_signs/ai_difficulty"}},{text:"AI DIFFICULTY:",bold:true,color:"black"},{text:"[VERY EASY]",color:"dark_blue"},{text:""}]},is_waxed:1b}
#execute if entity @s[scores={optAIdiff=1}] run data merge block 1615 89 353 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"function sprint_racer:game_logic/0/options_signs/ai_difficulty"}},{text:"AI DIFFICULTY:",bold:true,color:"black"},{text:"[EASY]",color:"dark_blue"},{text:""}]},is_waxed:1b}
#execute if entity @s[scores={optAIdiff=2}] run data merge block 1615 89 353 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"function sprint_racer:game_logic/0/options_signs/ai_difficulty"}},{text:"AI DIFFICULTY:",bold:true,color:"black"},{text:"[NORMAL]",color:"dark_blue"},{text:""}]},is_waxed:1b}
#execute if entity @s[scores={optAIdiff=3}] run data merge block 1615 89 353 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"function sprint_racer:game_logic/0/options_signs/ai_difficulty"}},{text:"AI DIFFICULTY:",bold:true,color:"black"},{text:"[HARD]",color:"dark_blue"},{text:""}]},is_waxed:1b}

#ai rubberbanding
execute if entity @s[tag=noRubberBand] run data merge block 1615 90 353 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1042"}},{text:"RUBBERBANDING",bold:true,color:"black"},{text:"[OFF]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[tag=!noRubberBand] run data merge block 1615 90 353 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1042"}},{text:"RUBBERBANDING",bold:true,color:"black"},{text:"[ON]",color:"dark_blue"},{text:""}]},is_waxed:1b}

#gamemodes
execute if entity @s[tag=optRnB] run data merge block 1581 89 448 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1007"}},{text:"GAMEMODES",bold:true,color:"black"},{text:"[RACE & BATTLE]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[tag=optRace] run data merge block 1581 89 448 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1007"}},{text:"GAMEMODES",bold:true,color:"black"},{text:"[RACE ONLY]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[tag=optBattle] run data merge block 1581 89 448 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1007"}},{text:"GAMEMODES",bold:true,color:"black"},{text:"[BATTLE ONLY]",color:"dark_blue"},{text:""}]},is_waxed:1b}

#items
execute if entity @s[tag=optItems] run data merge block 1581 89 450 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1005"}},{text:"ITEMS",bold:true,color:"black"},{text:"[ALWAYS ON]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[tag=optItems] run data merge block 1595 79 433 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1005"}},{text:"ITEMS",bold:true,color:"black"},{text:"[ALWAYS ON]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[tag=optItemsB] run data merge block 1581 89 450 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1005"}},{text:"ITEMS",bold:true,color:"black"},{text:"[BATTLE ONLY]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[tag=optItemsB] run data merge block 1595 79 433 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1005"}},{text:"ITEMS",bold:true,color:"black"},{text:"[BATTLE ONLY]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[tag=optNoItems] run data merge block 1581 89 450 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1005"}},{text:"ITEMS",bold:true,color:"black"},{text:"[ALWAYS OFF]",color:"dark_blue"},{text:""}]},is_waxed:1b}
execute if entity @s[tag=optNoItems] run data merge block 1595 79 433 {front_text:{has_glowing_text:0b,messages:[{text:"",click_event:{action:"run_command",command:"trigger tOption set 1005"}},{text:"ITEMS",bold:true,color:"black"},{text:"[ALWAYS OFF]",color:"dark_blue"},{text:""}]},is_waxed:1b}