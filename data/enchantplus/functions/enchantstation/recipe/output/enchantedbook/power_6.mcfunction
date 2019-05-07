data remove block ~ ~-1 ~ Items[{Slot:0b}]
data remove block ~ ~-1 ~ Items[{Slot:1b}]
data remove block ~ ~-1 ~ Items[{Slot:2b}]
data remove block ~ ~-1 ~ Items[{Slot:3b}]
data remove block ~ ~-1 ~ Items[{Slot:5b}]
data remove block ~ ~-1 ~ Items[{Slot:7b}]
experience add @p -40 levels
scoreboard players operation @s enchantplus_ref = If_Initial enchantplus_ref
execute if data block ~ ~-1 ~ Items[{Slot:4b,id:"minecraft:book"}] unless data block ~ ~-1 ~ Items[{Slot:4b}].tag.Enchantments run data modify block ~ ~-1 ~ Items[{Slot:4b}] merge value {id:"minecraft:enchanted_book",Count:1b}
execute if data block ~ ~-1 ~ Items[{Slot:4b,id:"minecraft:enchanted_book"}] run scoreboard players operation @s enchantplus_ref = If_EnchantedBook_Apply enchantplus_ref
execute if data block ~ ~-1 ~ Items[{Slot:4b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:power",lvl:1s}]}}] run scoreboard players operation @s enchantplus_ref = If_EnchantedBook_Apply enchantplus_ref
execute if data block ~ ~-1 ~ Items[{Slot:4b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:power",lvl:2s}]}}] run scoreboard players operation @s enchantplus_ref = If_EnchantedBook_Apply enchantplus_ref
execute if data block ~ ~-1 ~ Items[{Slot:4b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:power",lvl:3s}]}}] run scoreboard players operation @s enchantplus_ref = If_EnchantedBook_Apply enchantplus_ref
execute if data block ~ ~-1 ~ Items[{Slot:4b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:power",lvl:4s}]}}] run scoreboard players operation @s enchantplus_ref = If_EnchantedBook_Apply enchantplus_ref
execute if data block ~ ~-1 ~ Items[{Slot:4b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:power",lvl:5s}]}}] run scoreboard players operation @s enchantplus_ref = If_EnchantedBook_Apply enchantplus_ref
execute if data block ~ ~-1 ~ Items[{Slot:4b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:power",lvl:6s}]}}] run scoreboard players operation @s enchantplus_ref = If_EnchantedBook_TierUp enchantplus_ref
execute if score @s enchantplus_ref = If_Initial enchantplus_ref run scoreboard players operation @s enchantplus_ref = If_Item_Apply enchantplus_ref
execute if data block ~ ~-1 ~ Items[{Slot:4b,tag:{Enchantments:[{id:"minecraft:power",lvl:1s}]}}] run scoreboard players operation @s enchantplus_ref = If_Item_Apply enchantplus_ref
execute if data block ~ ~-1 ~ Items[{Slot:4b,tag:{Enchantments:[{id:"minecraft:power",lvl:2s}]}}] run scoreboard players operation @s enchantplus_ref = If_Item_Apply enchantplus_ref
execute if data block ~ ~-1 ~ Items[{Slot:4b,tag:{Enchantments:[{id:"minecraft:power",lvl:3s}]}}] run scoreboard players operation @s enchantplus_ref = If_Item_Apply enchantplus_ref
execute if data block ~ ~-1 ~ Items[{Slot:4b,tag:{Enchantments:[{id:"minecraft:power",lvl:4s}]}}] run scoreboard players operation @s enchantplus_ref = If_Item_Apply enchantplus_ref
execute if data block ~ ~-1 ~ Items[{Slot:4b,tag:{Enchantments:[{id:"minecraft:power",lvl:5s}]}}] run scoreboard players operation @s enchantplus_ref = If_Item_Apply enchantplus_ref
execute if data block ~ ~-1 ~ Items[{Slot:4b,tag:{Enchantments:[{id:"minecraft:power",lvl:6s}]}}] run scoreboard players operation @s enchantplus_ref = If_Item_TierUp enchantplus_ref
execute if score @s enchantplus_ref = If_EnchantedBook_Apply enchantplus_ref run data modify block ~ ~-1 ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:power"}].lvl set value 6s
execute if score @s enchantplus_ref = If_Item_Apply enchantplus_ref run data modify block ~ ~-1 ~ Items[{Slot:4b}].tag.Enchantments[{id:"minecraft:power"}].lvl set value 6s
scoreboard players reset @s enchantplus_ref
function enchantplus:enchantstation/effect/output
