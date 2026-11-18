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
(defn- TimeDelayHelper/jnew_1 [& args] (JR/call jfile "../../../../../org/allbinary/time/TimeDelayHelper" "jnew_1" args))
(import ./CommandFormInputProcessor :as CommandFormInputProcessor)

# Java class ImmediateCommandFormInputProcessor
(var jproto nil)
(var jnew_4 nil)
(var jm_onPressGameKeyEvent nil)
(var jm_onDownGameKeyEvent nil)
(var jm_onUpGameKeyEvent nil)
(var jm_onMotionGestureEvent nil)

    
(set jnew_4 (fn jnew_4 [_gameKeyEventList _playerInputId _gameCommandCanvas _form]
    (var this (table/setproto @{:jclass "ImmediateCommandFormInputProcessor" :f_timeHelper nil :f_gameCommandCanvas nil} jproto))
    (put this :f_timeHelper (TimeDelayHelper/jnew_1 25))
    
        (JR/superInit this (CommandFormInputProcessor/jnew_4 _gameKeyEventList _playerInputId _gameCommandCanvas _form))
        (set (this :f_gameCommandCanvas) _gameCommandCanvas)
    this))
    
(set jm_onPressGameKeyEvent (fn jm_onPressGameKeyEvent [this _gameKeyEvent]
        (try
            (do
            ((get CommandFormInputProcessor/jproto :jm_onPressGameKeyEvent) this _gameKeyEvent)
            (if (:jm_isTimeTNT (this :f_timeHelper))
                (do
                (:jm_processInputList this)
                (JR/className ((this :f_gameCommandCanvas) :f_repaintBehavior)))))
            ([_e] (do
            (JR/className (this :f_logUtil)))))))
    
(set jm_onDownGameKeyEvent (fn jm_onDownGameKeyEvent [this _gameKeyEvent]
        (try
            (do
            ((get CommandFormInputProcessor/jproto :jm_onDownGameKeyEvent) this _gameKeyEvent)
            (if (:jm_isTimeTNT (this :f_timeHelper))
                (do
                (:jm_processInputList this)
                (JR/className ((this :f_gameCommandCanvas) :f_repaintBehavior)))))
            ([_e] (do
            (JR/className (this :f_logUtil)))))))
    
(set jm_onUpGameKeyEvent (fn jm_onUpGameKeyEvent [this _gameKeyEvent]
        (try
            (do
            ((get CommandFormInputProcessor/jproto :jm_onUpGameKeyEvent) this _gameKeyEvent)
            (if (:jm_isTimeTNT (this :f_timeHelper))
                (do
                (:jm_processInputList this)
                (JR/className ((this :f_gameCommandCanvas) :f_repaintBehavior)))))
            ([_e] (do
            (JR/className (this :f_logUtil)))))))
    
(set jm_onMotionGestureEvent (fn jm_onMotionGestureEvent [this _motionGestureEvent]
        (try
            (do
            ((get CommandFormInputProcessor/jproto :jm_onMotionGestureEvent) this _motionGestureEvent)
            (if (:jm_isTimeTNT (this :f_timeHelper))
                (do
                (:jm_processInputList this)
                (JR/className ((this :f_gameCommandCanvas) :f_repaintBehavior)))))
            ([_e] (do
            (JR/className (this :f_logUtil)))))))

(set jproto (table/setproto @{:jm_onPressGameKeyEvent jm_onPressGameKeyEvent :jm_onDownGameKeyEvent jm_onDownGameKeyEvent :jm_onUpGameKeyEvent jm_onUpGameKeyEvent :jm_onMotionGestureEvent jm_onMotionGestureEvent} CommandFormInputProcessor/jproto))


