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
# package org.allbinary.logic.system.hardware.linux

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- StdUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/StdUtil" "jm_getInstance" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))

# Java class LinuxHardware
(var jproto nil)
(var jnew_0 nil)
(var jm_getMultimedia nil)
(var jm_getBridge nil)
(var jm_getCpu nil)
(var jm_getEthernet nil)
(var jm_getFireWire nil)
(var jm_getHardDriveController nil)
(var jm_getHardDrive nil)
(var jm_getMachineAccessControlAddress nil)
(var jm_getMonitor nil)
(var jm_getUsb nil)
(var jm_getVideo nil)
(var jm_getComponent nil)
(var jm_toString nil)
(var jm_compareTo nil)
(var jm_difference nil)
(var jm_isNextHardware nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "LinuxHardware"} jproto))
    this))
    
(set jm_getMultimedia (fn jm_getMultimedia [this _index]
        (error (JR/newException "RuntimeException"))))
    
(set jm_getBridge (fn jm_getBridge [this _index]
        (error (JR/newException "RuntimeException"))))
    
(set jm_getCpu (fn jm_getCpu [this _index]
        (error (JR/newException "RuntimeException"))))
    
(set jm_getEthernet (fn jm_getEthernet [this _index]
        (error (JR/newException "RuntimeException"))))
    
(set jm_getFireWire (fn jm_getFireWire [this _index]
        (error (JR/newException "RuntimeException"))))
    
(set jm_getHardDriveController (fn jm_getHardDriveController [this _index]
        (error (JR/newException "RuntimeException"))))
    
(set jm_getHardDrive (fn jm_getHardDrive [this _index]
        (error (JR/newException "RuntimeException"))))
    
(set jm_getMachineAccessControlAddress (fn jm_getMachineAccessControlAddress [this _index]
        (error (JR/newException "RuntimeException"))))
    
(set jm_getMonitor (fn jm_getMonitor [this _index]
        (error (JR/newException "RuntimeException"))))
    
(set jm_getUsb (fn jm_getUsb [this _index]
        (error (JR/newException "RuntimeException"))))
    
(set jm_getVideo (fn jm_getVideo [this _index]
        (error (JR/newException "RuntimeException"))))
    
(set jm_getComponent (fn jm_getComponent [this _index]
        (error (JR/newException "RuntimeException"))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (return jreturn ((StringUtil/jm_getInstance) :f_EMPTY_STRING)))))
    
(set jm_compareTo (fn jm_compareTo [this _hardwareInterface]
    (label jreturn
        (return jreturn true))))
    
(set jm_difference (fn jm_difference [this _hardwareInterface]
    (label jreturn
        (return jreturn ((StdUtil/jm_getInstance) :f_NULL_TABLE)))))
    
(set jm_isNextHardware (fn jm_isNextHardware [this _nextLine]
    (label jreturn
        (return jreturn false))))

(set jproto @{:jm_getMultimedia jm_getMultimedia :jm_getBridge jm_getBridge :jm_getCpu jm_getCpu :jm_getEthernet jm_getEthernet :jm_getFireWire jm_getFireWire :jm_getHardDriveController jm_getHardDriveController :jm_getHardDrive jm_getHardDrive :jm_getMachineAccessControlAddress jm_getMachineAccessControlAddress :jm_getMonitor jm_getMonitor :jm_getUsb jm_getUsb :jm_getVideo jm_getVideo :jm_getComponent jm_getComponent :jm_toString jm_toString :jm_compareTo jm_compareTo :jm_difference jm_difference :jm_isNextHardware jm_isNextHardware})


