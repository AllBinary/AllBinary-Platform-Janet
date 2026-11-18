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
# package org.allbinary.game.collision

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./CollidableBaseBehavior :as CollidableBaseBehavior)

# Java class CollidableNeverCollideBehavior
(var jproto nil)
(var jnew_1 nil)
(var jm_isCollision nil)
(var jm_collide nil)
(var jm_collideInterface nil)
(var jm_isCollisionInterface nil)

    
(set jnew_1 (fn jnew_1 [_isCollidable]
    (var this (table/setproto @{:jclass "CollidableNeverCollideBehavior"} jproto))
        (JR/superInit this (CollidableBaseBehavior/jnew_1 _isCollidable))
    this))
    
(set jm_isCollision (fn jm_isCollision [this _ownerLayer _allbinaryCollidableLayer]
    (label jreturn
        (return jreturn false))))
    
(set jm_collide (fn jm_collide [this _ownerLayer _allbinaryCollidableLayer]
    nil))
    
(set jm_collideInterface (fn jm_collideInterface [this _ownerLayer _collidableInterfaceCompositeInterface]
    nil))
    
(set jm_isCollisionInterface (fn jm_isCollisionInterface [this _ownerLayer _collidableInterfaceCompositeInterface]
    (label jreturn
        (return jreturn false))))

(set jproto (table/setproto @{:jm_isCollision jm_isCollision :jm_collide jm_collide :jm_collideInterface jm_collideInterface :jm_isCollisionInterface jm_isCollisionInterface} CollidableBaseBehavior/jproto))


