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
(defn- LocalPlayerInputIdFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/input/LocalPlayerInputIdFactory" "jm_getInstance" args))
(import ./UpKeyEventHandlerBase :as UpKeyEventHandlerBase)

# Java class UpKeyEventHandler
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jcell_instanceArray :jnone)
(var jstatic_instanceArray nil)
(var jsetstatic_instanceArray nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getInstanceForDevice nil)
(var jm_getInstanceForPlayer nil)
(var jm_removeAllListeners nil)
(var jm_removeListenerSingleThreaded nil)
(var jm_removeListener nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jstatic_instanceArray (fn jstatic_instanceArray []
  (when (= jcell_instanceArray :jnone) (set jcell_instanceArray @[(UpKeyEventHandlerBase/jnew_0) (UpKeyEventHandlerBase/jnew_0) (UpKeyEventHandlerBase/jnew_0) (UpKeyEventHandlerBase/jnew_0) (UpKeyEventHandlerBase/jnew_0) (UpKeyEventHandlerBase/jnew_0)]))
  jcell_instanceArray))
(set jsetstatic_instanceArray (fn jsetstatic_instanceArray [value] (set jcell_instanceArray value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_getInstanceForDevice (fn jm_getInstanceForDevice [this _deviceId]
    (label jreturn
        (var _playerInputId (:jm_getPlayerForDevice (this :f_playerInputIdFactory) _deviceId))
        (return jreturn ((jstatic_instanceArray) _playerInputId)))))
    
(set jm_getInstanceForPlayer (fn jm_getInstanceForPlayer [this _playerInputId]
    (label jreturn
        (return jreturn ((jstatic_instanceArray) _playerInputId)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "UpKeyEventHandler" :f_playerInputIdFactory nil} jproto))
    (put this :f_playerInputIdFactory (LocalPlayerInputIdFactory/jm_getInstance))
    (JR/superInit this (UpKeyEventHandlerBase/jnew_0))
    this))
    
(set jm_removeAllListeners (fn jm_removeAllListeners [this]
        ((get UpKeyEventHandlerBase/jproto :jm_removeAllListeners) this)
        (do
            (var _index (JR/i32 (- (length (jstatic_instanceArray)) 1)))
            (while (>= _index 0)
                (do
            (JR/className ((jstatic_instanceArray) _index)))
                (do (set _index (JR/i32 (- _index 1))))))))
    
(set jm_removeListenerSingleThreaded (fn jm_removeListenerSingleThreaded [this _eventListenerInterface]
        ((get UpKeyEventHandlerBase/jproto :jm_removeListenerSingleThreaded) this _eventListenerInterface)
        (do
            (var _index (JR/i32 (- (length (jstatic_instanceArray)) 1)))
            (while (>= _index 0)
                (do
            (JR/className ((jstatic_instanceArray) _index)))
                (do (set _index (JR/i32 (- _index 1))))))))
    
(set jm_removeListener (fn jm_removeListener [this _eventListenerInterface]
        ((get UpKeyEventHandlerBase/jproto :jm_removeListener) this _eventListenerInterface)
        (do
            (var _index (JR/i32 (- (length (jstatic_instanceArray)) 1)))
            (while (>= _index 0)
                (do
            (JR/className ((jstatic_instanceArray) _index)))
                (do (set _index (JR/i32 (- _index 1))))))))

(set jproto (table/setproto @{:jm_getInstanceForDevice jm_getInstanceForDevice :jm_getInstanceForPlayer jm_getInstanceForPlayer :jm_removeAllListeners jm_removeAllListeners :jm_removeListenerSingleThreaded jm_removeListenerSingleThreaded :jm_removeListener jm_removeListener} UpKeyEventHandlerBase/jproto))


