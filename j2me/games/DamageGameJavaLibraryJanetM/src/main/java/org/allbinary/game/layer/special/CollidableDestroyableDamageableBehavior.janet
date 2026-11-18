#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
# 
# By agreeing to this license you and any business entity you represent are
# legally bound to the AllBinary Open License Version 1 legal agreement.
# 
# You may obtain the AllBinary Open License Version 1 legal agreement from
# AllBinary or the root directory of AllBinary's AllBinary Platform repository.
# 
# Created By: Travis Berthelot
#  
# Generated Code Do Not Modify
# package org.allbinary.game.layer.special

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../org/allbinary/game/collision/CollidableBaseBehavior :as CollidableBaseBehavior)
(defn- DamageUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/combat/damage/DamageUtil" "jm_getInstance" args))
(defn- ForcedLogUtil/jm_log [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/ForcedLogUtil" "jm_log" args))

# Java class CollidableDestroyableDamageableBehavior
(var jproto nil)
(var jnew_1 nil)
(var jm_isCollision nil)
(var jm_collide nil)
(var jm_isCollisionInterface nil)
(var jm_collideInterface nil)

    
(set jnew_1 (fn jnew_1 [_collidable]
    (var this (table/setproto @{:jclass "CollidableDestroyableDamageableBehavior" :f_damageUtil nil} jproto))
    (put this :f_damageUtil (DamageUtil/jm_getInstance))
        (JR/superInit this (CollidableBaseBehavior/jnew_1 _collidable))
    this))
    
(set jm_isCollision (fn jm_isCollision [this _ownerLayer _collisionLayer]
    (label jreturn
        (if (not= ((:jm_getGroupInterface _ownerLayer) 0) ((:jm_getGroupInterface _collisionLayer) 0))
            (do
            (return jreturn ((get CollidableBaseBehavior/jproto :jm_isCollision) this _ownerLayer _collisionLayer))))
        (return jreturn false))))
    
(set jm_collide (fn jm_collide [this _ownerLayer _collidableInterfaceCompositeInterface]
        (var _ownerCollidableDestroyableDamageableLayer _ownerLayer)
        (var _collidableDestroyableDamageableLayer _collidableInterfaceCompositeInterface)
        (:jm_damage _ownerCollidableDestroyableDamageableLayer (:jm_getDamage _collidableDestroyableDamageableLayer 0) 0)))
    
(set jm_isCollisionInterface (fn jm_isCollisionInterface [this _ownerLayer _collidableInterfaceCompositeInterface]
    (label jreturn
        (ForcedLogUtil/jm_log "No Longer Used" this)
        (return jreturn false))))
    
(set jm_collideInterface (fn jm_collideInterface [this _ownerLayer _collidableInterfaceCompositeInterface]
        (ForcedLogUtil/jm_log "No Longer Used" this)))

(set jproto (table/setproto @{:jm_isCollision jm_isCollision :jm_collide jm_collide :jm_isCollisionInterface jm_isCollisionInterface :jm_collideInterface jm_collideInterface} CollidableBaseBehavior/jproto))


