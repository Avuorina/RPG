#> entity:hit/filters/15
#
# 攻撃先のエンティティを絞っていくらしい
#
# @within function entity:hit/
execute if entity @p[tag=AttackedPlayer,advancements={entity:hurt_by_player={15-0=true}}] if entity @s[tag=FindFlag15.0] run function entity:hit/filters/14
execute if entity @p[tag=AttackedPlayer,advancements={entity:hurt_by_player={15-1=true}}] if entity @s[tag=FindFlag15.1] run function entity:hit/filters/14