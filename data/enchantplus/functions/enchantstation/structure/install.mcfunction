summon minecraft:armor_stand ~ ~ ~ {Tags:["enchantplus"],Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,Small:1b,Marker:1b,DisabledSlots:2039583}
data merge block ~ ~-1 ~ {CustomName:"[{\"translate\":\"container.enchant\"},{\"text\":\"+\"}]"}
particle minecraft:poof ~ ~ ~ 0.5 0.5 0.5 0.05 32 normal @a
playsound minecraft:block.anvil.use block @a ~ ~ ~ 1 1
kill @s
