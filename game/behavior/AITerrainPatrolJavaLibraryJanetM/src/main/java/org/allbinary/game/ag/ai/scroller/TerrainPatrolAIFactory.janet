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
# package org.allbinary.game.ag.ai.scroller

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- SmallIntegerSingletonFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" "jm_getInstance" args))
(defn- BasePatrolAI/jstatic_MAX_DISTANCE [& args] (JR/call jfile "./BasePatrolAI" "jstatic_MAX_DISTANCE" args))
(defn- TerrainPatrolAI/jnew_3 [& args] (JR/call jfile "./TerrainPatrolAI" "jnew_3" args))

# Java class TerrainPatrolAIFactory
(var jproto nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "TerrainPatrolAIFactory"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance [this _hashtable _ownerLayerInterface _gameInput]
    (label jreturn
        (:jm_put _hashtable (BasePatrolAI/jstatic_MAX_DISTANCE) (:jm_getAt (SmallIntegerSingletonFactory/jm_getInstance) 220))
        (return jreturn (TerrainPatrolAI/jnew_3 _hashtable _ownerLayerInterface _gameInput)))))

(set jproto @{:jm_getInstance jm_getInstance})


