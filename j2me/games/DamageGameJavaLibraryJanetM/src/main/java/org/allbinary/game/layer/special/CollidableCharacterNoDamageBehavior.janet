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
(defn- CollisionTypeFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/collision/CollisionTypeFactory" "jm_getInstance" args))
(defn- ForcedLogUtil/jm_log [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/ForcedLogUtil" "jm_log" args))
(import ./CollidableDestroyableDamageableBehavior :as CollidableDestroyableDamageableBehavior)

# Java class CollidableCharacterNoDamageBehavior
(var jproto nil)
(var jnew_1 nil)
(var jm_collide nil)
(var jm_collideInterface nil)

    
(set jnew_1 (fn jnew_1 [_collidable]
    (var this (table/setproto @{:jclass "CollidableCharacterNoDamageBehavior"} jproto))
        (JR/superInit this (CollidableDestroyableDamageableBehavior/jnew_1 _collidable))
    this))
    
(set jm_collide (fn jm_collide [this _ownerLayer _collidableInterfaceCompositeInterface]
        (var _collisionTypeFactory (CollisionTypeFactory/jm_getInstance))
        (var _collisionType (JR/className (:jm_getCollidableInferface _collidableInterfaceCompositeInterface)))
        (if (= _collisionType (_collisionTypeFactory :f_PICKUP))
            (do
            (var _collidableDestroyableDamageableLayer _ownerLayer)
            (JR/className (:jm_getPickupBehavior _collidableDestroyableDamageableLayer)))
            (do
            nil))))
    
(set jm_collideInterface (fn jm_collideInterface [this _ownerLayer _collidableInterfaceCompositeInterface]
        (ForcedLogUtil/jm_log ((this :f_commonStrings) :f_NOT_IMPLEMENTED) this)))

(set jproto (table/setproto @{:jm_collide jm_collide :jm_collideInterface jm_collideInterface} CollidableDestroyableDamageableBehavior/jproto))


