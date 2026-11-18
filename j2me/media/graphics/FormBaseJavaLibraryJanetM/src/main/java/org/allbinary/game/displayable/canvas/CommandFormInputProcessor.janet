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
(defn- Canvas/jstatic_LEFT [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Canvas" "jstatic_LEFT" args))
(defn- Canvas/jstatic_RIGHT [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Canvas" "jstatic_RIGHT" args))
(defn- Canvas/jstatic_UP [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Canvas" "jstatic_UP" args))
(defn- Canvas/jstatic_DOWN [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Canvas" "jstatic_DOWN" args))
(defn- Canvas/jstatic_FIRE [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/Canvas" "jstatic_FIRE" args))
(defn- GameCommandsFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/commands/GameCommandsFactory" "jm_getInstance" args))
(defn- Features/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/configuration/feature/Features" "jm_getInstance" args))
(defn- InputFeatureFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/configuration/feature/InputFeatureFactory" "jm_getInstance" args))
(defn- GameKeyEventFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/event/GameKeyEventFactory" "jm_getInstance" args))
(defn- SWTUtil/jstatic_isSWT [& args] (JR/call jfile "../../../../../org/allbinary/game/layer/SWTUtil" "jstatic_isSWT" args))
(defn- OpenGLFeatureFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory" "jm_getInstance" args))
(defn- TouchMotionGestureFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/input/motion/gesture/TouchMotionGestureFactory" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- PrimaryPlayerQueueFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/media/audio/PrimaryPlayerQueueFactory" "jm_getInstance" args))
(defn- SelectSound/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/media/audio/SelectSound" "jm_getInstance" args))
(defn- PrimaryThreadPool/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/thread/PrimaryThreadPool" "jm_getInstance" args))
(defn- TimeDelayHelper/jnew_1 [& args] (JR/call jfile "../../../../../org/allbinary/time/TimeDelayHelper" "jnew_1" args))
(import ./BasicMenuInputProcessor :as BasicMenuInputProcessor)
(defn- CommandRunnable/jnew_2 [& args] (JR/call jfile "./CommandRunnable" "jnew_2" args))

#In general allow scrolling of the menu and selection the center item
# Java class CommandFormInputProcessor
(var jproto nil)
(var jnew_4 nil)
(var jm_processInput nil)
(var jm_processCommand nil)
(var jm_processInputList nil)
(var jm_processMotionInputs nil)
(var jm_processMotionInput nil)
(var jm_toString nil)

    
(set jnew_4 (fn jnew_4 [_gameKeyEventList _playerInputId _gameCanvas _form]
    (var this (table/setproto @{:jclass "CommandFormInputProcessor" :f_MOTION_GESTURE_SOURCE_ID 0 :f_CLICK_DELAY 0 :f_clickTimeHelper nil :f_DOUBLE_CLICK_DELAY 0 :f_doubleClickTimeHelper nil :f_isSingleKeyProcessing false :f_form nil :f_hasPressed false :f_PROCESS_COMMAND nil :f_NAME_LABEL nil} jproto))
    (put this :f_MOTION_GESTURE_SOURCE_ID ((GameKeyEventFactory/jm_getInstance) :f_MOTION_GESTURE_SOURCE_ID))
    (put this :f_CLICK_DELAY 150)
    (put this :f_clickTimeHelper (TimeDelayHelper/jnew_1 (this :f_CLICK_DELAY)))
    (put this :f_DOUBLE_CLICK_DELAY 1200)
    (put this :f_doubleClickTimeHelper (TimeDelayHelper/jnew_1 (this :f_DOUBLE_CLICK_DELAY)))
    (put this :f_isSingleKeyProcessing (:jm_isSingleKeyProcessing (InputFeatureFactory/jm_getInstance)))
    
    (put this :f_hasPressed false)
    (put this :f_PROCESS_COMMAND "processCommand")
    (put this :f_NAME_LABEL " ScrollSelectionForm: ")
        (JR/superInit this (BasicMenuInputProcessor/jnew_3 _gameKeyEventList _playerInputId _gameCanvas))
        (set (this :f_form) _form)
    this))
    
(set jm_processInput (fn jm_processInput [this _key]
    (label jreturn
        (if (or (or (or (= _key (Canvas/jstatic_LEFT)) (= _key (Canvas/jstatic_RIGHT))) (= _key (Canvas/jstatic_UP))) (= _key (Canvas/jstatic_DOWN)))
            (do
            (:jm_add (PrimaryPlayerQueueFactory/jm_getInstance) (SelectSound/jm_getInstance))
            (:jm_processInputKey (this :f_form) _key)
            (return jreturn 1))
            (if (= _key (Canvas/jstatic_FIRE))
            (do
            (:jm_add (PrimaryPlayerQueueFactory/jm_getInstance) (SelectSound/jm_getInstance))
            (return jreturn (:jm_processCommand this)))))
        (return jreturn 0))))
    
(set jm_processCommand (fn jm_processCommand [this]
    (label jreturn
        (var _commandCurrentSelectionForm (this :f_form))
        (var _command (:jm_getSelectedCommand _commandCurrentSelectionForm))
        (JR/className (this :f_logUtil))
        (var _features (Features/jm_getInstance))
        (var _openGLFeatureFactory (OpenGLFeatureFactory/jm_getInstance))
        (if (and (and (SWTUtil/jstatic_isSWT) (:jm_isFeature _features (_openGLFeatureFactory :f_OPENGL))) (not= _command ((GameCommandsFactory/jm_getInstance) :f_EXIT_COMMAND)))
            (do
            (:jm_run (CommandRunnable/jnew_2 this _command)))
            (do
            (:jm_runTask (PrimaryThreadPool/jm_getInstance) (CommandRunnable/jnew_2 this _command))))
        (if (= _command ((GameCommandsFactory/jm_getInstance) :f_QUIT_COMMAND))
            (do
            (return jreturn (JR/i32 (- 1))))
            (do
            (return jreturn 1))))))
    
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
                (set _key (:jm_getKey _gameKeyEvent))
                (if (not= (:jm_getSourceId _gameKeyEvent) (this :f_MOTION_GESTURE_SOURCE_ID))
                    (do
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
        (var _touchMotionGestureFactory (TouchMotionGestureFactory/jm_getInstance))
        (var _motionGestureInput (:jm_getMotionGesture _motionGestureEvent))
        (if (= _motionGestureInput (_touchMotionGestureFactory :f_RELEASED))
            (do
            (var _point (:jm_getCurrentPoint _motionGestureEvent))
            (if (:jm_isInForm (this :f_form) _point)
                (do
                (var _index (:jm_getSelectedIndexForPoint (this :f_form) _point))
                (if (not= _index (JR/i32 (- 1)))
                    (do
                    (:jm_add (PrimaryPlayerQueueFactory/jm_getInstance) (SelectSound/jm_getInstance))
                    (if (= _index (:jm_getSelectedIndex (this :f_form)))
                        (do
                        (if (:jm_isTimeTNT (this :f_clickTimeHelper))
                            (do
                            (:jm_processCommand this))))
                        (do
                        (:jm_setSelectedIndex (this :f_form) _index))))
                    (do
                    nil))))
            (if (this :f_hasPressed)
                (do
                (if (not (:jm_isTimeTNT (this :f_doubleClickTimeHelper)))
                    (do
                    (JR/className (this :f_logUtil))
                    (:jm_processCommand this)))
                (set ((this :f_doubleClickTimeHelper) :f_delay) (this :f_DOUBLE_CLICK_DELAY))
                (:jm_setStartTimeTNT (this :f_doubleClickTimeHelper))))
            (set (this :f_hasPressed) false))
            (if (= _motionGestureInput (_touchMotionGestureFactory :f_PRESSED))
            (do
            (set ((this :f_doubleClickTimeHelper) :f_delay) 0)
            (set (this :f_hasPressed) true))))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (return jreturn (:jm_toString (:jm_append (:jm_append (:jm_append (StringMaker/jnew_0) ((get BasicMenuInputProcessor/jproto :jm_toString) this)) (this :f_NAME_LABEL)) (:jm_toString (this :f_form))))))))

(set jproto (table/setproto @{:jm_processInput jm_processInput :jm_processCommand jm_processCommand :jm_processInputList jm_processInputList :jm_processMotionInputs jm_processMotionInputs :jm_processMotionInput jm_processMotionInput :jm_toString jm_toString} BasicMenuInputProcessor/jproto))


