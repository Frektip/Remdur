##---Copy the current Damage into an storage---##
#Refresh the storage
data modify storage remdur:item_dura item.Damage set value [0,0]
#Set the current damage in the left
data modify storage remdur:item_dura item.Damage[0] set from entity @s[type=player] Inventory[{Slot:-106b}].tag.Damage
data modify storage remdur:item_dura item.Damage[0] set from entity @s[type=!player] HandItems[1].tag.Damage
#Damage the item completely and get it's max value in the right
item modify entity @s weapon.offhand remdur:get_max
data modify storage remdur:item_dura item.Damage[1] set from entity @s[type=player] Inventory[{Slot:-106b}].tag.Damage
data modify storage remdur:item_dura item.Damage[1] set from entity @s[type=!player] HandItems[1].tag.Damage

##---Scoreboard calculations!---##
#Get the "Damage value from the storage"
execute store result score $tempdmg remdur.data run data get storage remdur:item_dura item.Damage[0]
execute store result score $maxdmg remdur.data run data get storage remdur:item_dura item.Damage[1]
#Add more damage from "#durability remdur.data" score
#Asign the new value to the data storage
## DON'T DO ENYTHING IF THE MAX DURABILITY IS 0 
##   (that means that it could be any other item that doesn't have Damage nbt tag)
##Check for the "#method" fake player to see if it is trying to add or remove durability
## from the item

execute if score #method remdur.data matches 0 if score $tempdmg remdur.data matches 1.. store result storage remdur:item_dura item.Damage[0] int 1 run scoreboard players operation $tempdmg remdur.data -= #durability remdur.data
execute if score #method remdur.data matches 0 if score $tempdmg remdur.data matches ..-1 run data modify storage remdur:item_dura item.Damage[0] set value 0


execute if score #method remdur.data matches 1 if score $maxdmg remdur.data matches 1.. store result storage remdur:item_dura item.Damage[0] int 1 run scoreboard players operation $tempdmg remdur.data += #durability remdur.data

##---Remove/Update the item---##
## DON'T DO ENYTHING IF THE MAX DURABILITY IS 0 
##   (that means that it could be any other item that doesn't have Damage nbt tag)

#If the Damage score is less than the max score, copy the new nbt from
# the storage to the player
execute if score $tempdmg remdur.data < $maxdmg remdur.data run item modify entity @s weapon.offhand remdur:copy_damage

#If the Damage score exceeds the max score, clear the item
execute if score $maxdmg remdur.data matches 1.. if score $tempdmg remdur.data >= $maxdmg remdur.data run item replace entity @s weapon.offhand with air
execute if score $maxdmg remdur.data matches 1.. if score $tempdmg remdur.data >= $maxdmg remdur.data run playsound entity.item.break master @a ~ ~ ~ 2 1