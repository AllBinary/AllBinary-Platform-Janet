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
# package org.allbinary.input.motion.button

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- DownGameKeyEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/event/DownGameKeyEventHandler" "jm_getInstance" args))
(defn- UpGameKeyEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/event/UpGameKeyEventHandler" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- RectangleCollisionUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/math/RectangleCollisionUtil" "jm_getInstance" args))
(defn- BasicTouchInputFactory/jm_getInstance [& args] (JR/call jfile "./BasicTouchInputFactory" "jm_getInstance" args))
(defn- CurrentlyPressedTouchButtonSingleton/jm_getInstance [& args] (JR/call jfile "./CurrentlyPressedTouchButtonSingleton" "jm_getInstance" args))
(defn- ReleaseHelper/jnew_1 [& args] (JR/call jfile "./ReleaseHelper" "jnew_1" args))
(defn- TouchScreenFactory/jm_getInstance [& args] (JR/call jfile "./TouchScreenFactory" "jm_getInstance" args))
(defn- MultitouchReleaseHelper/jnew_1 [& args] (JR/call jfile "./MultitouchReleaseHelper" "jnew_1" args))
(defn- TouchButtonFactory/jm_getInstance [& args] (JR/call jfile "./TouchButtonFactory" "jm_getInstance" args))

# Java class TouchButtonRecognizer
(var jproto nil)
(var jnew_0 nil)
(var jm_processRelease nil)
(var jm_releaseTouchButtonInput nil)
(var jm_pressTouchButtonInput nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "TouchButtonRecognizer" :f_logUtil nil :f_rectangleCollisionUtil nil :f_upGameKeyEventHandler nil :f_downGameKeyEventHandler nil :f_lastPressedTouchButtonInput nil :f_currentlyPressedTouchButtonSingleton nil :f_releaseHelper nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_rectangleCollisionUtil (RectangleCollisionUtil/jm_getInstance))
    (put this :f_upGameKeyEventHandler (UpGameKeyEventHandler/jm_getInstance))
    (put this :f_downGameKeyEventHandler (DownGameKeyEventHandler/jm_getInstance))
    (put this :f_lastPressedTouchButtonInput ((BasicTouchInputFactory/jm_getInstance) :f_NONE))
    (put this :f_currentlyPressedTouchButtonSingleton (CurrentlyPressedTouchButtonSingleton/jm_getInstance))
    
        (if (:jm_isMultiTouch (TouchScreenFactory/jm_getInstance))
            (do
            (set (this :f_releaseHelper) (MultitouchReleaseHelper/jnew_1 this)))
            (do
            (set (this :f_releaseHelper) (ReleaseHelper/jnew_1 this))))
    this))
    
(set jm_processRelease (fn jm_processRelease [this _touchButtonInput _deviceId]
        (:jm_release (this :f_releaseHelper) _touchButtonInput _deviceId)
        (var _gameKeyEvent (:jm_getGameKeyEvent _touchButtonInput))
        (:jm_fireEvent (this :f_upGameKeyEventHandler) _gameKeyEvent)
        (JR/className (:jm_getInstanceForDevice (this :f_upGameKeyEventHandler) _deviceId))
        (:jm_remove (this :f_currentlyPressedTouchButtonSingleton) _touchButtonInput)))
    
(set jm_releaseTouchButtonInput (fn jm_releaseTouchButtonInput [this _x _y _deviceId]
    (label jreturn
        (var _touchButtonInput (this :f_lastPressedTouchButtonInput))
        (if (:jm_contains (this :f_currentlyPressedTouchButtonSingleton) _touchButtonInput)
            (do
            (set (this :f_lastPressedTouchButtonInput) ((BasicTouchInputFactory/jm_getInstance) :f_NONE))
            (:jm_processRelease this _touchButtonInput _deviceId)
            (return jreturn true))
            (do
            (var _list (:jm_getList (TouchButtonFactory/jm_getInstance)))
            (var _rectangle nil)
            (var _point nil)
            (var _touchButton nil)
            (do
                (var _index (JR/i32 (- (:jm_size _list) 1)))
                (while (>= _index 0)
                    (do
                (set _touchButton ((_list :f_objectArray) _index))
                (set _rectangle (:jm_getRectangle _touchButton))
                (set _point (:jm_getPoint _rectangle))
                (if (:jm_isInside (this :f_rectangleCollisionUtil) (:jm_getX _point) (:jm_getY _point) (:jm_getMaxX _rectangle) (:jm_getMaxY _rectangle) _x _y)
                    (do
                    (set _touchButtonInput (:jm_getTouchButtonInput _touchButton))
                    (:jm_processRelease this _touchButtonInput _deviceId)
                    (return jreturn true))))
                    (do (set _index (JR/i32 (- _index 1))))))))
        (return jreturn false))))
    
(set jm_pressTouchButtonInput (fn jm_pressTouchButtonInput [this _x _y _deviceId]
    (label jreturn
        (var _list (:jm_getList (TouchButtonFactory/jm_getInstance)))
        (var _rectangle nil)
        (var _point nil)
        (var _touchButton nil)
        (var _touchButtonInput nil)
        (var _gameKeyEvent nil)
        (do
            (var _index (JR/i32 (- (:jm_size _list) 1)))
            (while (>= _index 0)
                (do
            (set _touchButton ((_list :f_objectArray) _index))
            (set _rectangle (:jm_getRectangle _touchButton))
            (set _point (:jm_getPoint _rectangle))
            (if (:jm_isInside (this :f_rectangleCollisionUtil) (:jm_getX _point) (:jm_getY _point) (:jm_getMaxX _rectangle) (:jm_getMaxY _rectangle) _x _y)
                (do
                (set _touchButtonInput (:jm_getTouchButtonInput _touchButton))
                (if (not (:jm_contains (this :f_currentlyPressedTouchButtonSingleton) _touchButtonInput))
                    (do
                    (:jm_release (this :f_releaseHelper) _touchButtonInput _deviceId)
                    (set (this :f_lastPressedTouchButtonInput) _touchButtonInput)
                    (:jm_add (this :f_currentlyPressedTouchButtonSingleton) _touchButtonInput)
                    (set _gameKeyEvent (:jm_getGameKeyEvent _touchButtonInput))
                    (:jm_fireEvent (this :f_downGameKeyEventHandler) _gameKeyEvent)
                    (JR/className (:jm_getInstanceForDevice (this :f_downGameKeyEventHandler) _deviceId))))
                (return jreturn true))))
                (do (set _index (JR/i32 (- _index 1))))))
        (return jreturn false))))

(set jproto @{:jm_processRelease jm_processRelease :jm_releaseTouchButtonInput jm_releaseTouchButtonInput :jm_pressTouchButtonInput jm_pressTouchButtonInput})


