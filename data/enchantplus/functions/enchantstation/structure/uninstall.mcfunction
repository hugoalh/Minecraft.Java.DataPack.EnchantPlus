summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:item_frame",Count:1b}}
particle minecraft:poof ~ ~ ~ 0.5 0.5 0.5 0.05 32 normal @a
playsound minecraft:item.shield.break block @a ~ ~ ~ 1 1
kill @s
