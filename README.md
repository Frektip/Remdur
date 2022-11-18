# Remdur
This is a score based Item Durability Damage datapack. It basically let you deal any damage amount you want to any item at a specific Slot for players and mobs
***

# How to use?
All that you basically need is to crete a file and make a setup before running the main function to damage the item you want. There are 3 parameters you need to spcify:

## Method 

You need to use the command `scoreboard players set #method remdur.data <0 or 1>`

This will set the Damage Method you want to do. If it is set to 0 it means that the item will gain healed, and 1 means that the item will lose durability. This will be linked direcly with the "durability" parameter at next.

## Durability

You need to use the command `scoreboard players set #durability remdur.data <number>`

The amount that you set in this scoreboard will be the exact amount the item will lose/gain, you can modify it according to your needs.

## Unbreaking - (optional)

You need to use the command `scoreboard players set #unbreaking remdur.data <0 or 1>`

 -If it is set to 0 it means that the item will get damaged even if it has Unbreaking Enchantment

 -If it is set to 1 and 1 means that the item will lose durability based on the Unbreaking Enchantment. In this case it will have the Unbreaking formula to
   damage the item. Keep in mind that the odds of the item getting damaged is different for items and armor items.
   
For obvious reasons if you set the method to "gain" durability, this parameter will get ignored (if you set them at your setup)

## Affect an Slot

Once you defined the parameters you want to use, it is time to call one ore more functions provided in Remdur to affect an specific Slot you want. For this
you need to follow the command:

`function remdur:durability_change/<slot>`

It currently supports: mainhand/offhand/head/chest/legs/feet Slots
***

# Extra Information

 - Can support any level of Unbreaking enchantment
 - If you don't specify the "Method" or "Unbreaking" parameters, their default values will be 1 for each
 - This datapack uses Aeldrion's [random uniform rng generator](https://github.com/Aeldrion/Minecraft-Random)

You can try yourself this datapack by using the command format:
`/function remdur:test/<action>`

You can check those files and see how you can properly setup your function file before removing them

If you want to remove the datapack make sure to use `/function remdur:uninstall` so the scoreboard and data storages will get removed from your world

