scoreboard players add g_cheat aiSpecial 1
execute if score g_cheat aiSpecial matches 41.. run function sprint_racer:cheats/ai_has_items_maybe
execute if score g_cheat aiSpecial matches 41.. run scoreboard players set g_cheat aiSpecial 1