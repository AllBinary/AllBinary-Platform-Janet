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
# package org.allbinary.game.tick

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../org/allbinary/layer/LayerProcessor :as LayerProcessor)
(defn- OptimizedTickableLayerManager/jnew_0 [& args] (JR/call jfile "./OptimizedTickableLayerManager" "jnew_0" args))

# Java class OptimizedTickableLayerProcessor
(var jproto nil)
(var jnew_0 nil)
(var jm_processAt nil)
(var jm_isProcessorLayer nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "OptimizedTickableLayerProcessor"} jproto))
        (JR/superInit this (LayerProcessor/jnew_1 (OptimizedTickableLayerManager/jnew_0)))
    this))
    
(set jm_processAt (fn jm_processAt [this _allBinaryLayerManager _layerInterface _index]
        (var _tickableInterface _layerInterface)
        (:jm_processTick _tickableInterface _allBinaryLayerManager)))
    
(set jm_isProcessorLayer (fn jm_isProcessorLayer [this _layerInterface]
    (label jreturn
        (if (:jm_implmentsTickableInterface _layerInterface)
            (do
            (return jreturn true))
            (do
            (return jreturn false))))))

(set jproto (table/setproto @{:jm_processAt jm_processAt :jm_isProcessorLayer jm_isProcessorLayer} LayerProcessor/jproto))


