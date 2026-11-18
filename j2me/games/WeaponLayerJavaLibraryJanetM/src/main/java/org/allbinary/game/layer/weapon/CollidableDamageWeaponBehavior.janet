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
# package org.allbinary.game.layer.weapon

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- CollidableHelperFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/collision/CollidableHelperFactory" "jm_getInstance" args))
(defn- CollisionTypeFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/collision/CollisionTypeFactory" "jm_getInstance" args))
(import ../../../../../org/allbinary/game/layer/special/CollidableDestroyableDamageableBehavior :as CollidableDestroyableDamageableBehavior)

# Java class CollidableDamageWeaponBehavior
(var jproto nil)
(var jnew_1 nil)
(var jm_init nil)
(var jm_isCollision nil)
(var jm_collide nil)
(var jm_isCollisionInterface nil)
(var jm_collideInterface nil)
(var jm_getCollisionTypeWith nil)
(var jm_isCollided nil)
(var jm_setCollided nil)

    
(set jnew_1 (fn jnew_1 [_collidable]
    (var this (table/setproto @{:jclass "CollidableDamageWeaponBehavior" :f_collided false :f_collisionHelper nil} jproto))
    
    
        (JR/superInit this (CollidableDestroyableDamageableBehavior/jnew_1 _collidable))
        (:jm_setCollided this false)
        (:jm_setCollidable this true)
        (set (this :f_collisionHelper) (CollidableHelperFactory/jm_getInstance))
    this))
    
(set jm_init (fn jm_init [this _sourceLayerInterface]
        (:jm_setCollided this false)
        (:jm_setOwnerLayerInterface (this :f_collisionHelper) _sourceLayerInterface)))
    
(set jm_isCollision (fn jm_isCollision [this _ownerLayer _collisionLayer]
    (label jreturn
        (if (:jm_isCollidable (this :f_collisionHelper) _collisionLayer)
            (do
            (if (not= ((:jm_getGroupInterface _ownerLayer) 0) ((:jm_getGroupInterface _collisionLayer) 0))
                (do
                (return jreturn ((get CollidableDestroyableDamageableBehavior/jproto :jm_isCollision) this _ownerLayer _collisionLayer))))))
        (return jreturn false))))
    
(set jm_collide (fn jm_collide [this _ownerLayer _collisionLayer]
        ((get CollidableDestroyableDamageableBehavior/jproto :jm_collide) this _ownerLayer _collisionLayer)
        (set (this :f_collided) true)))
    
(set jm_isCollisionInterface (fn jm_isCollisionInterface [this _ownerLayer _collidableInterfaceCompositeInterface]
    (label jreturn
        (if (:jm_isCollidable (this :f_collisionHelper) _collidableInterfaceCompositeInterface)
            (do
            (var _layerInterface _collidableInterfaceCompositeInterface)
            (if (not= ((:jm_getGroupInterface _ownerLayer) 0) ((:jm_getGroupInterface _layerInterface) 0))
                (do
                (if (JR/className (this :f_layerCollisionUtil))
                    (do
                    (return jreturn true)))))))
        (return jreturn false))))
    
(set jm_collideInterface (fn jm_collideInterface [this _ownerLayer _collidableInterfaceCompositeInterface]
        (JR/className (this :f_damageUtil))
        (set (this :f_collided) true)))
    
(set jm_getCollisionTypeWith (fn jm_getCollisionTypeWith [this _layerInterface]
    (label jreturn
        (return jreturn ((CollisionTypeFactory/jm_getInstance) :f_COLLISION)))))
    
(set jm_isCollided (fn jm_isCollided [this]
    (label jreturn
        (return jreturn (this :f_collided)))))
    
(set jm_setCollided (fn jm_setCollided [this _collided]
        (set (this :f_collided) _collided)))

(set jproto (table/setproto @{:jm_init jm_init :jm_isCollision jm_isCollision :jm_collide jm_collide :jm_isCollisionInterface jm_isCollisionInterface :jm_collideInterface jm_collideInterface :jm_getCollisionTypeWith jm_getCollisionTypeWith :jm_isCollided jm_isCollided :jm_setCollided jm_setCollided} CollidableDestroyableDamageableBehavior/jproto))


