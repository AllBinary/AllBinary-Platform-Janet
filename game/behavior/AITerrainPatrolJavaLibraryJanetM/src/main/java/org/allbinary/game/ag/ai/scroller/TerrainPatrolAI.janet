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
(defn- BasicTerrainInfo/jnew_1 [& args] (JR/call jfile "../../../../../../org/allbinary/game/terrain/BasicTerrainInfo" "jnew_1" args))
(defn- TerrainEventCircularStaticPool/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/game/terrain/TerrainEventCircularStaticPool" "jm_getInstance" args))
(defn- TerrainEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/game/terrain/TerrainEventHandler" "jm_getInstance" args))
(defn- TerrainEventListener/jnew_0 [& args] (JR/call jfile "../../../../../../org/allbinary/game/terrain/TerrainEventListener" "jnew_0" args))
(defn- AngleFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/math/AngleFactory" "jm_getInstance" args))
(import ./PacePatrolAI :as PacePatrolAI)

# Java class TerrainPatrolAI
(var jproto nil)
(var jnew_3 nil)
(var jm_update nil)
(var jm_changeDirectionIfCliffReached nil)

    
(set jnew_3 (fn jnew_3 [_hashtable _ownerLayerInterface _gameInput]
    (var this (table/setproto @{:jclass "TerrainPatrolAI" :f_terrainEventListener nil :f_DOWN nil :f_CLIFF nil} jproto))
    (put this :f_terrainEventListener (TerrainEventListener/jnew_0))
    (put this :f_DOWN ((AngleFactory/jm_getInstance) :f_DOWN))
    (put this :f_CLIFF (BasicTerrainInfo/jnew_1 (this :f_DOWN)))
        (JR/superInit this (PacePatrolAI/jnew_3 _hashtable _ownerLayerInterface _gameInput))
        (:jm_addListener (TerrainEventHandler/jm_getInstance _ownerLayerInterface) (this :f_terrainEventListener))
        (:jm_onTerrainEvent (this :f_terrainEventListener) (:jm_getNext (TerrainEventCircularStaticPool/jm_getInstance) (this :f_CLIFF)))
    this))
    
(set jm_update (fn jm_update [this]
        ((get PacePatrolAI/jproto :jm_update) this)
        (:jm_changeDirectionIfCliffReached this)))
    
(set jm_changeDirectionIfCliffReached (fn jm_changeDirectionIfCliffReached [this]
        (var _list (:jm_getList (this :f_terrainEventListener)))
        (var _size (:jm_size _list))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (var _terrainEvent (:jm_removeAt _list _index))
            (var _basicTerrainInfo (:jm_getBasicTerrainInfo _terrainEvent))
            (var _angle (:jm_getAngle _basicTerrainInfo))
            (if (= _angle (this :f_DOWN))
                (do
                (:jm_nextDirection this)
                (if (not (this :f_isFollowLimitedByTerrain))
                    (do
                    (JR/className (this :f_logUtil))
                    (set (this :f_isFollowLimitedByTerrain) true))))))
                (do (set _index (JR/i32 (+ _index 1))))))))

(set jproto (table/setproto @{:jm_update jm_update :jm_changeDirectionIfCliffReached jm_changeDirectionIfCliffReached} PacePatrolAI/jproto))


