data remove block ~ ~-1 ~ Items[{Slot:0b}]
data remove block ~ ~-1 ~ Items[{Slot:1b}]
data remove block ~ ~-1 ~ Items[{Slot:2b}]
data remove block ~ ~-1 ~ Items[{Slot:3b}]
data remove block ~ ~-1 ~ Items[{Slot:5b}]
experience add @p -25 levels
data merge block ~ ~-1 ~ {Items:[{Slot:4b,id:"minecraft:enchanted_book",Count:1b,tag:{StoredEnchantments:[{id:"minecraft:depth_strider",lvl:3s}]}}]}
function enchantplus:enchantstation/effect/output
