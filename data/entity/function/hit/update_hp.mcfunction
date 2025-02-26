#> enemy:update_hp
#
# ダメージを受けたか初期設定
# 
#

## 体力の減少分だけダメージを与える
    execute store result score Damage _ run data get entity @s Health 100
    scoreboard players remove Damage _ 51200
    scoreboard players operation @s HP += Damage _
    scoreboard players operation @s HP < @s HPMAX

## 死亡処理
    execute if score @s HP matches ..0 run kill @s

## 回復
    execute unless score @s HP matches ..0 run attribute @s minecraft:max_health base set 1024
    execute unless score @s HP matches ..0 run data modify entity @s Health set value 512f

## タグ付け
    tag @s add c.HP

## リセット
    scoreboard players reset Damage _