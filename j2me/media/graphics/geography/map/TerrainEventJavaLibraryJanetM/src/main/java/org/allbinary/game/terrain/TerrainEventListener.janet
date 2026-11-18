# Generated Code Do Not Modify
# package org.allbinary.game.terrain

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- ForcedLogUtil/jm_log [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/ForcedLogUtil" "jm_log" args))
(defn- EventStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/util/event/EventStrings" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))

# Java class TerrainEventListener
(var jproto nil)
(var jnew_0 nil)
(var jm_onEvent nil)
(var jm_onTerrainEvent nil)
(var jm_getList nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "TerrainEventListener" :f_list nil} jproto))
    (put this :f_list (BasicArrayListD/jnew_0))
    this))

    
(set jm_onEvent (fn jm_onEvent [this _eventObject]
        (ForcedLogUtil/jm_log ((EventStrings/jm_getInstance) :f_PERFORMANCE_MESSAGE) this)))
    
(set jm_onTerrainEvent (fn jm_onTerrainEvent [this _terrainEvent]
        (:jm_clear (this :f_list))
        (:jm_add (this :f_list) _terrainEvent)))
    
(set jm_getList (fn jm_getList [this]
    (label jreturn
        (return jreturn (this :f_list)))))

(set jproto @{:jm_onEvent jm_onEvent :jm_onTerrainEvent jm_onTerrainEvent :jm_getList jm_getList})


