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
# package org.allbinary.game.input

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- AnalogLocationInputFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/input/analog/AnalogLocationInputFactory" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))

# Java class LocalPlayerInputIdFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getDeviceId nil)
(var jm_getPlayerForDevice nil)
(var jm_getTotalDevicesInPlay nil)
(var jm_isPlayerInPlay nil)
(var jm_setPlayerInPlay nil)
(var jm_setPlayerOutOfPlay nil)
(var jm_getPlayersInPlay nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "LocalPlayerInputIdFactory" :f_logUtil nil :f_MAX_NUMBER_OF_PLAYERS 0 :f_MAX_FAST_DEVICEID 0 :f_deviceIdToplayerId nil :f_playerIdToDeviceId nil :f_playersInPlay nil :f_totalDevicesMapped 0} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_MAX_NUMBER_OF_PLAYERS 6)
    (put this :f_MAX_FAST_DEVICEID 65)
    (put this :f_deviceIdToplayerId (array/new-filled (this :f_MAX_FAST_DEVICEID) 0))
    (put this :f_playerIdToDeviceId (array/new-filled (this :f_MAX_NUMBER_OF_PLAYERS) 0))
    (put this :f_playersInPlay (array/new-filled (this :f_MAX_NUMBER_OF_PLAYERS) false))
    (put this :f_totalDevicesMapped 0)
        (do
            (var _index (JR/i32 (- (length (this :f_deviceIdToplayerId)) 1)))
            (while (>= _index 0)
                (do
            (set ((this :f_deviceIdToplayerId) _index) (JR/i32 (- 1))))
                (do (set _index (JR/i32 (- _index 1))))))
    this))
    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_getDeviceId (fn jm_getDeviceId [this _playerInputId]
    (label jreturn
        (return jreturn ((this :f_playerIdToDeviceId) _playerInputId)))))
    
(set jm_getPlayerForDevice (fn jm_getPlayerForDevice [this _deviceId]
    (label jreturn
        (var _index 0)
        (if (< _deviceId (this :f_MAX_FAST_DEVICEID))
            (do
            (var _playerInputId ((this :f_deviceIdToplayerId) _deviceId))
            (if (not= _playerInputId (JR/i32 (- 1)))
                (do
                (return jreturn _playerInputId))))
            (do
            (do
                (set _index (JR/i32 (- (this :f_totalDevicesMapped) 1)))
                (while (>= _index 0)
                    (do
                (if (= ((this :f_playerIdToDeviceId) _index) _deviceId)
                    (do
                    (return jreturn _index))))
                    (do (set _index (JR/i32 (- _index 1))))))))
        (set _index (this :f_totalDevicesMapped))
        (if (< _deviceId (this :f_MAX_FAST_DEVICEID))
            (do
            (set ((this :f_deviceIdToplayerId) _deviceId) _index))
            (do
            (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_appendint (:jm_append (StringMaker/jnew_0) "Added DeviceId: ") _deviceId) " beyond fast Id list")) this "getPlayerForDevice")))
        (set ((this :f_playerIdToDeviceId) _index) _deviceId)
        (:jm_addPlayer (AnalogLocationInputFactory/jm_getInstance) (this :f_totalDevicesMapped))
        (set (this :f_totalDevicesMapped) (JR/i32 (+ (this :f_totalDevicesMapped) 1)))
        (:jm_putF (this :f_logUtil) (:jm_toString (:jm_appendint (:jm_append (:jm_appendint (:jm_append (:jm_appendint (:jm_append (StringMaker/jnew_0) "Added DeviceId: ") _deviceId) " at: ") _index) " Total: ") (this :f_totalDevicesMapped))) this "getPlayerForDevice")
        (return jreturn _index))))
    
(set jm_getTotalDevicesInPlay (fn jm_getTotalDevicesInPlay [this]
    (label jreturn
        (var _total 0)
        (do
            (var _index (JR/i32 (- (this :f_totalDevicesMapped) 1)))
            (while (>= _index 0)
                (do
            (if (= ((this :f_playersInPlay) _index) true)
                (do
                (set _total (JR/i32 (+ _total 1))))))
                (do (set _index (JR/i32 (- _index 1))))))
        (return jreturn _total))))
    
(set jm_isPlayerInPlay (fn jm_isPlayerInPlay [this _playerInputId]
    (label jreturn
        (return jreturn ((this :f_playersInPlay) _playerInputId)))))
    
(set jm_setPlayerInPlay (fn jm_setPlayerInPlay [this _playerInputId]
        (:jm_putF (this :f_logUtil) (:jm_toString (:jm_appendint (:jm_append (StringMaker/jnew_0) "Setting PlayerInPlay with playerInputId: ") _playerInputId)) this "setPlayerInPlay")
        (set ((this :f_playersInPlay) _playerInputId) true)))
    
(set jm_setPlayerOutOfPlay (fn jm_setPlayerOutOfPlay [this _playerInputId]
        (:jm_putF (this :f_logUtil) (:jm_toString (:jm_appendint (:jm_append (StringMaker/jnew_0) "Setting PlayerOutOfPlay with playerInputId: ") _playerInputId)) this "setPlayerOutOfPlay")
        (set ((this :f_playersInPlay) _playerInputId) false)))
    
(set jm_getPlayersInPlay (fn jm_getPlayersInPlay [this]
    (label jreturn
        (return jreturn (this :f_playersInPlay)))))

(set jproto @{:jm_getDeviceId jm_getDeviceId :jm_getPlayerForDevice jm_getPlayerForDevice :jm_getTotalDevicesInPlay jm_getTotalDevicesInPlay :jm_isPlayerInPlay jm_isPlayerInPlay :jm_setPlayerInPlay jm_setPlayerInPlay :jm_setPlayerOutOfPlay jm_setPlayerOutOfPlay :jm_getPlayersInPlay jm_getPlayersInPlay})


