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
(import ../../../../../../org/allbinary/game/ai/BasicAI :as BasicAI)
(defn- SmallIntegerSingletonFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" "jm_getInstance" args))
(defn- GameTickTimeDelayHelperFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/time/GameTickTimeDelayHelperFactory" "jm_getInstance" args))
(defn- TimeDelayHelper/jnew_1 [& args] (JR/call jfile "../../../../../../org/allbinary/time/TimeDelayHelper" "jnew_1" args))
(import ../../../../../../java/lang/Integer :as Integer)

# Java class TimedFireAI
(var jproto nil)
(var jcell_TIME :jnone)
(var jstatic_TIME nil)
(var jsetstatic_TIME nil)
(var jnew_3 nil)
(var jm_processAI nil)

(set jstatic_TIME (fn jstatic_TIME []
  (when (= jcell_TIME :jnone) (set jcell_TIME (:jm_getAt (SmallIntegerSingletonFactory/jm_getInstance) 1)))
  jcell_TIME))
(set jsetstatic_TIME (fn jsetstatic_TIME [value] (set jcell_TIME value)))

    
(set jnew_3 (fn jnew_3 [_delay _ownerLayerInterface _gameInput]
    (var this (table/setproto @{:jclass "TimedFireAI" :f_maxFireDelayTimeHelper nil :f_delay 0} jproto))
    (put this :f_maxFireDelayTimeHelper (TimeDelayHelper/jnew_1 0))
    
        (JR/superInit this (BasicAI/jnew_2 _ownerLayerInterface _gameInput))
        (set (this :f_delay) _delay)
    this))
    
(set jm_processAI (fn jm_processAI [this _allBinaryLayerManager]
        (var _timeFiredInterface (:jm_getOwnerLayerInterface this))
        (if (and (:jm_isTime (this :f_maxFireDelayTimeHelper) ((GameTickTimeDelayHelperFactory/jm_getInstance) :f_startTime)) (< (JR/i32 (+ (:jm_getLastFireTime _timeFiredInterface) ((this :f_maxFireDelayTimeHelper) :f_delay))) (:jm_getStartTime (this :f_maxFireDelayTimeHelper))))
            (do
            ((get BasicAI/jproto :jm_processKeyAI) this (Canvas/jstatic_KEY_NUM1))
            (set ((this :f_maxFireDelayTimeHelper) :f_delay) (this :f_delay))))))

(set jproto (table/setproto @{:jm_processAI jm_processAI} BasicAI/jproto))


