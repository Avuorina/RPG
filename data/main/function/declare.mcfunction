#> main:declare
#
# 宣言
# 新しく定義を追加したときはこれを実行
#

## スコアボード
    scoreboard objectives add ItemID dummy "アイテムID"
    scoreboard objectives add MobUUID dummy "モブUUID"
    # Status
        scoreboard objectives add ID dummy "ID"
        scoreboard objectives add HP dummy "HP"
        scoreboard objectives add HPMAX dummy "最大HP"
        scoreboard objectives add ATK dummy "攻撃力"
        scoreboard objectives add DEF dummy "防御力"
        scoreboard objectives add SPD dummy "素早さ"
        scoreboard objectives add LUK dummy "運"
        scoreboard objectives add LV dummy "レベル"
    # Calc用
        scoreboard objectives add Calc dummy "計算用"
        scoreboard objectives add Const dummy "定数"
            function main:define_const
        scoreboard objectives add _ dummy "一時スコアボード"
        scoreboard objectives add Global dummy "グローバル"

## チーム
    # Enemy
        team add Enemy
        team modify Enemy displayName "敵"

## debug
    tellraw @a [{"text":"\n"},{"text":">","color":"#3b3b3b"},{"text":">","color":"#8f8f8f"},{"text":" D E C L A R E","color":"white","bold":true},{"text":"\n"}]