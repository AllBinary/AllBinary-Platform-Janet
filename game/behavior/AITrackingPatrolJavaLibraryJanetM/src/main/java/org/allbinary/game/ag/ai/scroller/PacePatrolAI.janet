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
(defn- Canvas/jstatic_RIGHT [& args] (JR/call jfile "../../../../../../javax/microedition/lcdui/Canvas" "jstatic_RIGHT" args))
(defn- Canvas/jstatic_LEFT [& args] (JR/call jfile "../../../../../../javax/microedition/lcdui/Canvas" "jstatic_LEFT" args))
(defn- Canvas/jstatic_KEY_NUM1 [& args] (JR/call jfile "../../../../../../javax/microedition/lcdui/Canvas" "jstatic_KEY_NUM1" args))
(defn- DirectionFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/direction/DirectionFactory" "jm_getInstance" args))
(defn- TrackingEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/game/tracking/TrackingEventHandler" "jm_getInstance" args))
(defn- ForcedLogUtil/jm_log [& args] (JR/call jfile "../../../../../../org/allbinary/logic/communication/log/ForcedLogUtil" "jm_log" args))
(defn- EventStrings/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/util/event/EventStrings" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(import ./BasePatrolAI :as BasePatrolAI)

# Java class PacePatrolAI
(var jproto nil)
(var jnew_3 nil)
(var jm_processAI nil)
(var jm_setFiringDirectionForTargetIfInRange nil)
(var jm_disable nil)
(var jm_onEvent nil)
(var jm_onMovement nil)
(var jm_getFiringDistance nil)
(var jm_setFiringDistance nil)

    
(set jnew_3 (fn jnew_3 [_hashtable _ownerLayerInterface _gameInput]
    (var this (table/setproto @{:jclass "PacePatrolAI" :f_trackingList nil :f_firingDistance 0 :f_isFollowLimitedByTerrain false} jproto))
    
    
    (put this :f_isFollowLimitedByTerrain false)
        (JR/superInit this (BasePatrolAI/jnew_3 _hashtable _ownerLayerInterface _gameInput))
        (:jm_addListenerInterface (TrackingEventHandler/jm_getInstance) this)
        (set (this :f_trackingList) (BasicArrayListD/jnew_0))
    this))
    
(set jm_processAI (fn jm_processAI [this _allBinaryLayerManager]
        (:jm_update this)
        (var _direction (:jm_setFiringDirectionForTargetIfInRange this))
        (var _directionFactory (DirectionFactory/jm_getInstance))
        (if (= _direction (_directionFactory :f_LEFT))
            (do
            (if (or (not= (this :f_lastKeyDirection) (this :f_keyDirection)) (not (this :f_isFollowLimitedByTerrain)))
                (do
                ((get BasePatrolAI/jproto :jm_processKeyAI) this (Canvas/jstatic_LEFT))))
            (set (this :f_keyDirection) (Canvas/jstatic_LEFT))
            (set (this :f_lastKeyDirection) (this :f_keyDirection))
            (set (this :f_xTotalDistance) 0)
            ((get BasePatrolAI/jproto :jm_processKeyAI) this (Canvas/jstatic_KEY_NUM1)))
            (if (= _direction (_directionFactory :f_RIGHT))
            (do
            (if (or (not= (this :f_lastKeyDirection) (this :f_keyDirection)) (not (this :f_isFollowLimitedByTerrain)))
                (do
                ((get BasePatrolAI/jproto :jm_processKeyAI) this (Canvas/jstatic_RIGHT))))
            (set (this :f_keyDirection) (Canvas/jstatic_RIGHT))
            (set (this :f_lastKeyDirection) (this :f_keyDirection))
            (set (this :f_xTotalDistance) 0)
            ((get BasePatrolAI/jproto :jm_processKeyAI) this (Canvas/jstatic_KEY_NUM1)))
            (do
            ((get BasePatrolAI/jproto :jm_processKeyAI) this (this :f_keyDirection)))))))
    
(set jm_setFiringDirectionForTargetIfInRange (fn jm_setFiringDirectionForTargetIfInRange [this]
    (label jreturn
        (var _directionFactory (DirectionFactory/jm_getInstance))
        (var _ownerLayerInterface (:jm_getOwnerLayerInterface this))
        (var _direction (_directionFactory :f_NOT_BORDERED_WITH))
        (var _lastTrackingEvent nil)
        (var _lastTrackingLayerInterface nil)
        (var _directionCompositeInterface nil)
        (var _size (:jm_size (this :f_trackingList)))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _lastTrackingEvent (:jm_get (this :f_trackingList) 0))
            (set _lastTrackingLayerInterface (:jm_getLayerInterface _lastTrackingEvent))
            (var _x (:jm_getXP _lastTrackingLayerInterface))
            (var _y (:jm_getYP _lastTrackingLayerInterface))
            (var _yDistance (JR/i32 (- (JR/i32 (- (:jm_getYP _ownerLayerInterface) _y)) (:jm_getHeight _ownerLayerInterface))))
            (var _xDistance (JR/i32 (- (JR/i32 (- (:jm_getXP _ownerLayerInterface) _x)) (:jm_getWidth _ownerLayerInterface))))
            (var _absXDistance (math/abs _xDistance))
            (var _absYDistance (math/abs _yDistance))
            (if (<= _absYDistance 100)
                (do
                (if (< _absXDistance (JR/idiv (:jm_getFiringDistance this) 2))
                    (do
                    (set _directionCompositeInterface (:jm_getOwnerLayerInterface this))
                    (if (and (< _xDistance 0) (= (:jm_getDirection _directionCompositeInterface) (_directionFactory :f_RIGHT)))
                        (do
                        (set _direction (_directionFactory :f_RIGHT)))
                        (if (and (> _xDistance 0) (= (:jm_getDirection _directionCompositeInterface) (_directionFactory :f_LEFT)))
                        (do
                        (set _direction (_directionFactory :f_LEFT))))))))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn _direction))))
    
(set jm_disable (fn jm_disable [this]
    nil))
    
(set jm_onEvent (fn jm_onEvent [this _eventObject]
        (ForcedLogUtil/jm_log ((EventStrings/jm_getInstance) :f_PERFORMANCE_MESSAGE) this)))
    
(set jm_onMovement (fn jm_onMovement [this _trackingEvent]
        (:jm_clear (this :f_trackingList))
        (:jm_add (this :f_trackingList) _trackingEvent)))
    
(set jm_getFiringDistance (fn jm_getFiringDistance [this]
    (label jreturn
        (return jreturn (this :f_firingDistance)))))
    
(set jm_setFiringDistance (fn jm_setFiringDistance [this _firingDistance]
        (set (this :f_firingDistance) _firingDistance)))

(set jproto (table/setproto @{:jm_processAI jm_processAI :jm_setFiringDirectionForTargetIfInRange jm_setFiringDirectionForTargetIfInRange :jm_disable jm_disable :jm_onEvent jm_onEvent :jm_onMovement jm_onMovement :jm_getFiringDistance jm_getFiringDistance :jm_setFiringDistance jm_setFiringDistance} BasePatrolAI/jproto))


