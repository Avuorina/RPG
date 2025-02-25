#> bank:entity/enemy/debug/ground/0000.just_skeleton/status
#
# デバッグ用のカワイイ骸骨！！
#
#

## ID* [int]
    data modify storage rpg_mob: ID set value 0
## Type* [string]
    data modify storage rpg_mob: Type set value "Enemy"
## 名前 [TextComponentString]
    data modify storage rpg_mob: Name set value '{"text":"ただの骸","color":"#800080"}'
### 武器*
    ## メインハンド [Compound(Item)]
        data modify storage rpg_mob: Weapon.Mainhand set value {id:"minecraft:golden_sword"}
    ## オフハンド [Compound(Item)]
        data modify storage rpg_mob: Weapon.Offhand set value {id:"minecraft:end_crystal"}
## 👆️ドロップ率 [float, float]
    data modify storage rpg_mob: Weapon.DropRate set value [1.0f,1.0f]
### 防具*
    ## 頭 [Compound(Item)]
        data modify storage rpg_mob: Armor.Head set value {id:"minecraft:command_block"}
    ## 胴 [Compound(Item)]
        data modify storage rpg_mob: Armor.Chest set value {}
    ## 脚 [Compound(Item)]
        data modify storage rpg_mob: Armor.Legs set value {}
    ## 足 [Compound(Item)]
        data modify storage rpg_mob: Armor.Feet set value {id:"minecraft:golden_boots"}
## 👆️ドロップ率 [float, float]
    data modify storage rpg_mob: Armor.DropRate set value [1.0f,1.0f,1.0f,1.0f]
## 体力 [double]
    data modify storage rpg_mob: HP set value 100d
## 攻撃力 [double]
    #data modify storage rpg_mob: ATK set value 
## 防御力 [double]
    #data modify storage rpg_mob: DEF set value
## 素早さ [double]
    #data modify storage rpg_mob: SPD set value
## 索敵範囲 [double]
    #data modify storage rpg_mob: SearchRange set value
## ノックバック耐性 [double]
    #data modify storage rpg_mob: KnockbackResistance set value
### 属性倍率
    ## 物理倍率 [double]
        #data modify storage rpg_mob: Resist.Physical set value 
    #....

######## 適用
    execute at @s run function entity:enemy/init/