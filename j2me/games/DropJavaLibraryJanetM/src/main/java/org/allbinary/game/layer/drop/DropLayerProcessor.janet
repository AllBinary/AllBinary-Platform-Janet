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
# package org.allbinary.game.layer.drop

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../org/allbinary/layer/BasicLayerProcessor :as BasicLayerProcessor)

# Java class DropLayerProcessor
(var jproto nil)
(var jcell_LAYER_PROCESSOR :jnone)
(var jstatic_LAYER_PROCESSOR nil)
(var jsetstatic_LAYER_PROCESSOR nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_process nil)

(set jstatic_LAYER_PROCESSOR (fn jstatic_LAYER_PROCESSOR []
  (when (= jcell_LAYER_PROCESSOR :jnone) (set jcell_LAYER_PROCESSOR (jnew_0)))
  jcell_LAYER_PROCESSOR))
(set jsetstatic_LAYER_PROCESSOR (fn jsetstatic_LAYER_PROCESSOR [value] (set jcell_LAYER_PROCESSOR value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "DropLayerProcessor"} jproto))
    (JR/superInit this (BasicLayerProcessor/jnew_0))
    this))
    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_LAYER_PROCESSOR)))))
    
(set jm_process (fn jm_process [this _allBinaryLayerManager]
        (var _list (:jm_getList this))
        (var _size (:jm_size _list))
        (var _layerInterface nil)
        (var _dropLayerInterface nil)
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _layerInterface ((_list :f_objectArray) _index))
            (set _dropLayerInterface _layerInterface)
            (set _layerInterface (:jm_getDroppedLayer _dropLayerInterface))
            (:jm_append _allBinaryLayerManager _layerInterface))
                (do (set _index (JR/i32 (+ _index 1))))))
        (:jm_clear _list)))

(set jproto (table/setproto @{:jm_process jm_process} BasicLayerProcessor/jproto))


