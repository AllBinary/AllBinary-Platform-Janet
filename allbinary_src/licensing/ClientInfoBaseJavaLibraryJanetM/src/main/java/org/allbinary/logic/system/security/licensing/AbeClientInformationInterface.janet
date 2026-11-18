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

# Java class AbeClientInformationInterface
(var jproto nil)
(var jnew_0 nil)
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
(var jm_isHardSale nil)
(var jm_toShortString nil)

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "AbeClientInformationInterface"} jproto))
    this))

    
(set jm_init (fn jm_init [this]
    (error (JR/newException "AbstractMethodError" "init"))))
    
(set jm_getOperatingSystemInterface (fn jm_getOperatingSystemInterface [this]
    (error (JR/newException "AbstractMethodError" "getOperatingSystemInterface"))))
    
(set jm_getName (fn jm_getName [this]
    (error (JR/newException "AbstractMethodError" "getName"))))
    
(set jm_getSpecialName (fn jm_getSpecialName [this]
    (error (JR/newException "AbstractMethodError" "getSpecialName"))))
    
(set jm_getVersion (fn jm_getVersion [this]
    (error (JR/newException "AbstractMethodError" "getVersion"))))
    
(set jm_getLicenseId (fn jm_getLicenseId [this]
    (error (JR/newException "AbstractMethodError" "getLicenseId"))))
    
(set jm_getLicenseServers (fn jm_getLicenseServers [this]
    (error (JR/newException "AbstractMethodError" "getLicenseServers"))))
    
(set jm_getLicenseServer (fn jm_getLicenseServer [this _index]
    (error (JR/newException "AbstractMethodError" "getLicenseServer"))))
    
(set jm_getNumberOfLicenseServers (fn jm_getNumberOfLicenseServers [this]
    (error (JR/newException "AbstractMethodError" "getNumberOfLicenseServers"))))
    
(set jm_toHashtable (fn jm_toHashtable [this]
    (error (JR/newException "AbstractMethodError" "toHashtable"))))
    
(set jm_isSameId (fn jm_isSameId [this _alicenseId]
    (error (JR/newException "AbstractMethodError" "isSameId"))))
    
(set jm_isLargerOrDifferentServerList (fn jm_isLargerOrDifferentServerList [this _vector]
    (error (JR/newException "AbstractMethodError" "isLargerOrDifferentServerList"))))
    
(set jm_isHardSale (fn jm_isHardSale [this]
    (error (JR/newException "AbstractMethodError" "isHardSale"))))
    
(set jm_toShortString (fn jm_toShortString [this]
    (error (JR/newException "AbstractMethodError" "toShortString"))))

(set jproto @{:jm_init jm_init :jm_getOperatingSystemInterface jm_getOperatingSystemInterface :jm_getName jm_getName :jm_getSpecialName jm_getSpecialName :jm_getVersion jm_getVersion :jm_getLicenseId jm_getLicenseId :jm_getLicenseServers jm_getLicenseServers :jm_getLicenseServer jm_getLicenseServer :jm_getNumberOfLicenseServers jm_getNumberOfLicenseServers :jm_toHashtable jm_toHashtable :jm_isSameId jm_isSameId :jm_isLargerOrDifferentServerList jm_isLargerOrDifferentServerList :jm_isHardSale jm_isHardSale :jm_toShortString jm_toShortString})


