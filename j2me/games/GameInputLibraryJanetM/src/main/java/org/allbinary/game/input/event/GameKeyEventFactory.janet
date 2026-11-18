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
# package org.allbinary.game.input.event

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- InputFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/InputFactory" "jm_getInstance" args))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- GameKeyEvent/jm_createEvent [& args] (JR/call jfile "./GameKeyEvent" "jm_createEvent" args))

# Java class GameKeyEventFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_init nil)
(var jm_getInstanceForKey nil)
(var jm_getInstanceForInput nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (if (= (jstatic_instance) ((NullUtil/jm_getInstance) :f_NULL_OBJECT))
            (do
            (set jcell_instance (jnew_0))))
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameKeyEventFactory" :f_logUtil nil :f_TOUCH_BUTTON_SOURCE_ID 0 :f_MOTION_GESTURE_SOURCE_ID 0 :f_MAX_SOURCES 0 :f_ARRAY nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_TOUCH_BUTTON_SOURCE_ID 2)
    (put this :f_MOTION_GESTURE_SOURCE_ID 3)
    (put this :f_MAX_SOURCES 4)
    (put this :f_ARRAY (seq [jindex1 :range [0 (this :f_MAX_SOURCES)]] (array/new-filled ((InputFactory/jm_getInstance) :f_MAX) nil)))
    this))
    
(set jm_init (fn jm_init [this]
        (var _nullUtil (NullUtil/jm_getInstance))
        (var _size ((InputFactory/jm_getInstance) :f_MAX))
        (do
            (var _index (this :f_MAX_SOURCES))
            (while (>= (set _index (JR/i32 (- _index 1))) 0)
                (do
            (do
                (var _index2 _size)
                (while (>= (set _index2 (JR/i32 (- _index2 1))) 0)
                    (do
                (set (((this :f_ARRAY) _index) _index2) (GameKeyEvent/jm_createEvent (_nullUtil :f_NULL_OBJECT) _index _index2))))))))))
    
(set jm_getInstanceForKey (fn jm_getInstanceForKey [this _anyType _key]
    (label jreturn
        (var _gameKeyEvent (((this :f_ARRAY) (:jm_getSourceId _anyType)) _key))
        (return jreturn _gameKeyEvent))))
    
(set jm_getInstanceForInput (fn jm_getInstanceForInput [this _anyType _input]
    (label jreturn
        (var _gameKeyEvent (((this :f_ARRAY) (:jm_getSourceId _anyType)) (:jm_getId _input)))
        (return jreturn _gameKeyEvent))))

(set jproto @{:jm_init jm_init :jm_getInstanceForKey jm_getInstanceForKey :jm_getInstanceForInput jm_getInstanceForInput})


