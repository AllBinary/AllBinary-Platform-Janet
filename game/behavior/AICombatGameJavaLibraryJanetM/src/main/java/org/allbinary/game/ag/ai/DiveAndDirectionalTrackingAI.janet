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
# package org.allbinary.game.ag.ai

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- Canvas/jstatic_KEY_NUM1 [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Canvas" "jstatic_KEY_NUM1" args))
(defn- Canvas/jstatic_LEFT [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Canvas" "jstatic_LEFT" args))
(defn- Canvas/jstatic_DOWN [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Canvas" "jstatic_DOWN" args))
(defn- Canvas/jstatic_UP [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Canvas" "jstatic_UP" args))
(defn- Canvas/jstatic_RIGHT [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Canvas" "jstatic_RIGHT" args))
(defn- Direction/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/direction/Direction" "jm_getInstance" args))
(defn- DirectionFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/direction/DirectionFactory" "jm_getInstance" args))
(import ../../../../../org/allbinary/game/ai/BasicAI :as BasicAI)
(defn- DestroyedEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/combat/destroy/event/DestroyedEventHandler" "jm_getInstance" args))
(defn- TrackingEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/tracking/TrackingEventHandler" "jm_getInstance" args))
(defn- AllBinaryLayer/jstatic_NULL_ALLBINARY_LAYER [& args] (JR/call jfile "../../../../../org/allbinary/layer/AllBinaryLayer" "jstatic_NULL_ALLBINARY_LAYER" args))
(defn- ForcedLogUtil/jm_log [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/ForcedLogUtil" "jm_log" args))
(defn- MathUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/math/MathUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- EventStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/util/event/EventStrings" "jm_getInstance" args))
(defn- GameTickTimeDelayHelperFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/time/GameTickTimeDelayHelperFactory" "jm_getInstance" args))
(defn- TimeDelayHelper/jnew_1 [& args] (JR/call jfile "../../../../../org/allbinary/time/TimeDelayHelper" "jnew_1" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))

# Java class DiveAndDirectionalTrackingAI
(var jproto nil)
(var jnew_4 nil)
(var jm_processAI nil)
(var jm_init nil)
(var jm_target nil)
(var jm_verticalTargeting nil)
(var jm_horizontalTargeting nil)
(var jm_setDive nil)
(var jm_moveRight nil)
(var jm_moveLeft nil)
(var jm_moveDown nil)
(var jm_moveUp nil)
(var jm_dive nil)
(var jm_attack nil)
(var jm_drop nil)
(var jm_isBeyondTarget nil)
(var jm_onEvent nil)
(var jm_onMovement nil)
(var jm_onDestroyed nil)
(var jm_setLastDirection nil)
(var jm_setLastKey nil)
(var jm_getLastDirection nil)
(var jm_toString nil)

    
(set jnew_4 (fn jnew_4 [_ownerLayerInterface _artificialIntelligenceInterface _gameInput _visitor]
    (var this (table/setproto @{:jclass "DiveAndDirectionalTrackingAI" :f_mathUtil nil :f_directionFactory nil :f_gameTickTimeDelayHelper nil :f_timeDelayHelper nil :f_list nil :f_directionalInterface nil :f_velocityInterface nil :f_directionToKeyMap nil :f_initialDropped false :f_diveP false :f_directionOfTarget nil :f_MIN_DISTANCE 0 :f_lastTrackingLayerInterface nil :f_artificialIntelligenceInterface nil :f_aiVistor nil :f_lastDirection nil} jproto))
    (put this :f_mathUtil (MathUtil/jm_getInstance))
    (put this :f_directionFactory (DirectionFactory/jm_getInstance))
    (put this :f_gameTickTimeDelayHelper (GameTickTimeDelayHelperFactory/jm_getInstance))
    (put this :f_timeDelayHelper (TimeDelayHelper/jnew_1 500))
    (put this :f_list (BasicArrayListD/jnew_0))
    
    
    (put this :f_directionToKeyMap @[(Canvas/jstatic_LEFT) (Canvas/jstatic_DOWN) (Canvas/jstatic_UP) (Canvas/jstatic_RIGHT)])
    
    
    (put this :f_directionOfTarget (Direction/jm_getInstance 0))
    (put this :f_MIN_DISTANCE 40)
    (put this :f_lastTrackingLayerInterface (AllBinaryLayer/jstatic_NULL_ALLBINARY_LAYER))
    
    
    (put this :f_lastDirection ((DirectionFactory/jm_getInstance) :f_NO_DIRECTION))
        (JR/superInit this (BasicAI/jnew_2 _ownerLayerInterface _gameInput))
        (set (this :f_aiVistor) _visitor)
        (set (this :f_artificialIntelligenceInterface) _artificialIntelligenceInterface)
        (var _directionalCompositeInterface (:jm_getOwnerLayerInterface this))
        (set (this :f_directionalInterface) (:jm_getDirectionalInterface _directionalCompositeInterface))
        (var _velocityInterfaceCompositeInterface (:jm_getOwnerLayerInterface this))
        (set (this :f_velocityInterface) (:jm_getVelocityProperties _velocityInterfaceCompositeInterface))
        (:jm_addListenerInterface (DestroyedEventHandler/jm_getInstance) this)
        (:jm_init this)
    this))
    
(set jm_processAI (fn jm_processAI [this _allBinaryLayerManager]
        (if (:jm_isBeyondTarget this)
            (do
            (:jm_init this)
            (:jm_zero (this :f_velocityInterface))))
        (if (not (this :f_diveP))
            (do
            (:jm_target this _allBinaryLayerManager))
            (do
            (:jm_dive this)
            (:jm_attack this)))
        (:jm_clear (this :f_list))))
    
(set jm_init (fn jm_init [this]
        (set (this :f_diveP) false)
        (set (this :f_directionOfTarget) ((DirectionFactory/jm_getInstance) :f_NOT_BORDERED_WITH))
        (:jm_addListenerInterface (TrackingEventHandler/jm_getInstance) this)))
    
(set jm_target (fn jm_target [this _allBinaryLayerManager]
    (label jreturn
        (if (= (:jm_size (this :f_list)) 0)
            (do
            (return jreturn)))
        (var _lastTrackingEvent (:jm_removeAt (this :f_list) 0))
        (set (this :f_lastTrackingLayerInterface) (:jm_getLayerInterface _lastTrackingEvent))
        (var _layerInterface (this :f_lastTrackingLayerInterface))
        (var _ownerLayerInterface (:jm_getOwnerLayerInterface this))
        (var _groupArray (:jm_getGroupInterface _layerInterface))
        (var _ownerGroupArray (:jm_getGroupInterface _ownerLayerInterface))
        (if (= _groupArray _ownerGroupArray)
            (do
            (return jreturn)))
        (var _x (:jm_getXP (this :f_lastTrackingLayerInterface)))
        (var _y (:jm_getYP (this :f_lastTrackingLayerInterface)))
        (var _yDistance (JR/i32 (- (JR/i32 (- (:jm_getYP _ownerLayerInterface) _y)) (:jm_getHeight _ownerLayerInterface))))
        (var _xDistance (JR/i32 (- (JR/i32 (- (:jm_getXP _ownerLayerInterface) _x)) (:jm_getWidth _ownerLayerInterface))))
        (var _directionFactory (DirectionFactory/jm_getInstance))
        (if (> (:jm_abs (this :f_mathUtil) _yDistance) (:jm_abs (this :f_mathUtil) _xDistance))
            (do
            (if (> _yDistance (this :f_MIN_DISTANCE))
                (do
                (set (this :f_directionOfTarget) (_directionFactory :f_UP)))
                (if (< _yDistance (JR/i32 (- (this :f_MIN_DISTANCE))))
                (do
                (set (this :f_directionOfTarget) (_directionFactory :f_DOWN))))))
            (do
            (if (> _xDistance (this :f_MIN_DISTANCE))
                (do
                (set (this :f_directionOfTarget) (_directionFactory :f_LEFT)))
                (if (< _xDistance (JR/i32 (- (this :f_MIN_DISTANCE))))
                (do
                (set (this :f_directionOfTarget) (_directionFactory :f_RIGHT)))))))
        (if (and (not (this :f_initialDropped)) (not= (this :f_directionOfTarget) (_directionFactory :f_NOT_BORDERED_WITH)))
            (do
            (:jm_drop this)))
        (if (this :f_initialDropped)
            (do
            (if (or (= (this :f_directionOfTarget) (_directionFactory :f_UP)) (= (this :f_directionOfTarget) (_directionFactory :f_DOWN)))
                (do
                (:jm_verticalTargeting this _x))
                (if (or (= (this :f_directionOfTarget) (_directionFactory :f_LEFT)) (= (this :f_directionOfTarget) (_directionFactory :f_RIGHT)))
                (do
                (:jm_horizontalTargeting this _y))
                (do
                (:jm_processAI (this :f_artificialIntelligenceInterface) _allBinaryLayerManager)))))))))
    
(set jm_verticalTargeting (fn jm_verticalTargeting [this _x]
        (var _ownerLayerInterface (:jm_getOwnerLayerInterface this))
        (if (< (:jm_getXP _ownerLayerInterface) _x)
            (do
            (:jm_moveRight this)))
        (if (> (:jm_getXP _ownerLayerInterface) _x)
            (do
            (:jm_moveLeft this)))
        (if (and (> (:jm_getXP _ownerLayerInterface) (JR/i32 (- _x 3))) (< (:jm_getXP _ownerLayerInterface) (JR/i32 (+ _x 3))))
            (do
            (:jm_setDive this)))))
    
(set jm_horizontalTargeting (fn jm_horizontalTargeting [this _y]
        (var _ownerLayerInterface (:jm_getOwnerLayerInterface this))
        (if (< (:jm_getYP _ownerLayerInterface) _y)
            (do
            (:jm_moveDown this)))
        (if (> (:jm_getYP _ownerLayerInterface) _y)
            (do
            (:jm_moveUp this)))
        (if (and (> (:jm_getYP _ownerLayerInterface) (JR/i32 (- _y 3))) (< (:jm_getYP _ownerLayerInterface) (JR/i32 (+ _y 3))))
            (do
            (:jm_setDive this)))))
    
(set jm_setDive (fn jm_setDive [this]
        (set (this :f_diveP) true)
        (:jm_zero (this :f_velocityInterface))
        (:jm_removeListener (TrackingEventHandler/jm_getInstance) this)))
    
(set jm_moveRight (fn jm_moveRight [this]
        (:jm_setLastDirection this ((this :f_directionFactory) :f_RIGHT))
        (:jm_setFrameByDirection (this :f_directionalInterface) (this :f_lastDirection))
        (:jm_visit (this :f_aiVistor) this)))
    
(set jm_moveLeft (fn jm_moveLeft [this]
        (:jm_setLastDirection this ((this :f_directionFactory) :f_LEFT))
        (:jm_setFrameByDirection (this :f_directionalInterface) (this :f_lastDirection))
        (:jm_visit (this :f_aiVistor) this)))
    
(set jm_moveDown (fn jm_moveDown [this]
        (:jm_setLastDirection this ((this :f_directionFactory) :f_DOWN))
        (:jm_setFrameByDirection (this :f_directionalInterface) (this :f_lastDirection))
        (:jm_visit (this :f_aiVistor) this)))
    
(set jm_moveUp (fn jm_moveUp [this]
        (:jm_setLastDirection this ((this :f_directionFactory) :f_UP))
        (:jm_setFrameByDirection (this :f_directionalInterface) (this :f_lastDirection))
        (:jm_visit (this :f_aiVistor) this)))
    
(set jm_dive (fn jm_dive [this]
        (:jm_setFrameByDirection (this :f_directionalInterface) (this :f_directionOfTarget))
        (:jm_visit (this :f_aiVistor) this)))
    
(set jm_attack (fn jm_attack [this]
        ((get BasicAI/jproto :jm_processKeyAI) this (Canvas/jstatic_KEY_NUM1))))
    
(set jm_drop (fn jm_drop [this]
        (if (:jm_isTime (this :f_timeDelayHelper) ((this :f_gameTickTimeDelayHelper) :f_startTime))
            (do
            (set (this :f_initialDropped) true)
            (:jm_visit (this :f_aiVistor) this)))))
    
(set jm_isBeyondTarget (fn jm_isBeyondTarget [this]
    (label jreturn
        (if (= (this :f_directionOfTarget) ((this :f_directionFactory) :f_DOWN))
            (do
            (if (> (JR/className (:jm_getOwnerLayerInterface this)) (JR/i32 (+ (:jm_getYP (this :f_lastTrackingLayerInterface)) (this :f_MIN_DISTANCE))))
                (do
                (return jreturn true))
                (do
                (return jreturn false))))
            (if (= (this :f_directionOfTarget) ((this :f_directionFactory) :f_UP))
            (do
            (if (< (JR/className (:jm_getOwnerLayerInterface this)) (JR/i32 (+ (:jm_getYP (this :f_lastTrackingLayerInterface)) (this :f_MIN_DISTANCE))))
                (do
                (return jreturn true))
                (do
                (return jreturn false))))
            (if (= (this :f_directionOfTarget) ((this :f_directionFactory) :f_RIGHT))
            (do
            (if (> (JR/className (:jm_getOwnerLayerInterface this)) (JR/i32 (+ (:jm_getXP (this :f_lastTrackingLayerInterface)) (this :f_MIN_DISTANCE))))
                (do
                (return jreturn true))
                (do
                (return jreturn false))))
            (if (= (this :f_directionOfTarget) ((this :f_directionFactory) :f_LEFT))
            (do
            (if (< (JR/className (:jm_getOwnerLayerInterface this)) (JR/i32 (+ (:jm_getXP (this :f_lastTrackingLayerInterface)) (this :f_MIN_DISTANCE))))
                (do
                (return jreturn true))
                (do
                (return jreturn false))))
            (do
            (return jreturn false)))))))))
    
(set jm_onEvent (fn jm_onEvent [this _eventObject]
        (ForcedLogUtil/jm_log ((EventStrings/jm_getInstance) :f_PERFORMANCE_MESSAGE) this)))
    
(set jm_onMovement (fn jm_onMovement [this _trackingEvent]
        (:jm_add (this :f_list) _trackingEvent)))
    
(set jm_onDestroyed (fn jm_onDestroyed [this _destroyedEvent]
        (if (= (:jm_getOwnerLayerInterface this) (:jm_getLayerInterface _destroyedEvent))
            (do
            (:jm_removeListener (TrackingEventHandler/jm_getInstance) this)
            (:jm_removeListener (DestroyedEventHandler/jm_getInstance) this)))))
    
(set jm_setLastDirection (fn jm_setLastDirection [this _lastDirection]
        (set (this :f_lastDirection) _lastDirection)
        (var _value (:jm_getValue (:jm_getLastDirection this)))
        (if (< _value 4)
            (do
            ((get BasicAI/jproto :jm_setLastKey) this ((this :f_directionToKeyMap) _value))))))
    
(set jm_setLastKey (fn jm_setLastKey [this _lastKey]
        ((get BasicAI/jproto :jm_setLastKey) this _lastKey)
        (if (= (:jm_getLastKey this) (Canvas/jstatic_LEFT))
            (do
            (set (this :f_lastDirection) ((DirectionFactory/jm_getInstance) :f_LEFT)))
            (if (= (:jm_getLastKey this) (Canvas/jstatic_DOWN))
            (do
            (set (this :f_lastDirection) ((DirectionFactory/jm_getInstance) :f_DOWN)))
            (if (= (:jm_getLastKey this) (Canvas/jstatic_UP))
            (do
            (set (this :f_lastDirection) ((DirectionFactory/jm_getInstance) :f_UP)))
            (if (= (:jm_getLastKey this) (Canvas/jstatic_RIGHT))
            (do
            (set (this :f_lastDirection) ((DirectionFactory/jm_getInstance) :f_RIGHT)))))))))
    
(set jm_getLastDirection (fn jm_getLastDirection [this]
    (label jreturn
        (return jreturn (this :f_lastDirection)))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer ((get BasicAI/jproto :jm_toString) this))
        (:jm_append _stringBuffer " LastDirection: ")
        (:jm_append _stringBuffer (:jm_toString_1 (StringUtil/jm_getInstance) (:jm_getLastDirection this)))
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto (table/setproto @{:jm_processAI jm_processAI :jm_init jm_init :jm_target jm_target :jm_verticalTargeting jm_verticalTargeting :jm_horizontalTargeting jm_horizontalTargeting :jm_setDive jm_setDive :jm_moveRight jm_moveRight :jm_moveLeft jm_moveLeft :jm_moveDown jm_moveDown :jm_moveUp jm_moveUp :jm_dive jm_dive :jm_attack jm_attack :jm_drop jm_drop :jm_isBeyondTarget jm_isBeyondTarget :jm_onEvent jm_onEvent :jm_onMovement jm_onMovement :jm_onDestroyed jm_onDestroyed :jm_setLastDirection jm_setLastDirection :jm_setLastKey jm_setLastKey :jm_getLastDirection jm_getLastDirection :jm_toString jm_toString} BasicAI/jproto))


