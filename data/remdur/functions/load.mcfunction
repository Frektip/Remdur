#Main scoreboard and constants
scoreboard objectives add remdur.data dummy
scoreboard players set #60 remdur.data 60
scoreboard players set #40 remdur.data 40
#Default configuration setup
scoreboard players set #method remdur.data 1
scoreboard players set #unbreaking remdur.data 1

#Randomizer - Uniform (By Aeldrion)
scoreboard objectives add random dummy
execute unless score #lcg random = #lcg random store result score #lcg random run seed

scoreboard players set #8 random 8
scoreboard players set #lcg_a random 1630111353
scoreboard players set #lcg_c random 1623164762
scoreboard players set #lcg_m random 2147483647

#Load Message
tellraw @a ["",{"text":"[","color":"#0e2070"},{"text":"=","color":"#0c2d7b"},{"text":"=","color":"#0b3986"},{"text":"=","color":"#0e4690"},{"text":"=","color":"#14529a"},{"text":"=","color":"#1c5fa3"},{"text":"=","color":"#266bac"},{"text":"=","color":"#3278b5"},{"text":"=","color":"#3e84bd"},{"text":"=","color":"#4b91c5"},{"text":"=","color":"#589ecd"},{"text":"=","color":"#67aad4"},{"text":"=","color":"#76b7dc"},{"text":"=","color":"#85c3e4"},{"text":"=","color":"#95d0eb"},{"text":"=","color":"#a6dcf3"},{"text":"=","color":"#b7e9fb"},{"text":"=","color":"#b7e9fb"},{"text":"=","color":"#a6dcf3"},{"text":"=","color":"#95d0eb"},{"text":"=","color":"#85c3e4"},{"text":"=","color":"#76b7dc"},{"text":"=","color":"#67aad4"},{"text":"=","color":"#589ecd"},{"text":"=","color":"#4b91c5"},{"text":"=","color":"#3e84bd"},{"text":"=","color":"#3278b5"},{"text":"=","color":"#266bac"},{"text":"=","color":"#1c5fa3"},{"text":"=","color":"#14529a"},{"text":"=","color":"#0e4690"},{"text":"=","color":"#0b3986"},{"text":"=","color":"#0c2d7b"},{"text":"]","color":"#0e2070"}]
tellraw @a ["",{"text":"  ---|--Remdur is now: ","color":"#4086EA"},{"text":"Installed","color":"green"},{"text":"--|---","color":"#4086EA"}]
tellraw @a ["",{"text":"[","color":"#0e2070"},{"text":"=","color":"#0c2d7b"},{"text":"=","color":"#0b3986"},{"text":"=","color":"#0e4690"},{"text":"=","color":"#14529a"},{"text":"=","color":"#1c5fa3"},{"text":"=","color":"#266bac"},{"text":"=","color":"#3278b5"},{"text":"=","color":"#3e84bd"},{"text":"=","color":"#4b91c5"},{"text":"=","color":"#589ecd"},{"text":"=","color":"#67aad4"},{"text":"=","color":"#76b7dc"},{"text":"=","color":"#85c3e4"},{"text":"=","color":"#95d0eb"},{"text":"=","color":"#a6dcf3"},{"text":"=","color":"#b7e9fb"},{"text":"=","color":"#b7e9fb"},{"text":"=","color":"#a6dcf3"},{"text":"=","color":"#95d0eb"},{"text":"=","color":"#85c3e4"},{"text":"=","color":"#76b7dc"},{"text":"=","color":"#67aad4"},{"text":"=","color":"#589ecd"},{"text":"=","color":"#4b91c5"},{"text":"=","color":"#3e84bd"},{"text":"=","color":"#3278b5"},{"text":"=","color":"#266bac"},{"text":"=","color":"#1c5fa3"},{"text":"=","color":"#14529a"},{"text":"=","color":"#0e4690"},{"text":"=","color":"#0b3986"},{"text":"=","color":"#0c2d7b"},{"text":"]","color":"#0e2070"}]