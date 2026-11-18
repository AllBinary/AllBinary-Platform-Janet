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
(defn- LayerManagerEvent/jnew_2 [& args] (JR/call jfile "../../../org/allbinary/layer/event/LayerManagerEvent" "jnew_2" args))
(defn- LayerManagerEventHandler/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/layer/event/LayerManagerEventHandler" "jm_getInstance" args))
(import ./LayerManager :as LayerManager)
(defn- LayerManagerNoDebug/jm_getInstance [& args] (JR/call jfile "./LayerManagerNoDebug" "jm_getInstance" args))

# Java class AllBinaryLayerManager
(var jproto nil)
(var jnew_0 nil)
(var jm_getLayerProcessorArray nil)
(var jm_setLayerProcessorArray nil)
(var jm_log nil)
(var jm_append nil)
(var jm_appendAt nil)
(var jm_appendProcessors nil)
(var jm_remove nil)
(var jm_process nil)
(var jm_cleanup nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AllBinaryLayerManager" :f_layerManagerEventHandler nil :f_createLayerManagerEvent nil :f_deleteLayerManagerEvent nil :f_basicLayerProcessorArray nil} jproto))
    (put this :f_layerManagerEventHandler (LayerManagerEventHandler/jm_getInstance))
    (put this :f_createLayerManagerEvent (LayerManagerEvent/jnew_2 this ((this :f_layerManagerEventHandler) :f_CREATE)))
    (put this :f_deleteLayerManagerEvent (LayerManagerEvent/jnew_2 this ((this :f_layerManagerEventHandler) :f_DELETE)))
    (put this :f_basicLayerProcessorArray (array/new-filled 0 nil))
        (JR/superInit this (LayerManager/jnew_1 (LayerManagerNoDebug/jm_getInstance)))
    this))
    
(set jm_getLayerProcessorArray (fn jm_getLayerProcessorArray [this]
    (label jreturn
        (return jreturn (this :f_basicLayerProcessorArray)))))
    
(set jm_setLayerProcessorArray (fn jm_setLayerProcessorArray [this _layerProcessorArray]
        (set (this :f_basicLayerProcessorArray) _layerProcessorArray)))
    
(set jm_log (fn jm_log [this]
        (var _size (length (this :f_basicLayerProcessorArray)))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (var _layerProcessorInterface ((this :f_basicLayerProcessorArray) _index)))
                (do (set _index (JR/i32 (+ _index 1))))))))
    
(set jm_append (fn jm_append [this _layerInterface]
        (if (not (:jm_contains this _layerInterface))
            (do
            (:jm_appendProcessors this _layerInterface)
            ((get LayerManager/jproto :jm_append) this _layerInterface)))))
    
(set jm_appendAt (fn jm_appendAt [this _layerInterface _index]
        (if (not (:jm_contains this _layerInterface))
            (do
            (:jm_appendProcessors this _layerInterface)
            ((get LayerManager/jproto :jm_appendAt) this _layerInterface _index)))))
    
(set jm_appendProcessors (fn jm_appendProcessors [this _layerInterface]
        (:jm_setLayerInterface (this :f_createLayerManagerEvent) _layerInterface)
        (:jm_fireEvent (this :f_layerManagerEventHandler) (this :f_createLayerManagerEvent))
        (var _layerProcessorInterface nil)
        (do
            (var _index (length (this :f_basicLayerProcessorArray)))
            (while (>= (set _index (JR/i32 (- _index 1))) 0)
                (do
            (set _layerProcessorInterface ((this :f_basicLayerProcessorArray) _index))
            (if (:jm_isProcessorLayer _layerProcessorInterface _layerInterface)
                (do
                (JR/className (:jm_getLayerManager _layerProcessorInterface)))))))))
    
(set jm_remove (fn jm_remove [this _layerInterface]
        (:jm_setLayerInterface (this :f_deleteLayerManagerEvent) _layerInterface)
        (:jm_fireDeleteEvent (this :f_layerManagerEventHandler) (this :f_deleteLayerManagerEvent))
        (var _layerProcessorInterface nil)
        (do
            (var _index (length (this :f_basicLayerProcessorArray)))
            (while (>= (set _index (JR/i32 (- _index 1))) 0)
                (do
            (set _layerProcessorInterface ((this :f_basicLayerProcessorArray) _index))
            (JR/className (:jm_getLayerManager _layerProcessorInterface)))))
        ((get LayerManager/jproto :jm_remove) this _layerInterface)))
    
(set jm_process (fn jm_process [this]
        (var _layerProcessorInterface nil)
        (var _size (length (this :f_basicLayerProcessorArray)))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _layerProcessorInterface ((this :f_basicLayerProcessorArray) _index))
            (:jm_process _layerProcessorInterface this))
                (do (set _index (JR/i32 (+ _index 1))))))))
    
(set jm_cleanup (fn jm_cleanup [this]
        (var _layerProcessorInterface nil)
        (var _size (length (this :f_basicLayerProcessorArray)))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _layerProcessorInterface ((this :f_basicLayerProcessorArray) _index))
            (JR/className (:jm_getLayerManager _layerProcessorInterface)))
                (do (set _index (JR/i32 (+ _index 1))))))
        ((get LayerManager/jproto :jm_cleanup) this)))

(set jproto (table/setproto @{:jm_getLayerProcessorArray jm_getLayerProcessorArray :jm_setLayerProcessorArray jm_setLayerProcessorArray :jm_log jm_log :jm_append jm_append :jm_appendAt jm_appendAt :jm_appendProcessors jm_appendProcessors :jm_remove jm_remove :jm_process jm_process :jm_cleanup jm_cleanup} LayerManager/jproto))


