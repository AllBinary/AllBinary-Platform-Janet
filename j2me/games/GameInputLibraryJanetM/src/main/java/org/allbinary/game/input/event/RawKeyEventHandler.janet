# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- EventStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/util/event/EventStrings" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))

# Java class RawKeyEventHandler
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jcell_TOTAL_LISTENERS :jnone)
(var jstatic_TOTAL_LISTENERS nil)
(var jsetstatic_TOTAL_LISTENERS nil)
(var jcell_LISTENER_LABEL :jnone)
(var jstatic_LISTENER_LABEL nil)
(var jsetstatic_LISTENER_LABEL nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_removeAllListeners nil)
(var jm_addListeners nil)
(var jm_addListenerSingleThreaded nil)
(var jm_addListener nil)
(var jm_removeListenerSingleThreaded nil)
(var jm_removeListener nil)
(var jm_fireEvent nil)
(var jm_process nil)
(var jm_getEventListenerInterfaceListP nil)
(var jm_toString nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jstatic_TOTAL_LISTENERS (fn jstatic_TOTAL_LISTENERS []
  (when (= jcell_TOTAL_LISTENERS :jnone) (set jcell_TOTAL_LISTENERS "Total Listeners: "))
  jcell_TOTAL_LISTENERS))
(set jsetstatic_TOTAL_LISTENERS (fn jsetstatic_TOTAL_LISTENERS [value] (set jcell_TOTAL_LISTENERS value)))

(set jstatic_LISTENER_LABEL (fn jstatic_LISTENER_LABEL []
  (when (= jcell_LISTENER_LABEL :jnone) (set jcell_LISTENER_LABEL " Listener: "))
  jcell_LISTENER_LABEL))
(set jsetstatic_LISTENER_LABEL (fn jsetstatic_LISTENER_LABEL [value] (set jcell_LISTENER_LABEL value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "RawKeyEventHandler" :f_logUtil nil :f_eventListenerInterfaceList nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    
        (set (this :f_eventListenerInterfaceList) (BasicArrayListD/jnew_0))
    this))
    
(set jm_removeAllListeners (fn jm_removeAllListeners [this]
        (set (this :f_eventListenerInterfaceList) (BasicArrayListD/jnew_0))))
    
(set jm_addListeners (fn jm_addListeners [this _vector]
        (var _eventListenerInterface nil)
        (var _size (:jm_size _vector))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _eventListenerInterface (:jm_get _vector _index))
            (:jm_addListener this _eventListenerInterface))
                (do (set _index (JR/i32 (+ _index 1))))))))
    
(set jm_addListenerSingleThreaded (fn jm_addListenerSingleThreaded [this _eventListenerInterface]
        (if (not (:jm_contains (this :f_eventListenerInterfaceList) _eventListenerInterface))
            (do
            (:jm_add (this :f_eventListenerInterfaceList) _eventListenerInterface)))))
    
(set jm_addListener (fn jm_addListener [this _eventListenerInterface]
        (if (not (:jm_contains (this :f_eventListenerInterfaceList) _eventListenerInterface))
            (do
            (:jm_add (this :f_eventListenerInterfaceList) _eventListenerInterface)))))
    
(set jm_removeListenerSingleThreaded (fn jm_removeListenerSingleThreaded [this _eventListenerInterface]
        (:jm_remove (this :f_eventListenerInterfaceList) _eventListenerInterface)))
    
(set jm_removeListener (fn jm_removeListener [this _eventListenerInterface]
        (:jm_remove (this :f_eventListenerInterfaceList) _eventListenerInterface)))
    
(set jm_fireEvent (fn jm_fireEvent [this _keyCode _deviceId _repeated]
        (var _eventListenerInterface nil)
        (var _index 0)
        (do
            (while (< _index (:jm_size (this :f_eventListenerInterfaceList)))
                (do
            (try
                (do
                (set _eventListenerInterface (:jm_get (this :f_eventListenerInterfaceList) _index))
                (:jm_process this _keyCode _deviceId _repeated _eventListenerInterface))
                ([_e] (do
                (var _commonStrings (CommonStrings/jm_getInstance))
                (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this ((EventStrings/jm_getInstance) :f_FIRE_EVENT) _e))))
            (set _index (JR/i32 (+ _index 1))))))))
    
(set jm_process (fn jm_process [this _keyCode _deviceId _repeated _eventListenerInterface]
        (:jm_onEventRaw _eventListenerInterface _keyCode _deviceId _repeated)))
    
(set jm_getEventListenerInterfaceListP (fn jm_getEventListenerInterfaceListP [this]
    (label jreturn
        (return jreturn (this :f_eventListenerInterfaceList)))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer (jstatic_TOTAL_LISTENERS))
        (:jm_appendint _stringBuffer (:jm_size (this :f_eventListenerInterfaceList)))
        (var _eventListenerInterface nil)
        (var _index 0)
        (do
            (while (< _index (:jm_size (this :f_eventListenerInterfaceList)))
                (do
            (try
                (do
                (set _eventListenerInterface (:jm_get (this :f_eventListenerInterfaceList) _index))
                (:jm_append _stringBuffer (jstatic_LISTENER_LABEL))
                (:jm_append _stringBuffer (:jm_toString _eventListenerInterface)))
                ([_e] (do
                (var _commonStrings (CommonStrings/jm_getInstance))
                (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this (_commonStrings :f_TOSTRING) _e))))
            (set _index (JR/i32 (+ _index 1))))))
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto @{:jm_removeAllListeners jm_removeAllListeners :jm_addListeners jm_addListeners :jm_addListenerSingleThreaded jm_addListenerSingleThreaded :jm_addListener jm_addListener :jm_removeListenerSingleThreaded jm_removeListenerSingleThreaded :jm_removeListener jm_removeListener :jm_fireEvent jm_fireEvent :jm_process jm_process :jm_getEventListenerInterfaceListP jm_getEventListenerInterfaceListP :jm_toString jm_toString})


