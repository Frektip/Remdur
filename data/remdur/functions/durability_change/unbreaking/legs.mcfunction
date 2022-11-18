#Armor formula for unbreaking (60+40/level+1)% chances to take damage
scoreboard players operation .chance remdur.data = #40 remdur.data
scoreboard players add #unb.lvl remdur.data 1
scoreboard players operation .chance remdur.data /= #unb.lvl remdur.data
scoreboard players operation .chance remdur.data += #60 remdur.data

#Use the RNG to get a range from 1 to 100
scoreboard players set $min random 1
scoreboard players set $max random 100
function remdur:random_uniform

#If the output number is less or equal to the "#chance" fake player, so it can damage the item
execute if score $out random <= .chance remdur.data run function remdur:durability_change/modify/legs