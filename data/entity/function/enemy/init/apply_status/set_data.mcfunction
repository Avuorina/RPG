#> entity:enemy/init/apply_status/set_data
#
# ステを振り分けよう
# @within 
#

## 武器防具の追加
    data modify storage rpg_mob: HandItems set value []
    data modify storage rpg_mob: HandItems append from storage rpg_mob: Weapon.Mainhand
    data modify storage rpg_mob: HandItems append from storage rpg_mob: Weapon.Offhand
    data modify storage rpg_mob: ArmorItems set value []
    data modify storage rpg_mob: ArmorItems append from storage rpg_mob: Armor.Feet
    data modify storage rpg_mob: ArmorItems append from storage rpg_mob: Armor.Legs
    data modify storage rpg_mob: ArmorItems append from storage rpg_mob: Armor.Chest
    data modify storage rpg_mob: ArmorItems append from storage rpg_mob: Armor.Head
    # 適用
        data modify entity @s HandItems set from storage rpg_mob: HandItems
        data modify entity @s ArmorItems set from storage rpg_mob: ArmorItems
        # ドロップ率
            data modify entity @s HandDropChances set from storage rpg_mob: Weapon.DropRate
            data modify entity @s ArmorDropChances set from storage rpg_mob: Armor.DropRate
## attribute
    data modify storage rpg_mob: Attributes set value []
    data modify storage rpg_mob: Attributes append value {id:"minecraft:max_health"}
    #execute if data storage rpg_mob: ATK run data modify storage rpg_mob: Attributes append value {Name:"minecraft:attack_damage"}
    #...
    # 適用
        data modify storage rpg_mob: Attributes[{id:"minecraft:max_health"}].base set value 1024d

## 適用
    data modify entity @s attributes set from storage rpg_mob: Attributes
## 体力
    data modify entity @s Health set value 1024f
    execute store result score @s HPMAX run data get storage rpg_mob: HP 1
    scoreboard players operation @s HP = @s HPMAX
        # 死なないようにね
            effect give @s regeneration infinite 255 true
                #[TODO(#1)] execute if predicate...

## そのまま適用するやつ
    execute store result score @s ID run data get storage rpg_mob: ID
    #execute as @s run function entity:enemy/init/apply_status/name
    data merge entity @s {CustomName:'{"text":"INIT"}'}
    data modify entity @s CustomName set from storage rpg_mob: Name
    data modify entity @s CustomNameVisible set value true

## お前をチームに加える可能性がある。
    execute if data storage rpg_mob: {Type:"Enemy"} run team join Enemy @s

# OH MY DAT!わからんけどとりあえず則る
    function oh_my_dat:please

# 属性耐性とか