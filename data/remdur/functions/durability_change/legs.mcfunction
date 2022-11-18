##---Check Unbreaking Condition---##
#If the unbreaking condition is True and the item has that enchantment
# for both: player and living entity
#IGNORE IT IF THE METHOD IS TO ADD DURABILITY
execute if score #method remdur.data matches 0 run scoreboard players set #unbreaking remdur.data 0

execute if score #unbreaking remdur.data matches 1 if entity @s[type=player] store result score #unb.lvl remdur.data run data get entity @s Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
execute if score #unbreaking remdur.data matches 1 if entity @s[type=!player] store result score #unb.lvl remdur.data run data get entity @s ArmorItems[1].tag.Enchantments[{id:"minecraft:unbreaking"}].lvl

#If it doesn't have it, modify it anyways
execute if score #unbreaking remdur.data matches 1 if score #unb.lvl remdur.data matches 0 run function remdur:durability_change/modify/legs

#In case it have Unbreaking enchantment
execute if score #unbreaking remdur.data matches 1 if score #unb.lvl remdur.data matches 1.. run function remdur:durability_change/unbreaking/legs

#If Unbreaking Condition is False
execute if score #unbreaking remdur.data matches 0 run function remdur:durability_change/modify/legs

##---Reset the default configuration---##
scoreboard players set #method remdur.data 1
scoreboard players set #unbreaking remdur.data 1