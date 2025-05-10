#executed by a custom track armor stand

$tag 00000065-0000-038d-0000-022b00000046 add $(compare_group)
$execute store result score #success value run tag 00000065-0000-038d-0000-022b00000046 add $(track_group)
#if the second tag command failed, that means it was a match
execute if score #success value matches 0 run tag @s add groupMatched

#clean-up
$tag 00000065-0000-038d-0000-022b00000046 remove $(compare_group)
$tag 00000065-0000-038d-0000-022b00000046 remove $(track_group)