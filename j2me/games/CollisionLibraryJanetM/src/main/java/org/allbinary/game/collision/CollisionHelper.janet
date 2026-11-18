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

# Java class CollisionHelper
(var jproto nil)
(var jnew_1 nil)
(var jm_isCollidable nil)
(var jm_getOwnerLayerInterface nil)
(var jm_setOwnerLayerInterface nil)

    
(set jnew_1 (fn jnew_1 [_sourceLayerInterface]
    (var this (table/setproto @{:jclass "CollisionHelper" :f_sourceLayerInterface nil} jproto))
    
        (set (this :f_sourceLayerInterface) _sourceLayerInterface)
    this))
    
(set jm_isCollidable (fn jm_isCollidable [this _layerInterface]
    (label jreturn
        (return jreturn true))))
    
(set jm_getOwnerLayerInterface (fn jm_getOwnerLayerInterface [this]
    (label jreturn
        (return jreturn (this :f_sourceLayerInterface)))))
    
(set jm_setOwnerLayerInterface (fn jm_setOwnerLayerInterface [this _sourceLayerInterface]
        (set (this :f_sourceLayerInterface) _sourceLayerInterface)))

(set jproto @{:jm_isCollidable jm_isCollidable :jm_getOwnerLayerInterface jm_getOwnerLayerInterface :jm_setOwnerLayerInterface jm_setOwnerLayerInterface})


