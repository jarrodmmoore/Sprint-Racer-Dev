#erase time attack data
setblock 1625 80 373 birch_sign[rotation=8]
data merge block 1625 80 373 {front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/reset_all_ta_data"}}','{"text":"TIME ATTACK DATA","bold":true,"color":"black"}','{"text":"[ERASE DATA]","color":"dark_red"}','{"text":""}']},is_waxed:1b}