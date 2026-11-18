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
(import ./ReleaseHelper :as ReleaseHelper)
(defn- CancelTouchButtonInputFactory/jm_getInstance [& args] (JR/call jfile "./CancelTouchButtonInputFactory" "jm_getInstance" args))

# Java class MultitouchReleaseHelper
(var jproto nil)
(var jnew_1 nil)
(var jm_release nil)

    
(set jnew_1 (fn jnew_1 [_touchButtonRecognizer]
    (var this (table/setproto @{:jclass "MultitouchReleaseHelper"} jproto))
        (JR/superInit this (ReleaseHelper/jnew_1 _touchButtonRecognizer))
    this))
    
(set jm_release (fn jm_release [this _touchButtonInput _deviceId]
        (var _cancelTouchButtonInput (:jm_getCancel (CancelTouchButtonInputFactory/jm_getInstance) _touchButtonInput))
        (var _nextTouchButtonInput nil)
        (var _gameKeyEvent nil)
        (do
            (var _index (JR/i32 (- (JR/className ((this :f_touchButtonRecognizer) :f_currentlyPressedTouchButtonSingleton)) 1)))
            (while (>= _index 0)
                (do
            (set _nextTouchButtonInput (JR/className ((this :f_touchButtonRecognizer) :f_currentlyPressedTouchButtonSingleton)))
            (if (= _cancelTouchButtonInput _nextTouchButtonInput)
                (do
                (set _gameKeyEvent (:jm_getGameKeyEvent _nextTouchButtonInput))
                (JR/className ((this :f_touchButtonRecognizer) :f_upGameKeyEventHandler))
                (JR/className (JR/className ((this :f_touchButtonRecognizer) :f_upGameKeyEventHandler)))
                (JR/className ((this :f_touchButtonRecognizer) :f_currentlyPressedTouchButtonSingleton)))))
                (do (set _index (JR/i32 (- _index 1))))))))

(set jproto (table/setproto @{:jm_release jm_release} ReleaseHelper/jproto))


