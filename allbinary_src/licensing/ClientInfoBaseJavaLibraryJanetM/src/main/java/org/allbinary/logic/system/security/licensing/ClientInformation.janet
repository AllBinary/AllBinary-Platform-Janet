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
# package org.allbinary.logic.system.security.licensing

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- TsUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/TsUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- SystemHardwareFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/system/hardware/SystemHardwareFactory" "jm_getInstance" args))
(defn- NoOperatingSystem/jstatic_NO_OPERATING_SYSTEM [& args] (JR/call jfile "../../../../../../org/allbinary/logic/system/os/NoOperatingSystem" "jstatic_NO_OPERATING_SYSTEM" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- BasicArrayListUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/util/BasicArrayListUtil" "jm_getInstance" args))
(defn- StdUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/StdUtil" "jm_getInstance" args))
(defn- AbeClientInformationData/jm_getInstance [& args] (JR/call jfile "./AbeClientInformationData" "jm_getInstance" args))

# This is the information sent to the license server
# Java class ClientInformation
(var jproto nil)
(var jnew_4 nil)
(var jm_init nil)
(var jm_getOperatingSystemInterface nil)
(var jm_getName nil)
(var jm_getSpecialName nil)
(var jm_getVersion nil)
(var jm_getLicenseId nil)
(var jm_getLicenseServers nil)
(var jm_getLicenseServer nil)
(var jm_getNumberOfLicenseServers nil)
(var jm_toHashtable nil)
(var jm_isSameId nil)
(var jm_isLargerOrDifferentServerList nil)
(var jm_setHardSale nil)
(var jm_isHardSale nil)
(var jm_setOperatingSystemInterface nil)
(var jm_setLicenseId nil)
(var jm_setLicenseServers nil)
(var jm_toShortString nil)

    
(set jnew_4 (fn jnew_4 [_name _version _specialName _shortName]
    (var this (table/setproto @{:jclass "ClientInformation" :f_operatingSystemInterface nil :f_tsUtil nil :f_name nil :f_shortName nil :f_version nil :f_specialName nil :f_hardSale false :f_licenseId nil :f_licenseServers nil} jproto))
    (put this :f_operatingSystemInterface (NoOperatingSystem/jstatic_NO_OPERATING_SYSTEM))
    (put this :f_tsUtil (TsUtil/jm_getInstance))
    
    
    
    
    (put this :f_hardSale true)
    (put this :f_licenseId ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
    (put this :f_licenseServers (:jm_getImmutableInstance (BasicArrayListUtil/jm_getInstance)))
        (set (this :f_name) _name)
        (set (this :f_version) _version)
        (set (this :f_specialName) _specialName)
        (set (this :f_shortName) (:jm_toString (:jm_append (:jm_append (:jm_append (StringMaker/jnew_0) _shortName) ((CommonSeps/jm_getInstance) :f_UNDERSCORE)) _version)))
        (:jm_init this)
    this))
    
(set jm_init (fn jm_init [this]
    nil))
    
(set jm_getOperatingSystemInterface (fn jm_getOperatingSystemInterface [this]
    (label jreturn
        (return jreturn (this :f_operatingSystemInterface)))))
    
(set jm_getName (fn jm_getName [this]
    (label jreturn
        (return jreturn (this :f_name)))))
    
(set jm_getSpecialName (fn jm_getSpecialName [this]
    (label jreturn
        (return jreturn (this :f_specialName)))))
    
(set jm_getVersion (fn jm_getVersion [this]
    (label jreturn
        (return jreturn (this :f_version)))))
    
(set jm_getLicenseId (fn jm_getLicenseId [this]
    (label jreturn
        (return jreturn (this :f_licenseId)))))
    
(set jm_getLicenseServers (fn jm_getLicenseServers [this]
    (label jreturn
        (return jreturn (this :f_licenseServers)))))
    
(set jm_getLicenseServer (fn jm_getLicenseServer [this _index]
    (label jreturn
        (return jreturn (((this :f_licenseServers) :f_objectArray) _index)))))
    
(set jm_getNumberOfLicenseServers (fn jm_getNumberOfLicenseServers [this]
    (label jreturn
        (return jreturn (:jm_size (this :f_licenseServers))))))
    
(set jm_toHashtable (fn jm_toHashtable [this]
    (label jreturn
        (var _abeClientInformationData (AbeClientInformationData/jm_getInstance))
        (var _genericOperatingSystem (:jm_getOperatingSystemInterface this))
        (var _clientInfoHashtable (:jm_createHashtable (StdUtil/jm_getInstance)))
        (:jm_put _clientInfoHashtable (_abeClientInformationData :f_NAME) (this :f_name))
        (:jm_put _clientInfoHashtable (_abeClientInformationData :f_VERSION) (this :f_version))
        (:jm_put _clientInfoHashtable (_abeClientInformationData :f_SPECIALNAME) (this :f_specialName))
        (:jm_put _clientInfoHashtable (_abeClientInformationData :f_LICENSEID) (:jm_getLicenseId this))
        (:jm_put _clientInfoHashtable (_abeClientInformationData :f_OSNAME) (:jm_getName _genericOperatingSystem))
        (:jm_put _clientInfoHashtable (_abeClientInformationData :f_OSARCH) (:jm_getArch _genericOperatingSystem))
        (:jm_put _clientInfoHashtable (_abeClientInformationData :f_OSVERSION) (:jm_getVersion _genericOperatingSystem))
        (:jm_put _clientInfoHashtable (_abeClientInformationData :f_OS) (:jm_toString _genericOperatingSystem))
        (var _hardwareInterface (:jm_getInstance (SystemHardwareFactory/jm_getInstance) _genericOperatingSystem))
        (var _hardwareString (:jm_toString _hardwareInterface))
        (:jm_put _clientInfoHashtable (_abeClientInformationData :f_HARDWARE) _hardwareString)
        (return jreturn _clientInfoHashtable))))
    
(set jm_isSameId (fn jm_isSameId [this _alicenseId]
    (label jreturn
        (if (= (:jm_compareTo (this :f_tsUtil) (:jm_getLicenseId this) _alicenseId) 0)
            (do
            (return jreturn true))
            (do
            (return jreturn false))))))
    
(set jm_isLargerOrDifferentServerList (fn jm_isLargerOrDifferentServerList [this _list]
    (label jreturn
        (var _size (JR/i32 (- (:jm_size _list) 1)))
        (var _currentSize (JR/i32 (- (:jm_size (this :f_licenseServers)) 1)))
        (if (> _size _currentSize)
            (do
            (return jreturn true)))
        (do
            (var _index _size)
            (while (>= _index 0)
                (do
            (var _newServerName ((_list :f_objectArray) _index))
            (do
                (var _index2 _currentSize)
                (while (>= _index2 0)
                    (do
                (var _nextOldServerName (((this :f_licenseServers) :f_objectArray) _index))
                (if (not= (:jm_compareTo (this :f_tsUtil) _newServerName _nextOldServerName) 0)
                    (do
                    (return jreturn true))))
                    (do (set _index2 (JR/i32 (- _index2 1)))))))
                (do (set _index (JR/i32 (- _index 1))))))
        (return jreturn false))))
    
(set jm_setHardSale (fn jm_setHardSale [this _hardSale]
        (set (this :f_hardSale) _hardSale)))
    
(set jm_isHardSale (fn jm_isHardSale [this]
    (label jreturn
        (return jreturn (this :f_hardSale)))))
    
(set jm_setOperatingSystemInterface (fn jm_setOperatingSystemInterface [this _operatingSystemInterface]
        (set (this :f_operatingSystemInterface) _operatingSystemInterface)))
    
(set jm_setLicenseId (fn jm_setLicenseId [this _licenseId]
        (set (this :f_licenseId) _licenseId)))
    
(set jm_setLicenseServers (fn jm_setLicenseServers [this _licenseServers]
        (set (this :f_licenseServers) _licenseServers)))
    
(set jm_toShortString (fn jm_toShortString [this]
    (label jreturn
        (return jreturn (this :f_shortName)))))

(set jproto @{:jm_init jm_init :jm_getOperatingSystemInterface jm_getOperatingSystemInterface :jm_getName jm_getName :jm_getSpecialName jm_getSpecialName :jm_getVersion jm_getVersion :jm_getLicenseId jm_getLicenseId :jm_getLicenseServers jm_getLicenseServers :jm_getLicenseServer jm_getLicenseServer :jm_getNumberOfLicenseServers jm_getNumberOfLicenseServers :jm_toHashtable jm_toHashtable :jm_isSameId jm_isSameId :jm_isLargerOrDifferentServerList jm_isLargerOrDifferentServerList :jm_setHardSale jm_setHardSale :jm_isHardSale jm_isHardSale :jm_setOperatingSystemInterface jm_setOperatingSystemInterface :jm_setLicenseId jm_setLicenseId :jm_setLicenseServers jm_setLicenseServers :jm_toShortString jm_toShortString})


