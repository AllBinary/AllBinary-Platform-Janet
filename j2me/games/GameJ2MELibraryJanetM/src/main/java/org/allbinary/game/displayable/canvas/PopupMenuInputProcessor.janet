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
# package org.allbinary.game.displayable.canvas

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- Canvas/jstatic_KEY_STAR [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Canvas" "jstatic_KEY_STAR" args))
(defn- GameInputStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/GameInputStrings" "jm_getInstance" args))
(defn- TouchMotionGestureFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/input/motion/gesture/TouchMotionGestureFactory" "jm_getInstance" args))
(defn- RectangleCollisionUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/math/RectangleCollisionUtil" "jm_getInstance" args))
(defn- TimeDelayHelper/jnew_1 [& args] (JR/call jfile "../../../../../org/allbinary/time/TimeDelayHelper" "jnew_1" args))
(import ./BasicMenuInputProcessor :as BasicMenuInputProcessor)

# Java class PopupMenuInputProcessor
(var jproto nil)
(var jnew_4 nil)
(var jm_init nil)
(var jm_processInput nil)
(var jm_processInputList nil)
(var jm_processMotionInputs nil)
(var jm_processMotionInput nil)

    
(set jnew_4 (fn jnew_4 [_gameKeyEventList _playerInputId _gameCanvas _rectangle]
    (var this (table/setproto @{:jclass "PopupMenuInputProcessor" :f_rectangleCollisionUtil nil :f_CLICK_DELAY 0 :f_clickTimeHelper nil :f_rectangle nil} jproto))
    (put this :f_rectangleCollisionUtil (RectangleCollisionUtil/jm_getInstance))
    (put this :f_CLICK_DELAY 120)
    (put this :f_clickTimeHelper (TimeDelayHelper/jnew_1 (this :f_CLICK_DELAY)))
    
        (JR/superInit this (BasicMenuInputProcessor/jnew_3 _gameKeyEventList _playerInputId _gameCanvas))
        (set (this :f_rectangle) _rectangle)
    this))
    
(set jm_init (fn jm_init [this _rectangle]
        (set (this :f_rectangle) _rectangle)))
    
(set jm_processInput (fn jm_processInput [this _key]
    (label jreturn
        (if (= _key (Canvas/jstatic_KEY_STAR))
            (do
            (var _gameCanvas (:jm_getCanvas this))
            (:jm_toggleMenu _gameCanvas)
            (return jreturn 1)))
        (return jreturn 0))))
    
(set jm_processInputList (fn jm_processInputList [this]
    (label jreturn
        (try
            (do
            (var _motionInputsIndex (:jm_processMotionInputs this))
            (var _list (:jm_getGameKeyEventList this))
            (var _size (:jm_size _list))
            (var _key 0)
            (var _gameKeyEvent nil)
            (do
                (var _index 0)
                (var jbreak false)
                (while (and (not jbreak) (< _index _size))
                    (label jcontinue
                (set _gameKeyEvent ((_list :f_objectArray) _index))
                (if (not (nil? _gameKeyEvent))
                    (do
                    (set _key (:jm_getKey _gameKeyEvent))
                    (if (= (:jm_processInput this _key) 1)
                        (do
                        (do (set jbreak true) (return jcontinue)))))))
                    (unless jbreak (set _index (JR/i32 (+ _index 1))))))
            (:jm_clear this)
            (if (or (> _size 0) (>= _motionInputsIndex 0))
                (do
                (return jreturn 1))
                (do
                (return jreturn (JR/i32 (- 1))))))
            ([_e] (do
            (JR/className (this :f_logUtil))
            (return jreturn (JR/i32 (- 1)))))))))
    
(set jm_processMotionInputs (fn jm_processMotionInputs [this]
    (label jreturn
        (var _lastIndex (JR/i32 (- (JR/className (this :f_motionGestureEventList)) 1)))
        (if (>= _lastIndex 0)
            (do
            (var _motionGestureEvent (((this :f_motionGestureEventList) :f_objectArray) _lastIndex))
            (:jm_processMotionInput this _motionGestureEvent)))
        (JR/className (this :f_motionGestureEventList))
        (return jreturn _lastIndex))))
    
(set jm_processMotionInput (fn jm_processMotionInput [this _motionGestureEvent]
    (label jreturn
        (if (nil? _motionGestureEvent)
            (do
            (JR/className (this :f_logUtil))
            (return jreturn)))
        (var _touchMotionGestureFactory (TouchMotionGestureFactory/jm_getInstance))
        (var _motionGestureInput (:jm_getMotionGesture _motionGestureEvent))
        (if (= _motionGestureInput (_touchMotionGestureFactory :f_RELEASED))
            (do
            (var _point (:jm_getCurrentPoint _motionGestureEvent))
            (var _rectPoint (:jm_getPoint (this :f_rectangle)))
            (if (:jm_isInside (this :f_rectangleCollisionUtil) (:jm_getX _rectPoint) (:jm_getY _rectPoint) (JR/i32 (+ (:jm_getMaxX (this :f_rectangle)) 20)) (:jm_getMaxY (this :f_rectangle)) (:jm_getX _point) (:jm_getY _point))
                (do
                (if (:jm_isTimeTNT (this :f_clickTimeHelper))
                    (do
                    (var _gameCanvas (:jm_getCanvas this))
                    (:jm_toggleMenu _gameCanvas))))))))))

(set jproto (table/setproto @{:jm_init jm_init :jm_processInput jm_processInput :jm_processInputList jm_processInputList :jm_processMotionInputs jm_processMotionInputs :jm_processMotionInput jm_processMotionInput} BasicMenuInputProcessor/jproto))


