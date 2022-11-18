#Because the formula is "100/level + 1"
# use the enchantment level for the RNG

scoreboard players set $min random 0
execute store result score $max random run scoreboard players get #unb.lvl remdur.data
function remdur:random_uniform

#Check always the output as "0" as true (lose durability)
execute if score $out random matches 0 run function remdur:durability_change/modify/offhand