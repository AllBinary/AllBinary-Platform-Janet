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
(import ../../../../../../org/allbinary/game/input/CompleteMotionGestureInputEvent :as CompleteMotionGestureInputEvent)
(defn- GameKey/jstatic_NULL_GAME_KEY [& args] (JR/call jfile "../../../../../../org/allbinary/game/input/GameKey" "jstatic_NULL_GAME_KEY" args))
(defn- GameKeyEvent/jstatic_NONE [& args] (JR/call jfile "../../../../../../org/allbinary/game/input/event/GameKeyEvent" "jstatic_NONE" args))
(defn- GameKeyEventFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/game/input/event/GameKeyEventFactory" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- GameKeyCompleteMotionGestureInputEventFactory/jm_getInstance [& args] (JR/call jfile "./GameKeyCompleteMotionGestureInputEventFactory" "jm_getInstance" args))

# Java class GameKeyCompleteMotionGestureInputEvent
(var jproto nil)
(var jnew_3 nil)
(var jm_getSourceId nil)
(var jm_update nil)
(var jm_setGameKeyEvent nil)
(var jm_getGameKeyEvent nil)
(var jm_setGameKey nil)
(var jm_getGameKey nil)

    
(set jnew_3 (fn jnew_3 [_name _motionGestureInput _inputToGameKeyMapping]
    (var this (table/setproto @{:jclass "GameKeyCompleteMotionGestureInputEvent" :f_gameKeyEventFactory nil :f_SOURCE_ID 0 :f_gameKey nil :f_gameKeyEvent nil :f_inputToGameKeyMapping nil} jproto))
    (put this :f_gameKeyEventFactory (GameKeyEventFactory/jm_getInstance))
    (put this :f_SOURCE_ID ((this :f_gameKeyEventFactory) :f_MOTION_GESTURE_SOURCE_ID))
    (put this :f_gameKey (GameKey/jstatic_NULL_GAME_KEY))
    (put this :f_gameKeyEvent (GameKeyEvent/jstatic_NONE))
    
        (JR/superInit this (CompleteMotionGestureInputEvent/jnew_2 _name _motionGestureInput))
        (set (this :f_inputToGameKeyMapping) _inputToGameKeyMapping)
        (:jm_add (GameKeyCompleteMotionGestureInputEventFactory/jm_getInstance) this)
        (:jm_update this)
    this))
    
(set jm_getSourceId (fn jm_getSourceId [this]
    (label jreturn
        (return jreturn (this :f_SOURCE_ID)))))
    
(set jm_update (fn jm_update [this]
        (try
            (do
            (:jm_setGameKey this (:jm_getInstance (this :f_inputToGameKeyMapping) (JR/className (:jm_getMotionGestureInput this))))
            (:jm_setGameKeyEvent this (:jm_getInstanceForInput (this :f_gameKeyEventFactory) this (:jm_getGameKey this))))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (JR/className (this :f_logUtil)))))))
    
(set jm_setGameKeyEvent (fn jm_setGameKeyEvent [this _gameKeyEvent]
        (set (this :f_gameKeyEvent) _gameKeyEvent)))
    
(set jm_getGameKeyEvent (fn jm_getGameKeyEvent [this]
    (label jreturn
        (return jreturn (this :f_gameKeyEvent)))))
    
(set jm_setGameKey (fn jm_setGameKey [this _gameKey]
        (set (this :f_gameKey) _gameKey)))
    
(set jm_getGameKey (fn jm_getGameKey [this]
    (label jreturn
        (return jreturn (this :f_gameKey)))))

(set jproto (table/setproto @{:jm_getSourceId jm_getSourceId :jm_update jm_update :jm_setGameKeyEvent jm_setGameKeyEvent :jm_getGameKeyEvent jm_getGameKeyEvent :jm_setGameKey jm_setGameKey :jm_getGameKey jm_getGameKey} CompleteMotionGestureInputEvent/jproto))


