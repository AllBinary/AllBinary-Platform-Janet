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
(defn- AllBinaryEventCircularPool/jnew_1 [& args] (JR/call jfile "../../../../org/allbinary/logic/util/event/AllBinaryEventCircularPool" "jnew_1" args))
(defn- TerrainEventFactory/jnew_0 [& args] (JR/call jfile "./TerrainEventFactory" "jnew_0" args))

# Java class TerrainEventCircularStaticPool
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_init nil)
(var jm_getNext nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "TerrainEventCircularStaticPool" :f_EVENT_POOL nil} jproto))
    (put this :f_EVENT_POOL (AllBinaryEventCircularPool/jnew_1 20))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_init (fn jm_init [this]
        (:jm_initAllBinaryEventCircularPool (this :f_EVENT_POOL) (TerrainEventFactory/jnew_0))))
    
(set jm_getNext (fn jm_getNext [this _basicTerrainInfo]
    (label jreturn
        (var _trackingEvent (:jm_getNextInstance (this :f_EVENT_POOL)))
        (:jm_setBasicTerrainInfoForCircularStaticPool _trackingEvent _basicTerrainInfo)
        (return jreturn _trackingEvent))))

(set jproto @{:jm_init jm_init :jm_getNext jm_getNext})


