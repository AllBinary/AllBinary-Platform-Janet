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
# package org.allbinary.layer.event

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class LayerManagerEventListener
(var jproto nil)
(var jnew_0 nil)
(var jm_onEvent nil)
(var jm_onCreateLayerManagerEvent nil)
(var jm_onDeleteLayerManagerEvent nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "LayerManagerEventListener"} jproto))
    this))

    
(set jm_onEvent (fn jm_onEvent [this _eventObject]
    nil))
    
(set jm_onCreateLayerManagerEvent (fn jm_onCreateLayerManagerEvent [this _layerManagerEvent]
    nil))
    
(set jm_onDeleteLayerManagerEvent (fn jm_onDeleteLayerManagerEvent [this _layerManagerEvent]
    nil))

(set jproto @{:jm_onEvent jm_onEvent :jm_onCreateLayerManagerEvent jm_onCreateLayerManagerEvent :jm_onDeleteLayerManagerEvent jm_onDeleteLayerManagerEvent})


