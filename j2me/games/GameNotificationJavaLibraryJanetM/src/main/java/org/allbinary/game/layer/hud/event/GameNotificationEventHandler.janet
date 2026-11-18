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
# package org.allbinary.game.layer.hud.event

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- NullEventListener/jstatic_NULL_EVENT_LISTENER [& args] (JR/call jfile "../../../../../../org/allbinary/logic/util/event/NullEventListener" "jstatic_NULL_EVENT_LISTENER" args))
(import ../../../../../../org/allbinary/logic/util/event/handler/BasicEventHandler :as BasicEventHandler)

# Java class GameNotificationEventHandler
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_removeAllListeners nil)
(var jm_getInstance nil)
(var jm_process nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameNotificationEventHandler" :f_enabled false} jproto))
    (put this :f_enabled true)
    (JR/superInit this (BasicEventHandler/jnew_0))
    this))
    
(set jm_removeAllListeners (fn jm_removeAllListeners [this]
        (var _eventListenerInterface (NullEventListener/jstatic_NULL_EVENT_LISTENER))
        (var _list (this :f_eventListenerInterfaceList))
        (if (> (:jm_size _list) 0)
            (do
            (set _eventListenerInterface ((_list :f_objectArray) 0))))
        ((get BasicEventHandler/jproto :jm_removeAllListeners) this)
        (if (not= _eventListenerInterface (NullEventListener/jstatic_NULL_EVENT_LISTENER))
            (do
            (:jm_addListenerInterface this _eventListenerInterface)))))
    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_process (fn jm_process [this _eventObject _eventListenerInterface]
    (label jreturn
        (if (not (this :f_enabled))
            (do
            (return jreturn)))
        (var _gameNotificationListenerInterface _eventListenerInterface)
        (:jm_onGameNotificationEvent _gameNotificationListenerInterface _eventObject))))

(set jproto (table/setproto @{:jm_removeAllListeners jm_removeAllListeners :jm_process jm_process} BasicEventHandler/jproto))


