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
(defn- Canvas/jstatic_RIGHT [& args] (JR/call jfile "../../../../../../javax/microedition/lcdui/Canvas" "jstatic_RIGHT" args))
(import ../../../../../../org/allbinary/game/ai/BasicAI :as BasicAI)
(defn- MathUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/math/MathUtil" "jm_getInstance" args))
(defn- SmallIntegerSingletonFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" "jm_getInstance" args))
(import ../../../../../../java/lang/Integer :as Integer)

# Java class BasePatrolAI
(var jproto nil)
(var jcell_MAX_DISTANCE :jnone)
(var jstatic_MAX_DISTANCE nil)
(var jsetstatic_MAX_DISTANCE nil)
(var jcell_DIRECTION_ARRAY :jnone)
(var jstatic_DIRECTION_ARRAY nil)
(var jsetstatic_DIRECTION_ARRAY nil)
(var jcell_FIRING_DISTANCE :jnone)
(var jstatic_FIRING_DISTANCE nil)
(var jsetstatic_FIRING_DISTANCE nil)
(var jcell_SPEED :jnone)
(var jstatic_SPEED nil)
(var jsetstatic_SPEED nil)
(var jnew_3 nil)
(var jm_update nil)
(var jm_updateTotalDistance nil)
(var jm_changeDirectionIfReachedPacingAreaMax nil)
(var jm_nextDirection nil)
(var jm_disable nil)

(set jstatic_MAX_DISTANCE (fn jstatic_MAX_DISTANCE []
  (when (= jcell_MAX_DISTANCE :jnone) (set jcell_MAX_DISTANCE (:jm_getAt (SmallIntegerSingletonFactory/jm_getInstance) 2)))
  jcell_MAX_DISTANCE))
(set jsetstatic_MAX_DISTANCE (fn jsetstatic_MAX_DISTANCE [value] (set jcell_MAX_DISTANCE value)))

(set jstatic_DIRECTION_ARRAY (fn jstatic_DIRECTION_ARRAY []
  (when (= jcell_DIRECTION_ARRAY :jnone) (set jcell_DIRECTION_ARRAY (:jm_getAt (SmallIntegerSingletonFactory/jm_getInstance) 3)))
  jcell_DIRECTION_ARRAY))
(set jsetstatic_DIRECTION_ARRAY (fn jsetstatic_DIRECTION_ARRAY [value] (set jcell_DIRECTION_ARRAY value)))

(set jstatic_FIRING_DISTANCE (fn jstatic_FIRING_DISTANCE []
  (when (= jcell_FIRING_DISTANCE :jnone) (set jcell_FIRING_DISTANCE (:jm_getAt (SmallIntegerSingletonFactory/jm_getInstance) 4)))
  jcell_FIRING_DISTANCE))
(set jsetstatic_FIRING_DISTANCE (fn jsetstatic_FIRING_DISTANCE [value] (set jcell_FIRING_DISTANCE value)))

(set jstatic_SPEED (fn jstatic_SPEED []
  (when (= jcell_SPEED :jnone) (set jcell_SPEED (:jm_getAt (SmallIntegerSingletonFactory/jm_getInstance) 5)))
  jcell_SPEED))
(set jsetstatic_SPEED (fn jsetstatic_SPEED [value] (set jcell_SPEED value)))

    
(set jnew_3 (fn jnew_3 [_hashtable _ownerLayerInterface _gameInput]
    (var this (table/setproto @{:jclass "BasePatrolAI" :f_maxDistance nil :f_currentDistance 0 :f_xTotalDistance 0 :f_lastKeyDirection 0 :f_keyDirection 0} jproto))
    
    
    
    (put this :f_lastKeyDirection (Canvas/jstatic_RIGHT))
    (put this :f_keyDirection (Canvas/jstatic_RIGHT))
        (JR/superInit this (BasicAI/jnew_2 _ownerLayerInterface _gameInput))
        (set (this :f_maxDistance) (:jm_get _hashtable (jstatic_MAX_DISTANCE)))
        (set (this :f_currentDistance) (:jm_intValue (this :f_maxDistance)))
    this))
    
(set jm_update (fn jm_update [this]
        (:jm_updateTotalDistance this)
        (:jm_changeDirectionIfReachedPacingAreaMax this)))
    
(set jm_updateTotalDistance (fn jm_updateTotalDistance [this]
        (var _velocityInterfaceCompositeInterface (:jm_getOwnerLayerInterface this))
        (var _velocityProperties (:jm_getVelocityProperties _velocityInterfaceCompositeInterface))
        (set (this :f_xTotalDistance) (JR/i32 (+ (this :f_xTotalDistance) (JR/className (:jm_getVelocityXBasicDecimalP _velocityProperties)))))))
    
(set jm_changeDirectionIfReachedPacingAreaMax (fn jm_changeDirectionIfReachedPacingAreaMax [this]
        (var _mathUtil (MathUtil/jm_getInstance))
        (var _totalDistance (:jm_abs _mathUtil (this :f_xTotalDistance)))
        (if (> _totalDistance (this :f_currentDistance))
            (do
            (:jm_nextDirection this)))))
    
(set jm_nextDirection (fn jm_nextDirection [this]
        (if (= (this :f_lastKeyDirection) (Canvas/jstatic_LEFT))
            (do
            (set (this :f_keyDirection) (Canvas/jstatic_RIGHT))
            (set (this :f_lastKeyDirection) (this :f_keyDirection))
            (set (this :f_xTotalDistance) 0))
            (if (= (this :f_lastKeyDirection) (Canvas/jstatic_RIGHT))
            (do
            (set (this :f_keyDirection) (Canvas/jstatic_LEFT))
            (set (this :f_lastKeyDirection) (this :f_keyDirection))
            (set (this :f_xTotalDistance) 0))))))
    
(set jm_disable (fn jm_disable [this]
    nil))

(set jproto (table/setproto @{:jm_update jm_update :jm_updateTotalDistance jm_updateTotalDistance :jm_changeDirectionIfReachedPacingAreaMax jm_changeDirectionIfReachedPacingAreaMax :jm_nextDirection jm_nextDirection :jm_disable jm_disable} BasicAI/jproto))


