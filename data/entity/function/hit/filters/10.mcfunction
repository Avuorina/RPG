#> entity:hit/filters/10
#
# 攻撃先のエンティティを絞っていくらしい
#
# @within function entity:hit/

execute if entity @p[tag=AttackedPlayer,advancements={entity:hurt_by_player={10-0=true}}] if entity @s[tag=FindFlag10.0] run function entity:hit/filters/9
execute if entity @p[tag=AttackedPlayer,advancements={entity:hurt_by_player={10-1=true}}] if entity @s[tag=FindFlag10.1] run function entity:hit/filters/9