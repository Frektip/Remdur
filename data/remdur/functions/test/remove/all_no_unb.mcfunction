#Define the method with "#method" fake player, where:
# 0 = is to add durability to the item/regenerate it
# 1 = is to reduce durability to the item
# By default is set to 1
scoreboard players set #method remdur.data 1

# The value in "#durability remdur.data" will additive to make the item
#  lose/gain durability
scoreboard players set #durability remdur.data 20

# In case you want Unbreaking enchantment to take effect
# define "#unbreaking" fake player: 0=false ; 1=true
# By default is set to true/1
scoreboard players set #unbreaking remdur.data 0

#Run a function correcpondent to the Slot it is trying to modify
function remdur:durability_change/mainhand
function remdur:durability_change/offhand
function remdur:durability_change/head
function remdur:durability_change/chest
function remdur:durability_change/legs
function remdur:durability_change/feet