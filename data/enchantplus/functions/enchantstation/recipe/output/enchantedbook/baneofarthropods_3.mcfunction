data remove block ~ ~-1 ~ Items[{Slot:0b}]
data remove block ~ ~-1 ~ Items[{Slot:1b}]
data remove block ~ ~-1 ~ Items[{Slot:2b}]
data remove block ~ ~-1 ~ Items[{Slot:3b}]
data remove block ~ ~-1 ~ Items[{Slot:5b}]
data remove block ~ ~-1 ~ Items[{Slot:7b}]
experience add @p -18 levels
scoreboard players operation @s enchantplus_ref = If_Initial enchantplus_ref
execute if data block ~ ~-1 ~ Items[{Slot:4b,id:"minecraft:book"}] unless data block ~ ~-1 ~ Items[{Slot:4b}].tag.Enchantments run scoreboard players operation @s enchantplus_ref = If_Book enchantplus_ref
execute if data block ~ ~-1 ~ Items[{Slot:4b,id:"minecraft:enchanted_book"}] run scoreboard players operation @s enchantplus_ref = If_EnchantedBook_AddOn enchantplus_ref
execute if data block ~ ~-1 ~ Items[{Slot:4b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:bane_of_arthropods",lvl:1s}]}}] run scoreboard players operation @s enchantplus_ref = If_EnchantedBook_Upgrade enchantplus_ref
execute if data block ~ ~-1 ~ Items[{Slot:4b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:bane_of_arthropods",lvl:2s}]}}] run scoreboard players operation @s enchantplus_ref = If_EnchantedBook_Upgrade enchantplus_ref
execute if data block ~ ~-1 ~ Items[{Slot:4b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:bane_of_arthropods",lvl:3s}]}}] run scoreboard players operation @s enchantplus_ref = If_EnchantedBook_TierUp enchantplus_ref
execute if data block ~ ~-1 ~ Items[{Slot:4b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:bane_of_arthropods",lvl:4s}]}}] run scoreboard players operation @s enchantplus_ref = If_EnchantedBook_Useless enchantplus_ref
execute if data block ~ ~-1 ~ Items[{Slot:4b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:bane_of_arthropods",lvl:5s}]}}] run scoreboard players operation @s enchantplus_ref = If_EnchantedBook_Useless enchantplus_ref
execute if data block ~ ~-1 ~ Items[{Slot:4b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:bane_of_arthropods",lvl:6s}]}}] run scoreboard players operation @s enchantplus_ref = If_EnchantedBook_Useless enchantplus_ref
execute if score @s enchantplus_ref = If_Initial enchantplus_ref run scoreboard players operation @s enchantplus_ref = If_Item_Addon enchantplus_ref
execute if data block ~ ~-1 ~ Items[{Slot:4b,tag:{Enchantments:[{id:"minecraft:bane_of_arthropods",lvl:1s}]}}] run scoreboard players operation @s enchantplus_ref = If_Item_Upgrade enchantplus_ref
execute if data block ~ ~-1 ~ Items[{Slot:4b,tag:{Enchantments:[{id:"minecraft:bane_of_arthropods",lvl:2s}]}}] run scoreboard players operation @s enchantplus_ref = If_Item_Upgrade enchantplus_ref
execute if data block ~ ~-1 ~ Items[{Slot:4b,tag:{Enchantments:[{id:"minecraft:bane_of_arthropods",lvl:3s}]}}] run scoreboard players operation @s enchantplus_ref = If_Item_TierUp enchantplus_ref
execute if data block ~ ~-1 ~ Items[{Slot:4b,tag:{Enchantments:[{id:"minecraft:bane_of_arthropods",lvl:4s}]}}] run scoreboard players operation @s enchantplus_ref = If_Item_Useless enchantplus_ref
execute if data block ~ ~-1 ~ Items[{Slot:4b,tag:{Enchantments:[{id:"minecraft:bane_of_arthropods",lvl:5s}]}}] run scoreboard players operation @s enchantplus_ref = If_Item_Useless enchantplus_ref
execute if data block ~ ~-1 ~ Items[{Slot:4b,tag:{Enchantments:[{id:"minecraft:bane_of_arthropods",lvl:6s}]}}] run scoreboard players operation @s enchantplus_ref = If_Item_Useless enchantplus_ref
execute if score @s enchantplus_ref = If_Book enchantplus_ref run data modify block ~ ~-1 ~ Items[{Slot:4b}] merge value {id:"minecraft:enchanted_book",Count:1b,tag:{StoredEnchantments:[{id:"minecraft:bane_of_arthropods",lvl:3s}]}}
execute if score @s enchantplus_ref = If_EnchantedBook_AddOn enchantplus_ref run data modify block ~ ~-1 ~ Items[{Slot:4b}].tag.StoredEnchantments append value {id:"minecraft:bane_of_arthropods",lvl:3s}
execute if score @s enchantplus_ref = If_EnchantedBook_TierUp enchantplus_ref run data modify block ~ ~-1 ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:bane_of_arthropods"}].lvl set value 4s
execute if score @s enchantplus_ref = If_EnchantedBook_Upgrade enchantplus_ref run data modify block ~ ~-1 ~ Items[{Slot:4b}].tag.StoredEnchantments[{id:"minecraft:bane_of_arthropods"}].lvl set value 3s
execute if score @s enchantplus_ref = If_Item_AddOn enchantplus_ref run data modify block ~ ~-1 ~ Items[{Slot:4b}].tag.Enchantments append value {id:"minecraft:bane_of_arthropods",lvl:3s}
execute if score @s enchantplus_ref = If_Item_TierUp enchantplus_ref run data modify block ~ ~-1 ~ Items[{Slot:4b}].tag.Enchantments[{id:"minecraft:bane_of_arthropods"}].lvl set value 4s
execute if score @s enchantplus_ref = If_Item_Upgrade enchantplus_ref run data modify block ~ ~-1 ~ Items[{Slot:4b}].tag.Enchantments[{id:"minecraft:bane_of_arthropods"}].lvl set value 3s
scoreboard players reset @s enchantplus_ref
function enchantplus:enchantstation/effect/output
