execute if entity @s[scores={rot_pitch=-25..25}] rotated ~ 0 run summon marker ^ ^ ^0.0004 {Tags:["lookinghere"]}
execute unless entity @s[scores={rot_pitch=-25..25}] run summon marker ^ ^ ^0.0004 {Tags:["lookinghere"]}

particle campfire_cosy_smoke ~ ~1 ~ 0.3 0.2 0.3 .05 2