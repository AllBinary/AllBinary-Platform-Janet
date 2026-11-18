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
# package org.allbinary.game.combat.destroy

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- DestroyEventCircularStaticPool/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/combat/destroy/event/DestroyEventCircularStaticPool" "jm_getInstance" args))
(defn- DestroyedEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/combat/destroy/event/DestroyedEventHandler" "jm_getInstance" args))
(import ../../../../../org/allbinary/layer/BasicLayerProcessor :as BasicLayerProcessor)
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class DestroyedLayerProcessor
(var jproto nil)
(var jcell_DESTROYED_LAYER_PROCESSOR :jnone)
(var jstatic_DESTROYED_LAYER_PROCESSOR nil)
(var jsetstatic_DESTROYED_LAYER_PROCESSOR nil)
(var jnew_0 nil)
(var jm_init nil)
(var jm_getInstance nil)
(var jm_process nil)

(set jstatic_DESTROYED_LAYER_PROCESSOR (fn jstatic_DESTROYED_LAYER_PROCESSOR []
  (when (= jcell_DESTROYED_LAYER_PROCESSOR :jnone) (set jcell_DESTROYED_LAYER_PROCESSOR (BasicLayerProcessor/jstatic_NULL_LAYER_PROCESSOR)))
  jcell_DESTROYED_LAYER_PROCESSOR))
(set jsetstatic_DESTROYED_LAYER_PROCESSOR (fn jsetstatic_DESTROYED_LAYER_PROCESSOR [value] (set jcell_DESTROYED_LAYER_PROCESSOR value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "DestroyedLayerProcessor"} jproto))
    (JR/superInit this (BasicLayerProcessor/jnew_0))
    this))
    
(set jm_init (fn jm_init []
        (set jcell_DESTROYED_LAYER_PROCESSOR (jnew_0))))
    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_DESTROYED_LAYER_PROCESSOR)))))
    
(set jm_process (fn jm_process [this _allBinaryLayerManager]
        (var _list (:jm_getList this))
        (var _size (:jm_size _list))
        (var _destroyedEventHandler (DestroyedEventHandler/jm_getInstance))
        (var _destroyEventCircularStaticPool (DestroyEventCircularStaticPool/jm_getInstance))
        (var _destroyedEvent nil)
        (var _layerInterface nil)
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (var _layerInterfaceCanBeNull ((_list :f_objectArray) _index))
            (if (not (nil? _layerInterfaceCanBeNull))
                (do
                (set _layerInterface _layerInterfaceCanBeNull)
                (:jm_remove _allBinaryLayerManager _layerInterface)
                (set _destroyedEvent (:jm_getInstanceForLayer _destroyEventCircularStaticPool _layerInterface))
                (:jm_fireEvent _destroyedEventHandler _destroyedEvent))
                (do
                (var _commonStrings (CommonStrings/jm_getInstance)))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (:jm_clear _list)))

(set jproto (table/setproto @{:jm_process jm_process} BasicLayerProcessor/jproto))


