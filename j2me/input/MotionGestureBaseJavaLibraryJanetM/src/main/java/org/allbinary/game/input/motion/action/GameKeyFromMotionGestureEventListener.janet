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
# package org.allbinary.game.input.motion.action

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../../../org/allbinary/game/input/CompleteMotionGestureInputEventListener :as CompleteMotionGestureInputEventListener)
(defn- DownGameKeyEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/game/input/event/DownGameKeyEventHandler" "jm_getInstance" args))
(defn- GameKeyEvent/jstatic_NONE [& args] (JR/call jfile "../../../../../../org/allbinary/game/input/event/GameKeyEvent" "jstatic_NONE" args))
(defn- UpGameKeyEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/game/input/event/UpGameKeyEventHandler" "jm_getInstance" args))
(defn- ForcedLogUtil/jm_log [& args] (JR/call jfile "../../../../../../org/allbinary/logic/communication/log/ForcedLogUtil" "jm_log" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- EventStrings/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/util/event/EventStrings" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class GameKeyFromMotionGestureEventListener
(var jproto nil)
(var jnew_0 nil)
(var jm_onEvent nil)
(var jm_onCompleteMotionGestureInputEvent nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameKeyFromMotionGestureEventListener" :f_logUtil nil :f_previousGameKeyEvent nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_previousGameKeyEvent (GameKeyEvent/jstatic_NONE))
    (JR/superInit this (CompleteMotionGestureInputEventListener/jnew_0))
    this))

    
(set jm_onEvent (fn jm_onEvent [this _eventObject]
        (ForcedLogUtil/jm_log ((EventStrings/jm_getInstance) :f_PERFORMANCE_MESSAGE) this)))
    
(set jm_onCompleteMotionGestureInputEvent (fn jm_onCompleteMotionGestureInputEvent [this _completeMotionGestureInputEvent]
        (try
            (do
            (var _gameKeyCompleteMotionGestureInputEvent _completeMotionGestureInputEvent)
            (var _gameKeyEvent (:jm_getGameKeyEvent _gameKeyCompleteMotionGestureInputEvent))
            (if (not= _gameKeyEvent (this :f_previousGameKeyEvent))
                (do
                (if (not= (this :f_previousGameKeyEvent) (GameKeyEvent/jstatic_NONE))
                    (do
                    (:jm_fireEvent (UpGameKeyEventHandler/jm_getInstance) (this :f_previousGameKeyEvent))))
                (set (this :f_previousGameKeyEvent) _gameKeyEvent)
                (if (and (not (nil? _gameKeyEvent)) (not= _gameKeyEvent (GameKeyEvent/jstatic_NONE)))
                    (do
                    (:jm_fireEvent (DownGameKeyEventHandler/jm_getInstance) _gameKeyEvent))))))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this "onCompleteMotionGestureInputEvent" _e))))))

(set jproto (table/setproto @{:jm_onEvent jm_onEvent :jm_onCompleteMotionGestureInputEvent jm_onCompleteMotionGestureInputEvent} CompleteMotionGestureInputEventListener/jproto))


