#> entity:enemy/debug/fly/0000/summon
#
# 元のMOBを召喚する
#
#

## 元のMOBの召喚
    summon wither_skeleton ~ ~ ~ {\
Tags:[MobInit,Test],\
Silent:true,\
PersistenceRequired:true,\
DeathLootTable:"asset:enemy/empty"\
}



## Statusの確立
    execute as @e[type=wither_skeleton,tag=MobInit,distance=..0.01,limit=1,sort=nearest] run function asset:entity/enemy/debug/enemy/0000/status