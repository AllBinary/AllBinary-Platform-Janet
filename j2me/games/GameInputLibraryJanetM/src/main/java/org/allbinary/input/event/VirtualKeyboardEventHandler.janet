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
# package org.allbinary.input.event

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- BooleanFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/java/bool/BooleanFactory" "jm_getInstance" args))
(import ../../../../org/allbinary/logic/util/event/handler/BasicEventHandler :as BasicEventHandler)
(import ../../../../java/lang/Thread :as Thread)
(defn- VirtualKeyboardEvent/jnew_1 [& args] (JR/call jfile "./VirtualKeyboardEvent" "jnew_1" args))

# Java class VirtualKeyboardEventHandler
(var jproto nil)
(var jcell_gameKeyEventHandler :jnone)
(var jstatic_gameKeyEventHandler nil)
(var jsetstatic_gameKeyEventHandler nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_process nil)
(var jm_open nil)
(var jm_close nil)

(set jstatic_gameKeyEventHandler (fn jstatic_gameKeyEventHandler []
  (when (= jcell_gameKeyEventHandler :jnone) (set jcell_gameKeyEventHandler (jnew_0)))
  jcell_gameKeyEventHandler))
(set jsetstatic_gameKeyEventHandler (fn jsetstatic_gameKeyEventHandler [value] (set jcell_gameKeyEventHandler value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "VirtualKeyboardEventHandler" :f_SHOW_EVENT nil :f_HIDE_EVENT nil} jproto))
    (put this :f_SHOW_EVENT (VirtualKeyboardEvent/jnew_1 ((BooleanFactory/jm_getInstance) :f_TRUE)))
    (put this :f_HIDE_EVENT (VirtualKeyboardEvent/jnew_1 ((BooleanFactory/jm_getInstance) :f_FALSE)))
    (JR/superInit this (BasicEventHandler/jnew_0))
    this))
    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_gameKeyEventHandler)))))
    
(set jm_process (fn jm_process [this _eventObject _eventListenerInterface]
        (var _virtualKeyboardEventListenerInterface _eventListenerInterface)
        (:jm_onVirtualKeyboardEvent _virtualKeyboardEventListenerInterface _eventObject)))
    
(set jm_open (fn jm_open [this]
        (try
            (do
            (Thread/jm_sleep 120)
            (:jm_fireEvent this (this :f_SHOW_EVENT)))
            ([_e] (do
            (JR/className (this :f_logUtil)))))))
    
(set jm_close (fn jm_close [this]
        (try
            (do
            (Thread/jm_sleep 120)
            (:jm_fireEvent this (this :f_HIDE_EVENT)))
            ([_e] (do
            (JR/className (this :f_logUtil)))))))

(set jproto (table/setproto @{:jm_process jm_process :jm_open jm_open :jm_close jm_close} BasicEventHandler/jproto))


