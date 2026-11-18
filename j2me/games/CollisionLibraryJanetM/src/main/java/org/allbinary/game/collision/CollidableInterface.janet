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
(import ../../../../org/allbinary/layer/NamedInterface :as NamedInterface)

# Java class CollidableInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_isCollidable nil)
(var jm_isCollision nil)
(var jm_collide nil)
(var jm_getCollisionTypeWith nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "CollidableInterface"} jproto))
    this))

    
(set jm_isCollidable (fn jm_isCollidable [this _ownerLayer]
    (error (JR/newException "AbstractMethodError" "isCollidable"))))
    
(set jm_isCollision (fn jm_isCollision [this _ownerLayer _collidableInterfaceCompositeInterface]
    (error (JR/newException "AbstractMethodError" "isCollision"))))
    
(set jm_collide (fn jm_collide [this _ownerLayer _collidableInterfaceCompositeInterface]
    (error (JR/newException "AbstractMethodError" "collide"))))
    
(set jm_getCollisionTypeWith (fn jm_getCollisionTypeWith [this _layerInterface]
    (error (JR/newException "AbstractMethodError" "getCollisionTypeWith"))))

(set jproto @{:jm_isCollidable jm_isCollidable :jm_isCollision jm_isCollision :jm_collide jm_collide :jm_getCollisionTypeWith jm_getCollisionTypeWith})


