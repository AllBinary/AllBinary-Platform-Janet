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
(defn- LicenseInitInfoUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/business/init/LicenseInitInfoUtil" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- PreLogUtil/jm_put [& args] (JR/call jfile "../../../../../../org/allbinary/logic/communication/log/PreLogUtil" "jm_put" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringValidationUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/string/StringValidationUtil" "jm_getInstance" args))
(defn- OperatingSystemFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/system/os/OperatingSystemFactory" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(import ./ClientInformation :as ClientInformation)

# This is the information sent to the license server
# Java class AbeClientInformation
(var jproto nil)
(var jnew_4 nil)
(var jm_init nil)

    
(set jnew_4 (fn jnew_4 [_name _version _specialName _shortName]
    (var this (table/setproto @{:jclass "AbeClientInformation" :f_logUtil nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
        (JR/superInit this (ClientInformation/jnew_4 _name _version _specialName _shortName))
    this))
    
(set jm_init (fn jm_init [this]
        (try
            (do
            (:jm_setOperatingSystemInterface this (:jm_getOperatingSystemInstance (OperatingSystemFactory/jm_getInstance)))
            (var _licenseInitInfo (:jm_read (LicenseInitInfoUtil/jm_getInstance)))
            (:jm_setLicenseId this (:jm_getLicenseId _licenseInitInfo))
            (:jm_setLicenseServers this (:jm_getServerList _licenseInitInfo))
            (var _stringValidationUtil (StringValidationUtil/jm_getInstance))
            (if (:jm_isEmpty _stringValidationUtil (:jm_getLicenseId this))
                (do
                (var _NONE "No License Id")
                (:jm_setLicenseId this _NONE)))
            (var _commonStrings (CommonStrings/jm_getInstance))
            (PreLogUtil/jm_put (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) "Special Name: ") (:jm_getSpecialName this))) this (_commonStrings :f_CONSTRUCTOR)))
            ([_e] (do
            (var _logUtil (LogUtil/jm_getInstance))
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_put _logUtil (_commonStrings :f_EXCEPTION) this (_commonStrings :f_CONSTRUCTOR) _e))))))

(set jproto (table/setproto @{:jm_init jm_init} ClientInformation/jproto))


