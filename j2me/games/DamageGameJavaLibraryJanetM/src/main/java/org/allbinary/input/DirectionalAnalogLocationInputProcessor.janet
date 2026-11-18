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
# package org.allbinary.input

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../org/allbinary/android/input/motion/AnalogLocationInputProcessor :as AnalogLocationInputProcessor)
(defn- GameKeyFactory/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/game/input/GameKeyFactory" "jm_getInstance" args))
(defn- GameKeyEvent/jstatic_NONE [& args] (JR/call jfile "../../../org/allbinary/game/input/event/GameKeyEvent" "jstatic_NONE" args))
(defn- GameKeyEventFactory/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/game/input/event/GameKeyEventFactory" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class DirectionalAnalogLocationInputProcessor
(var jproto nil)
(var jnew_1 nil)
(var jm_process nil)
(var jm_getSourceId nil)

    
(set jnew_1 (fn jnew_1 [_inputProcessorArray]
    (var this (table/setproto @{:jclass "DirectionalAnalogLocationInputProcessor" :f_logUtil nil :f_inputProcessorArray nil :f_gameKeyFactory nil :f_leftGameKeyEvent nil :f_rightGameKeyEvent nil :f_upGameKeyEvent nil :f_downGameKeyEvent nil :f_leftTriggerGameKeyEvent nil :f_rightTriggerGameKeyEvent nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    
    (put this :f_gameKeyFactory (GameKeyFactory/jm_getInstance))
    (put this :f_leftGameKeyEvent (GameKeyEvent/jstatic_NONE))
    (put this :f_rightGameKeyEvent (GameKeyEvent/jstatic_NONE))
    (put this :f_upGameKeyEvent (GameKeyEvent/jstatic_NONE))
    (put this :f_downGameKeyEvent (GameKeyEvent/jstatic_NONE))
    (put this :f_leftTriggerGameKeyEvent (GameKeyEvent/jstatic_NONE))
    (put this :f_rightTriggerGameKeyEvent (GameKeyEvent/jstatic_NONE))
    (JR/superInit this (AnalogLocationInputProcessor/jnew_0))
        (set (this :f_inputProcessorArray) _inputProcessorArray)
        (try
            (do
            (set (this :f_leftGameKeyEvent) (:jm_getInstanceForInput (GameKeyEventFactory/jm_getInstance) this ((this :f_gameKeyFactory) :f_LEFT)))
            (set (this :f_rightGameKeyEvent) (:jm_getInstanceForInput (GameKeyEventFactory/jm_getInstance) this ((this :f_gameKeyFactory) :f_RIGHT)))
            (set (this :f_upGameKeyEvent) (:jm_getInstanceForInput (GameKeyEventFactory/jm_getInstance) this ((this :f_gameKeyFactory) :f_UP)))
            (set (this :f_downGameKeyEvent) (:jm_getInstanceForInput (GameKeyEventFactory/jm_getInstance) this ((this :f_gameKeyFactory) :f_DOWN)))
            (set (this :f_leftTriggerGameKeyEvent) (:jm_getInstanceForInput (GameKeyEventFactory/jm_getInstance) this ((this :f_gameKeyFactory) :f_KEY_NUM0)))
            (set (this :f_rightTriggerGameKeyEvent) (:jm_getInstanceForInput (GameKeyEventFactory/jm_getInstance) this ((this :f_gameKeyFactory) :f_KEY_NUM5))))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this (_commonStrings :f_CONSTRUCTOR) _e))))
    this))
    
(set jm_process (fn jm_process [this _allbinaryLayerManager _analogLocationInput]
        (try
            (do
            (var _customGPoint nil)
            (set _customGPoint (:jm_getCustomGPoint _analogLocationInput))
            (var _x (:jm_getX _customGPoint))
            (var _y (:jm_getY _customGPoint))
            (var _leftTrigger (:jm_getLeftTrigger _analogLocationInput))
            (var _rightTrigger (:jm_getRightTrigger _analogLocationInput))
            (if (< _x 0)
                (do
                (JR/className ((this :f_inputProcessorArray) (:jm_getKey (this :f_leftGameKeyEvent)))))
                (if (> _x 0)
                (do
                (JR/className ((this :f_inputProcessorArray) (:jm_getKey (this :f_rightGameKeyEvent)))))))
            (if (< _y 0)
                (do
                (JR/className ((this :f_inputProcessorArray) (:jm_getKey (this :f_downGameKeyEvent)))))
                (if (> _y 0)
                (do
                (JR/className ((this :f_inputProcessorArray) (:jm_getKey (this :f_upGameKeyEvent)))))))
            (if (> _leftTrigger 0)
                (do
                (JR/className ((this :f_inputProcessorArray) (:jm_getKey (this :f_leftTriggerGameKeyEvent))))))
            (if (> _rightTrigger 0)
                (do
                (JR/className ((this :f_inputProcessorArray) (:jm_getKey (this :f_rightTriggerGameKeyEvent)))))))
            ([_e] (do
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_put (this :f_logUtil) "Unable to process analog input" this (_commonStrings :f_PROCESS) _e))))))
    
(set jm_getSourceId (fn jm_getSourceId [this]
    (label jreturn
        (return jreturn 0))))

(set jproto (table/setproto @{:jm_process jm_process :jm_getSourceId jm_getSourceId} AnalogLocationInputProcessor/jproto))


