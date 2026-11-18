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
# package org.allbinary.android.input.motion.event

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- EventStrings/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/util/event/EventStrings" "jm_getInstance" args))
(import ../../../../../../org/allbinary/logic/util/event/handler/BasicEventHandler :as BasicEventHandler)
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))

# Java class AnalogControllerConfigurationEventHandler
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_addListener nil)
(var jm_removeAllListeners nil)
(var jm_removeListener nil)
(var jm_fireEvent nil)
(var jm_process nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AnalogControllerConfigurationEventHandler" :f_list nil} jproto))
    (put this :f_list (BasicArrayListD/jnew_0))
    (JR/superInit this (BasicEventHandler/jnew_0))
    this))
    
(set jm_addListener (fn jm_addListener [this _analogControllerConfigurationEventListenerInterface]
        (if (not (:jm_contains (this :f_list) _analogControllerConfigurationEventListenerInterface))
            (do
            (:jm_add (this :f_list) _analogControllerConfigurationEventListenerInterface)))))
    
(set jm_removeAllListeners (fn jm_removeAllListeners [this]
        (:jm_clear (this :f_list))
        ((get BasicEventHandler/jproto :jm_removeAllListeners) this)))
    
(set jm_removeListener (fn jm_removeListener [this _eventListenerInterface]
        (:jm_remove (this :f_list) _eventListenerInterface)
        ((get BasicEventHandler/jproto :jm_removeListener) this _eventListenerInterface)))
    
(set jm_fireEvent (fn jm_fireEvent [this _eventObject]
        (do
            (var _index (:jm_size (this :f_list)))
            (while (>= (set _index (JR/i32 (- _index 1))) 0)
                (do
            (try
                (do
                (var _playerGameInput (((this :f_list) :f_objectArray) _index))
                (:jm_onAnalogControllerConfigurationEvent _playerGameInput _eventObject))
                ([_e] (do
                (JR/className (this :f_logUtil))))))))
        ((get BasicEventHandler/jproto :jm_fireEvent) this _eventObject)))
    
(set jm_process (fn jm_process [this _eventObject _eventListenerInterface]
        (var _analogControllerConfigurationEventListenerInterface _eventListenerInterface)
        (:jm_onAnalogControllerConfigurationEvent _analogControllerConfigurationEventListenerInterface _eventObject)))

(set jproto (table/setproto @{:jm_addListener jm_addListener :jm_removeAllListeners jm_removeAllListeners :jm_removeListener jm_removeListener :jm_fireEvent jm_fireEvent :jm_process jm_process} BasicEventHandler/jproto))


