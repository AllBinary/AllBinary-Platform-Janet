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
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- PressGameKeyEventHandler/jm_getInstance [& args] (JR/call jfile "./PressGameKeyEventHandler" "jm_getInstance" args))
(defn- UpGameKeyEventHandler/jm_getInstance [& args] (JR/call jfile "./UpGameKeyEventHandler" "jm_getInstance" args))
(defn- DownGameKeyEventHandler/jm_getInstance [& args] (JR/call jfile "./DownGameKeyEventHandler" "jm_getInstance" args))

# Java class GameKeyEventHandler
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_removeAllListeners nil)
(var jm_addListenerForPlayer nil)
(var jm_addListener nil)
(var jm_removeListener nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameKeyEventHandler" :f_logUtil nil :f_commonStrings nil :f_pressGameKeyEventHandler nil :f_upGameKeyEventHandler nil :f_downGameKeyEventHandler nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_pressGameKeyEventHandler (PressGameKeyEventHandler/jm_getInstance))
    (put this :f_upGameKeyEventHandler (UpGameKeyEventHandler/jm_getInstance))
    (put this :f_downGameKeyEventHandler (DownGameKeyEventHandler/jm_getInstance))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_removeAllListeners (fn jm_removeAllListeners [this]
        (:jm_removeAllListeners (this :f_pressGameKeyEventHandler))
        (:jm_removeAllListeners (this :f_upGameKeyEventHandler))
        (:jm_removeAllListeners (this :f_downGameKeyEventHandler))))
    
(set jm_addListenerForPlayer (fn jm_addListenerForPlayer [this _eventListenerInterface _playerInputId]
        (:jm_putF (this :f_logUtil) (:jm_toString _eventListenerInterface) this ((this :f_commonStrings) :f_ADD_LISTENER))
        (:jm_addListenerSingleThreaded (this :f_pressGameKeyEventHandler) _eventListenerInterface)
        (JR/className (:jm_getInstanceForPlayer (this :f_upGameKeyEventHandler) _playerInputId))
        (JR/className (:jm_getInstanceForPlayer (this :f_downGameKeyEventHandler) _playerInputId))))
    
(set jm_addListener (fn jm_addListener [this _eventListenerInterface]
        (:jm_putF (this :f_logUtil) (:jm_toString _eventListenerInterface) this ((this :f_commonStrings) :f_ADD_LISTENER))
        (:jm_addListenerSingleThreaded (this :f_pressGameKeyEventHandler) _eventListenerInterface)
        (:jm_addListenerSingleThreaded (this :f_upGameKeyEventHandler) _eventListenerInterface)
        (:jm_addListenerSingleThreaded (this :f_downGameKeyEventHandler) _eventListenerInterface)))
    
(set jm_removeListener (fn jm_removeListener [this _eventListenerInterface]
        (:jm_putF (this :f_logUtil) (:jm_toString _eventListenerInterface) this ((this :f_commonStrings) :f_REMOVE_LISTENER))
        (:jm_removeListenerSingleThreaded (this :f_pressGameKeyEventHandler) _eventListenerInterface)
        (:jm_removeListenerSingleThreaded (this :f_upGameKeyEventHandler) _eventListenerInterface)
        (:jm_removeListenerSingleThreaded (this :f_downGameKeyEventHandler) _eventListenerInterface)))

(set jproto @{:jm_removeAllListeners jm_removeAllListeners :jm_addListenerForPlayer jm_addListenerForPlayer :jm_addListener jm_addListener :jm_removeListener jm_removeListener})


