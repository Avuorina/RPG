#> entity/hit/
#
# プレイヤーがエンティティにダメージを与えた時の処理
#
# @within advancement enetity:hurt_by_player

## プレイヤーの OMD 取得
    function oh_my_dat:please

## tag付け
    tag @s add AttackedPlayer

## 探索開始(#lib:livingじゃないし、プレイヤーじゃないし、HurtTimeが0じゃないし、150ブロック以内)
    execute as @e[type=#lib:living,type=!player,nbt=!{HurtTime:0s},distance=..150] run function entity:hit/filters/15

# リセ
    advancement revoke @s only entity:hurt_by_player
    tag @s remove AttackedPlayer