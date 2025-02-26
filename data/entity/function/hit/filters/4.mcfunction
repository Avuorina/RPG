#> entity:hit/filters/4
#
# 攻撃先のエンティティを絞っていくらしい
#
# @within function entity:hit/

execute if entity @p[tag=AttackedPlayer,advancements={entity:hurt_by_player={4-0=true}}] if entity @s[tag=FindFlag4.0] run function entity:hit/filters/3
execute if entity @p[tag=AttackedPlayer,advancements={entity:hurt_by_player={4-1=true}}] if entity @s[tag=FindFlag4.1] run function entity:hit/filters/3