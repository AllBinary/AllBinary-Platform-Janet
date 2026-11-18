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
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class LayerProcessor
(var jproto nil)
(var jnew_1 nil)
(var jm_processAt nil)
(var jm_isProcessorLayer nil)
(var jm_getLayerManager nil)
(var jm_process nil)

    
(set jnew_1 (fn jnew_1 [_layerManager]
    (var this (table/setproto @{:jclass "LayerProcessor" :f_commonStrings nil :f_layerManager nil} jproto))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    
        (set (this :f_layerManager) _layerManager)
    this))
    
(set jm_processAt (fn jm_processAt [this _allBinaryLayerManager _layerInterface _index]
        (error (JR/newException "Exception" ((this :f_commonStrings) :f_NOT_IMPLEMENTED)))))
    
(set jm_isProcessorLayer (fn jm_isProcessorLayer [this _layerInterface]
        (error (JR/newException "Exception" ((this :f_commonStrings) :f_NOT_IMPLEMENTED)))))
    
(set jm_getLayerManager (fn jm_getLayerManager [this]
    (label jreturn
        (return jreturn (this :f_layerManager)))))
    
(set jm_process (fn jm_process [this _allBinaryLayerManager]
        (var _layerManager (:jm_getLayerManager this))
        (var _size (:jm_getSize _layerManager))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (:jm_processAt this _allBinaryLayerManager (:jm_getLayerAt _layerManager _index) _index))
                (do (set _index (JR/i32 (+ _index 1))))))))

(set jproto @{:jm_processAt jm_processAt :jm_isProcessorLayer jm_isProcessorLayer :jm_getLayerManager jm_getLayerManager :jm_process jm_process})


