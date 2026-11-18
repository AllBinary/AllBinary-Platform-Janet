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
# package org.allbinary.business.init

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- DebugFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/debug/DebugFactory" "jm_getInstance" args))
(defn- NoDebug/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/debug/NoDebug" "jm_getInstance" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))

# Java class LicenseInitInfo
(var jproto nil)
(var jnew_0 nil)
(var jm_getLicenseId nil)
(var jm_getServer nil)
(var jm_getNumberOfServers nil)
(var jm_setLicenseId nil)
(var jm_clearServers nil)
(var jm_setServer nil)
(var jm_addServer nil)
(var jm_getServerList nil)
(var jm_setServerList nil)

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "LicenseInitInfo" :f_id nil :f_serverVector nil} jproto))
    (put this :f_id ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
    (put this :f_serverVector (BasicArrayListD/jnew_0))
    this))
    
(set jm_getLicenseId (fn jm_getLicenseId [this]
    (label jreturn
        (return jreturn (this :f_id)))))
    
(set jm_getServer (fn jm_getServer [this _index]
    (label jreturn
        (return jreturn (((this :f_serverVector) :f_objectArray) _index)))))
    
(set jm_getNumberOfServers (fn jm_getNumberOfServers [this]
    (label jreturn
        (return jreturn (:jm_size (this :f_serverVector))))))
    
(set jm_setLicenseId (fn jm_setLicenseId [this _value]
        (set (this :f_id) _value)))
    
(set jm_clearServers (fn jm_clearServers [this]
        (set (this :f_serverVector) (BasicArrayListD/jnew_0))))
    
(set jm_setServer (fn jm_setServer [this _value _index]
        (:jm_addAt (this :f_serverVector) _index _value)))
    
(set jm_addServer (fn jm_addServer [this _value]
        (:jm_add (this :f_serverVector) _value)))
    
(set jm_getServerList (fn jm_getServerList [this]
    (label jreturn
        (return jreturn (this :f_serverVector)))))
    
(set jm_setServerList (fn jm_setServerList [this _servers]
        (if (= (DebugFactory/jm_getInstance) (NoDebug/jm_getInstance))
            (do
            (set (this :f_serverVector) _servers)))))

(set jproto @{:jm_getLicenseId jm_getLicenseId :jm_getServer jm_getServer :jm_getNumberOfServers jm_getNumberOfServers :jm_setLicenseId jm_setLicenseId :jm_clearServers jm_clearServers :jm_setServer jm_setServer :jm_addServer jm_addServer :jm_getServerList jm_getServerList :jm_setServerList jm_setServerList})


