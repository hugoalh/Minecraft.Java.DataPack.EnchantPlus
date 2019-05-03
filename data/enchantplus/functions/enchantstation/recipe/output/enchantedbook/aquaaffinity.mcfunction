data remove block ~ ~-1 ~ Items[{Slot:0b}]
data remove block ~ ~-1 ~ Items[{Slot:1b}]
data remove block ~ ~-1 ~ Items[{Slot:2b}]
data remove block ~ ~-1 ~ Items[{Slot:7b}]
experience add @p -3 levels
execute if data block ~ ~-1 ~ Items[{Slot:4b,id:"minecraft:book",Count:1b}] run data modify block ~ ~-1 ~ Items[{Slot:4b}] merge value {id:"minecraft:enchanted_book",Count:1b,tag:{StoredEnchantments:[{id:"minecraft:aqua_affinity",lvl:1s}]}}
execute if data block ~ ~-1 ~ Items[{Slot:4b,id:"minecraft:enchanted_book",Count:1b}] run data modify block ~ ~-1 ~ Items[{Slot:4b}] merge value {id:"minecraft:enchanted_book",Count:1b,tag:{StoredEnchantments:[{id:"minecraft:aqua_affinity",lvl:1s}]}}
function enchantplus:enchantstation/effect/output
