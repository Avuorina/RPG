#> enetity:hit/fetch_entity
#
# 攻撃先のエンティティを取得する
#
# @within function entity:hit/fileters/0

#> Private
#declare score_holder $Damage

## ダメージ取得
    execute store result score $Damage _ run data get entity @s Health 1
    scoreboard players remove $Damage _ 1024
    #scoreboard players operation $Damage _ *= -1 Const
    
## DEBUG
    #tellraw @p ["DAMAGE : ",{"score":{"name":"$Damage","objective":"_"}}]

## ダメージ反映
    execute if score $Damage _ matches 0 run scoreboard players add $Damage _ 1
    scoreboard players operation @s HP += $Damage _
    scoreboard players operation @s HP < @s HPMAX

## 死亡処理
    execute if score @s HP matches ..0 run kill @s

## HPを元に戻す
    execute unless score @s HP matches ..0 run data merge entity @s {Health:1024f}

## RESET
    scoreboard players reset $Damage _
