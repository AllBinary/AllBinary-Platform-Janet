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
(defn- NullCanvas/jstatic_NULL_CANVAS [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/NullCanvas" "jstatic_NULL_CANVAS" args))
(import ../../../../../org/allbinary/game/input/PlayerGameInput :as PlayerGameInput)
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))

# Java class BasicMenuInputProcessor
(var jproto nil)
(var jnew_3 nil)
(var jm_onMotionGestureEvent nil)
(var jm_onScrolledMotionGestureEvent nil)
(var jm_setCanvas nil)
(var jm_getCanvas nil)
(var jm_processInputList nil)

    
(set jnew_3 (fn jnew_3 [_gameKeyEventList _playerInputId _gameCanvas]
    (var this (table/setproto @{:jclass "BasicMenuInputProcessor" :f_motionGestureEventList nil :f_canvas nil} jproto))
    (put this :f_motionGestureEventList (BasicArrayListD/jnew_0))
    (put this :f_canvas (NullCanvas/jstatic_NULL_CANVAS))
        (JR/superInit this (PlayerGameInput/jnew_3 _gameKeyEventList (BasicArrayListD/jnew_0) _playerInputId))
        (set (this :f_canvas) _gameCanvas)
    this))
    
(set jm_onMotionGestureEvent (fn jm_onMotionGestureEvent [this _motionGestureEvent]
        (:jm_add (this :f_motionGestureEventList) _motionGestureEvent)))
    
(set jm_onScrolledMotionGestureEvent (fn jm_onScrolledMotionGestureEvent [this _motionGestureEvent]
    nil))
    
(set jm_setCanvas (fn jm_setCanvas [this _canvas]
        (set (this :f_canvas) _canvas)))
    
(set jm_getCanvas (fn jm_getCanvas [this]
    (label jreturn
        (return jreturn (this :f_canvas)))))
    
(set jm_processInputList (fn jm_processInputList [this]
    (label jreturn
        (return jreturn (JR/i32 (- 1))))))

(set jproto (table/setproto @{:jm_onMotionGestureEvent jm_onMotionGestureEvent :jm_onScrolledMotionGestureEvent jm_onScrolledMotionGestureEvent :jm_setCanvas jm_setCanvas :jm_getCanvas jm_getCanvas :jm_processInputList jm_processInputList} PlayerGameInput/jproto))


