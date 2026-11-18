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
(defn- Canvas/jstatic_KEY_NUM1 [& args] (JR/call jfile "../../../../../../javax/microedition/lcdui/Canvas" "jstatic_KEY_NUM1" args))
(defn- MyRandomFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/game/rand/MyRandomFactory" "jm_getInstance" args))
(import ./BasePatrolAI :as BasePatrolAI)

# Java class RandomPatrolAI
(var jproto nil)
(var jnew_3 nil)
(var jm_updateRandomDistance nil)
(var jm_processAI nil)
(var jm_nextDirection nil)

    
(set jnew_3 (fn jnew_3 [_hashtable _ownerLayerInterface _gameInput]
    (var this (table/setproto @{:jclass "RandomPatrolAI" :f_changedDirection false} jproto))
    (put this :f_changedDirection true)
        (JR/superInit this (BasePatrolAI/jnew_3 _hashtable _ownerLayerInterface _gameInput))
        (:jm_updateRandomDistance this)
    this))
    
(set jm_updateRandomDistance (fn jm_updateRandomDistance [this]
        (set (this :f_currentDistance) (:jm_getAbsoluteNextInt (MyRandomFactory/jm_getInstance) (JR/className (this :f_maxDistance))))))
    
(set jm_processAI (fn jm_processAI [this _allBinaryLayerManager]
        ((get BasePatrolAI/jproto :jm_update) this)
        ((get BasePatrolAI/jproto :jm_processKeyAI) this (this :f_keyDirection))
        (if (this :f_changedDirection)
            (do
            ((get BasePatrolAI/jproto :jm_processKeyAI) this (Canvas/jstatic_KEY_NUM1))
            (:jm_updateRandomDistance this)
            (set (this :f_changedDirection) false)))))
    
(set jm_nextDirection (fn jm_nextDirection [this]
        ((get BasePatrolAI/jproto :jm_nextDirection) this)
        (set (this :f_changedDirection) true)))

(set jproto (table/setproto @{:jm_updateRandomDistance jm_updateRandomDistance :jm_processAI jm_processAI :jm_nextDirection jm_nextDirection} BasePatrolAI/jproto))


