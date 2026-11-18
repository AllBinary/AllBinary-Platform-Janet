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

# Java class BasicLayerPlacement
(var jproto nil)
(var jnew_3 nil)
(var jm_getWidth nil)
(var jm_getHeight nil)
(var jm_getLayerType nil)
(var jm_setLayerType nil)

    
(set jnew_3 (fn jnew_3 [_layerType _width _height]
    (var this (table/setproto @{:jclass "BasicLayerPlacement" :f_layerType nil :f_width 0 :f_height 0} jproto))
    
    
    
        (set (this :f_layerType) _layerType)
        (set (this :f_width) _width)
        (set (this :f_height) _height)
    this))
    
(set jm_getWidth (fn jm_getWidth [this]
    (label jreturn
        (return jreturn (this :f_width)))))
    
(set jm_getHeight (fn jm_getHeight [this]
    (label jreturn
        (return jreturn (this :f_height)))))
    
(set jm_getLayerType (fn jm_getLayerType [this]
    (label jreturn
        (return jreturn (this :f_layerType)))))
    
(set jm_setLayerType (fn jm_setLayerType [this _layerType]
        (set (this :f_layerType) _layerType)))

(set jproto @{:jm_getWidth jm_getWidth :jm_getHeight jm_getHeight :jm_getLayerType jm_getLayerType :jm_setLayerType jm_setLayerType})


