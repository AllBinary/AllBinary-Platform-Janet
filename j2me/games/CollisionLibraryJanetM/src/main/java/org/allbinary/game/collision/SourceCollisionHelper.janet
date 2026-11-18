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
(import ./CollisionHelper :as CollisionHelper)

# Java class SourceCollisionHelper
(var jproto nil)
(var jnew_1 nil)
(var jm_isCollidable nil)

    
(set jnew_1 (fn jnew_1 [_layerInterface]
    (var this (table/setproto @{:jclass "SourceCollisionHelper"} jproto))
        (JR/superInit this (CollisionHelper/jnew_1 _layerInterface))
    this))
    
(set jm_isCollidable (fn jm_isCollidable [this _layerInterface]
    (label jreturn
        (if (not= (this :f_sourceLayerInterface) _layerInterface)
            (do
            (return jreturn true)))
        (return jreturn false))))

(set jproto (table/setproto @{:jm_isCollidable jm_isCollidable} CollisionHelper/jproto))


