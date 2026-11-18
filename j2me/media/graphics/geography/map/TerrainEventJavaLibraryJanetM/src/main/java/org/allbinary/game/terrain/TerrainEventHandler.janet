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
# package org.allbinary.game.terrain

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StdUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/StdUtil" "jm_getInstance" args))
(defn- EventStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/util/event/EventStrings" "jm_getInstance" args))
(import ../../../../org/allbinary/logic/util/event/handler/BasicEventHandler :as BasicEventHandler)
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))

# Java class TerrainEventHandler
(var jproto nil)
(var jcell_hashtable :jnone)
(var jstatic_hashtable nil)
(var jsetstatic_hashtable nil)
(var jnew_0 nil)
(var jm_init nil)
(var jm_getInstance nil)
(var jm_addListener nil)
(var jm_removeAllListeners nil)
(var jm_removeListener nil)
(var jm_fireEvent nil)
(var jm_process nil)

(set jstatic_hashtable (fn jstatic_hashtable []
  (when (= jcell_hashtable :jnone) (set jcell_hashtable ((StdUtil/jm_getInstance) :f_NULL_TABLE)))
  jcell_hashtable))
(set jsetstatic_hashtable (fn jsetstatic_hashtable [value] (set jcell_hashtable value)))

    
(set jm_init (fn jm_init []
        (set jcell_hashtable (:jm_createHashtable (StdUtil/jm_getInstance)))))
    
(set jm_getInstance (fn jm_getInstance [_anyType]
    (label jreturn
        (var _eventHandlerCanBeNull (JR/className (jstatic_hashtable)))
        (if (nil? _eventHandlerCanBeNull)
            (do
            (set _eventHandlerCanBeNull (jnew_0))
            (JR/className (jstatic_hashtable))))
        (return jreturn _eventHandlerCanBeNull))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "TerrainEventHandler" :f_list nil} jproto))
    (put this :f_list (BasicArrayListD/jnew_0))
    (JR/superInit this (BasicEventHandler/jnew_0))
    this))
    
(set jm_addListener (fn jm_addListener [this _terrainEventListener]
        (if (not (:jm_contains (this :f_list) _terrainEventListener))
            (do
            (:jm_add (this :f_list) _terrainEventListener)))))
    
(set jm_removeAllListeners (fn jm_removeAllListeners [this]
        (:jm_clear (this :f_list))
        ((get BasicEventHandler/jproto :jm_removeAllListeners) this)))
    
(set jm_removeListener (fn jm_removeListener [this _eventListenerInterface]
        (:jm_remove (this :f_list) _eventListenerInterface)
        ((get BasicEventHandler/jproto :jm_removeListener) this _eventListenerInterface)))
    
(set jm_fireEvent (fn jm_fireEvent [this _eventObject]
        (do
            (var _index (:jm_size (this :f_list)))
            (while (>= (set _index (JR/i32 (- _index 1))) 0)
                (do
            (try
                (do
                (var _terrainEventListener (:jm_get (this :f_list) _index))
                (:jm_onTerrainEvent _terrainEventListener _eventObject))
                ([_e] (do
                (JR/className (this :f_logUtil))))))))
        ((get BasicEventHandler/jproto :jm_fireEvent) this _eventObject)))
    
(set jm_process (fn jm_process [this _eventObject _eventListenerInterface]
        (var _terrainEventListenerInterface _eventListenerInterface)
        (:jm_onTerrainEvent _terrainEventListenerInterface _eventObject)))

(set jproto (table/setproto @{:jm_addListener jm_addListener :jm_removeAllListeners jm_removeAllListeners :jm_removeListener jm_removeListener :jm_fireEvent jm_fireEvent :jm_process jm_process} BasicEventHandler/jproto))


