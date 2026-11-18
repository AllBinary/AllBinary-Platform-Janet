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
# package org.allbinary.game.layer

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class LayerPlacementInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_getWidth nil)
(var jm_getHeight nil)
(var jm_getLayerType nil)
(var jm_getInstance nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "LayerPlacementInterface"} jproto))
    this))

    
(set jm_getWidth (fn jm_getWidth [this]
    (error (JR/newException "AbstractMethodError" "getWidth"))))
    
(set jm_getHeight (fn jm_getHeight [this]
    (error (JR/newException "AbstractMethodError" "getHeight"))))
    
(set jm_getLayerType (fn jm_getLayerType [this]
    (error (JR/newException "AbstractMethodError" "getLayerType"))))
    
(set jm_getInstance (fn jm_getInstance [this]
    (error (JR/newException "AbstractMethodError" "getInstance"))))

(set jproto @{:jm_getWidth jm_getWidth :jm_getHeight jm_getHeight :jm_getLayerType jm_getLayerType :jm_getInstance jm_getInstance})


