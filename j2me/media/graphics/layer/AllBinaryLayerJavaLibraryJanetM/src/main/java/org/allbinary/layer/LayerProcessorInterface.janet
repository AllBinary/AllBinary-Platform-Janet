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
# package org.allbinary.layer

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ./BasicLayerProcessorInterface :as BasicLayerProcessorInterface)

# Java class LayerProcessorInterface
(var jproto nil)
(var jnew_0 nil)
(var jm_getLayerManager nil)
(var jm_processAt nil)
(var jm_isProcessorLayer nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "LayerProcessorInterface"} jproto))
    this))

    
(set jm_getLayerManager (fn jm_getLayerManager [this]
    (error (JR/newException "AbstractMethodError" "getLayerManager"))))
    
(set jm_processAt (fn jm_processAt [this _allBinaryLayerManager _layerInterface _index]
    (error (JR/newException "AbstractMethodError" "processAt"))))
    
(set jm_isProcessorLayer (fn jm_isProcessorLayer [this _layerInterface]
    (error (JR/newException "AbstractMethodError" "isProcessorLayer"))))

(set jproto @{:jm_getLayerManager jm_getLayerManager :jm_processAt jm_processAt :jm_isProcessorLayer jm_isProcessorLayer})


