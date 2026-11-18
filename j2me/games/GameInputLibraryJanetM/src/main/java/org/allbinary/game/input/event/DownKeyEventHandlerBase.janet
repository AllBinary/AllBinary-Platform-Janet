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
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- EventStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/util/event/EventStrings" "jm_getInstance" args))
(import ../../../../../org/allbinary/logic/util/event/handler/BasicEventHandler :as BasicEventHandler)
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(import ../../../../../java/lang/Integer :as Integer)

# Java class DownKeyEventHandlerBase
(var jproto nil)
(var jcell_TOTAL_LISTENERS :jnone)
(var jstatic_TOTAL_LISTENERS nil)
(var jsetstatic_TOTAL_LISTENERS nil)
(var jcell_LISTENER_LABEL :jnone)
(var jstatic_LISTENER_LABEL nil)
(var jsetstatic_LISTENER_LABEL nil)
(var jnew_0 nil)
(var jm_addListener nil)
(var jm_removeAllListeners nil)
(var jm_removeListenerSingleThreaded nil)
(var jm_removeListener nil)
(var jm_fireEventI nil)
(var jm_fireEventForGameKeyEvent nil)
(var jm_processI nil)
(var jm_processEvent nil)
(var jm_toString nil)

(set jstatic_TOTAL_LISTENERS (fn jstatic_TOTAL_LISTENERS []
  (when (= jcell_TOTAL_LISTENERS :jnone) (set jcell_TOTAL_LISTENERS " Total PlayerGameInput Listeners: "))
  jcell_TOTAL_LISTENERS))
(set jsetstatic_TOTAL_LISTENERS (fn jsetstatic_TOTAL_LISTENERS [value] (set jcell_TOTAL_LISTENERS value)))

(set jstatic_LISTENER_LABEL (fn jstatic_LISTENER_LABEL []
  (when (= jcell_LISTENER_LABEL :jnone) (set jcell_LISTENER_LABEL " PlayerGameInput Listener: "))
  jcell_LISTENER_LABEL))
(set jsetstatic_LISTENER_LABEL (fn jsetstatic_LISTENER_LABEL [value] (set jcell_LISTENER_LABEL value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "DownKeyEventHandlerBase" :f_list nil} jproto))
    (put this :f_list (BasicArrayListD/jnew_0))
    (JR/superInit this (BasicEventHandler/jnew_0))
    this))
    
(set jm_addListener (fn jm_addListener [this _playerGameInput]
        (if (not (:jm_contains (this :f_list) _playerGameInput))
            (do
            (:jm_add (this :f_list) _playerGameInput)))))
    
(set jm_removeAllListeners (fn jm_removeAllListeners [this]
        (:jm_clear (this :f_list))
        ((get BasicEventHandler/jproto :jm_removeAllListeners) this)))
    
(set jm_removeListenerSingleThreaded (fn jm_removeListenerSingleThreaded [this _eventListenerInterface]
        (:jm_remove (this :f_list) _eventListenerInterface)
        ((get BasicEventHandler/jproto :jm_removeListenerSingleThreaded) this _eventListenerInterface)))
    
(set jm_removeListener (fn jm_removeListener [this _eventListenerInterface]
        (:jm_remove (this :f_list) _eventListenerInterface)
        ((get BasicEventHandler/jproto :jm_removeListener) this _eventListenerInterface)))
    
(set jm_fireEventI (fn jm_fireEventI [this _eventObject]
        (do
            (var _index (:jm_size (this :f_list)))
            (while (>= (set _index (JR/i32 (- _index 1))) 0)
                (do
            (try
                (do
                (var _playerGameInput (((this :f_list) :f_objectArray) _index))
                (:jm_onDownKey _playerGameInput _eventObject))
                ([_e] (do
                (JR/className (this :f_logUtil))))))))
        (var _index 0)
        (var _eventListenerInterface nil)
        (do
            (while (< _index (JR/className (this :f_eventListenerInterfaceList)))
                (do
            (try
                (do
                (set _eventListenerInterface (JR/className (this :f_eventListenerInterfaceList)))
                (:jm_processI this _eventObject _eventListenerInterface))
                ([_e] (do
                (JR/className (this :f_logUtil)))))
            (set _index (JR/i32 (+ _index 1))))))))
    
(set jm_fireEventForGameKeyEvent (fn jm_fireEventForGameKeyEvent [this _eventObject]
        (var _size (:jm_size (this :f_list)))
        (do
            (var _index _size)
            (while (>= (set _index (JR/i32 (- _index 1))) 0)
                (do
            (try
                (do
                (var _playerGameInput (((this :f_list) :f_objectArray) _index))
                (:jm_onDownKeyEvent _playerGameInput _eventObject))
                ([_e] (do
                (JR/className (this :f_logUtil))))))))
        (var _index 0)
        (var _eventListenerInterface nil)
        (do
            (while (< _index (JR/className (this :f_eventListenerInterfaceList)))
                (do
            (try
                (do
                (set _eventListenerInterface (JR/className (this :f_eventListenerInterfaceList)))
                (:jm_processEvent this _eventObject _eventListenerInterface))
                ([_e] (do
                (JR/className (this :f_logUtil)))))
            (set _index (JR/i32 (+ _index 1))))))))
    
(set jm_processI (fn jm_processI [this _eventObject _eventListenerInterface]
        (var _downKeyEventListenerInterface _eventListenerInterface)
        (:jm_onDownKey _downKeyEventListenerInterface _eventObject)))
    
(set jm_processEvent (fn jm_processEvent [this _eventObject _eventListenerInterface]
        (var _downKeyEventListenerInterface _eventListenerInterface)
        (:jm_onDownKeyEvent _downKeyEventListenerInterface _eventObject)))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer ((get BasicEventHandler/jproto :jm_toString) this))
        (:jm_append _stringBuffer (jstatic_TOTAL_LISTENERS))
        (:jm_appendint _stringBuffer (:jm_size (this :f_list)))
        (var _eventListenerInterface nil)
        (do
            (var _index 0)
            (while (< _index (:jm_size (this :f_list)))
                (do
            (try
                (do
                (set _eventListenerInterface (:jm_get (this :f_list) _index))
                (:jm_append _stringBuffer (jstatic_LISTENER_LABEL))
                (:jm_append _stringBuffer (:jm_toString _eventListenerInterface)))
                ([_e] (do
                (JR/className (this :f_logUtil))))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto (table/setproto @{:jm_addListener jm_addListener :jm_removeAllListeners jm_removeAllListeners :jm_removeListenerSingleThreaded jm_removeListenerSingleThreaded :jm_removeListener jm_removeListener :jm_fireEventI jm_fireEventI :jm_fireEventForGameKeyEvent jm_fireEventForGameKeyEvent :jm_processI jm_processI :jm_processEvent jm_processEvent :jm_toString jm_toString} BasicEventHandler/jproto))


