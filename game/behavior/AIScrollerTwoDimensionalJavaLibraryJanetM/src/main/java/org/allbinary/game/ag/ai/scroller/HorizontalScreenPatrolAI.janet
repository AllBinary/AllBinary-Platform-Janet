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
(defn- Canvas/jstatic_LEFT [& args] (JR/call jfile "../../../../../../javax/microedition/lcdui/Canvas" "jstatic_LEFT" args))
(defn- Canvas/jstatic_KEY_NUM1 [& args] (JR/call jfile "../../../../../../javax/microedition/lcdui/Canvas" "jstatic_KEY_NUM1" args))
(import ../../../../../../org/allbinary/game/ai/BasicAI :as BasicAI)
(defn- MyRandomFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/game/rand/MyRandomFactory" "jm_getInstance" args))
(defn- DisplayInfoSingleton/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" "jm_getInstance" args))
(defn- SmallIntegerSingletonFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" "jm_getInstance" args))
(defn- SecondaryPlayerQueueFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/media/audio/SecondaryPlayerQueueFactory" "jm_getInstance" args))
(defn- TimeDelayHelper/jnew_1 [& args] (JR/call jfile "../../../../../../org/allbinary/time/TimeDelayHelper" "jnew_1" args))
(import ../../../../../../java/lang/Integer :as Integer)

# Java class HorizontalScreenPatrolAI
(var jproto nil)
(var jcell_SOUND :jnone)
(var jstatic_SOUND nil)
(var jsetstatic_SOUND nil)
(var jnew_3 nil)
(var jm_processAI nil)
(var jm_nextDirection nil)

(set jstatic_SOUND (fn jstatic_SOUND []
  (when (= jcell_SOUND :jnone) (set jcell_SOUND (:jm_getAt (SmallIntegerSingletonFactory/jm_getInstance) 433)))
  jcell_SOUND))
(set jsetstatic_SOUND (fn jsetstatic_SOUND [value] (set jcell_SOUND value)))

    
(set jnew_3 (fn jnew_3 [_hashtable _ownerLayerInterface _gameInput]
    (var this (table/setproto @{:jclass "HorizontalScreenPatrolAI" :f_keyDirection 0 :f_displayInfoSingleton nil :f_firingX 0 :f_firedIndex 0 :f_MAX_FIRE 0 :f_timeDelayHelper nil :f_secondaryPlayerQueue nil :f_sound nil} jproto))
    (put this :f_keyDirection (Canvas/jstatic_LEFT))
    (put this :f_displayInfoSingleton (DisplayInfoSingleton/jm_getInstance))
    (put this :f_firingX (:jm_getLastHalfWidth (this :f_displayInfoSingleton)))
    (put this :f_firedIndex 0)
    (put this :f_MAX_FIRE 28)
    (put this :f_timeDelayHelper (TimeDelayHelper/jnew_1 240))
    (put this :f_secondaryPlayerQueue (SecondaryPlayerQueueFactory/jm_getInstance))
    
        (JR/superInit this (BasicAI/jnew_2 _ownerLayerInterface _gameInput))
        (set (this :f_sound) (:jm_get _hashtable (jstatic_SOUND)))
        (if (nil? (this :f_sound))
            (do
            (error (JR/newException "Exception" "No Sound Provided!!"))))
    this))
    
(set jm_processAI (fn jm_processAI [this _allBinaryLayerManager]
        ((get BasicAI/jproto :jm_processKeyAI) this (this :f_keyDirection))
        (if (:jm_isTimeTNT (this :f_timeDelayHelper))
            (do
            (var _layerInterface (:jm_getOwnerLayerInterface this))
            (var _currentOwnerLayerX (:jm_getXP _layerInterface))
            (if (< _currentOwnerLayerX (JR/i32 (- (:jm_getWidth _layerInterface))))
                (do
                (var _y (:jm_getAbsoluteNextIntAllowZero (MyRandomFactory/jm_getInstance) 50))
                (:jm_setPosition _layerInterface (JR/i32 (+ (JR/i32 (+ (:jm_getLastWidth (this :f_displayInfoSingleton)) (:jm_getWidth _layerInterface))) 50)) _y (:jm_getZP _layerInterface))
                (set (this :f_firedIndex) 0)
                (set (this :f_firingX) (JR/i32 (+ (:jm_getLastHalfWidth (this :f_displayInfoSingleton)) (:jm_getNextInt (MyRandomFactory/jm_getInstance) (:jm_getLastHalfWidth (this :f_displayInfoSingleton))))))
                (:jm_add (this :f_secondaryPlayerQueue) (this :f_sound))))
            (if (and (< _currentOwnerLayerX (this :f_firingX)) (> _currentOwnerLayerX (JR/i32 (- (:jm_getWidth _layerInterface)))))
                (do
                ((get BasicAI/jproto :jm_processKeyAI) this (Canvas/jstatic_KEY_NUM1))
                (var _gameLayerManager _allBinaryLayerManager)
                (var _FIRE (brshift (JR/i32 (+ (JR/className (:jm_getGameInfo _gameLayerManager)) 12)) 2))
                (if (> _FIRE (this :f_MAX_FIRE))
                    (do
                    (set _FIRE (this :f_MAX_FIRE))))
                (if (> (this :f_firedIndex) _FIRE)
                    (do
                    (set (this :f_firedIndex) 0)
                    (set (this :f_firingX) (Integer/jstatic_MIN_VALUE))))
                (set (this :f_firedIndex) (JR/i32 (+ (this :f_firedIndex) 1)))))))))
    
(set jm_nextDirection (fn jm_nextDirection [this]
    nil))

(set jproto (table/setproto @{:jm_processAI jm_processAI :jm_nextDirection jm_nextDirection} BasicAI/jproto))


