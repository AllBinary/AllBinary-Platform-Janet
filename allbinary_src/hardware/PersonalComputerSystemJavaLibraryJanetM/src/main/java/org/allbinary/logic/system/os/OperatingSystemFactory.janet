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
# package org.allbinary.logic.system.os

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- LogFactory/jm_getInstanceF [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogFactory" "jm_getInstanceF" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- LogConfigTypeFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" "jm_getInstance" args))
(defn- LogConfigTypes/jstatic_LOGGING [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/config/type/LogConfigTypes" "jstatic_LOGGING" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- LinuxOperatingSystemFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/system/os/linux/LinuxOperatingSystemFactory" "jm_getInstance" args))
(defn- SolarisOperatingSystemFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/system/os/solaris/SolarisOperatingSystemFactory" "jm_getInstance" args))
(defn- WindowsOperatingSystemFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/system/os/windows/WindowsOperatingSystemFactory" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(import ../../../../../java/lang/System :as System)
(defn- NoOperatingSystem/jstatic_NO_OPERATING_SYSTEM [& args] (JR/call jfile "./NoOperatingSystem" "jstatic_NO_OPERATING_SYSTEM" args))
(defn- OperatingSystems/jm_getInstance [& args] (JR/call jfile "./OperatingSystems" "jm_getInstance" args))
(defn- SystemProperties/jm_getInstance [& args] (JR/call jfile "./SystemProperties" "jm_getInstance" args))

# Java class OperatingSystemFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getOperatingSystemInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "OperatingSystemFactory" :f_logUtil nil :f_commonStrings nil :f_genericOperatingSystem nil :f_hasDetected false} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    (put this :f_genericOperatingSystem (NoOperatingSystem/jstatic_NO_OPERATING_SYSTEM))
    (put this :f_hasDetected false)
    this))
    
(set jm_getOperatingSystemInstance (fn jm_getOperatingSystemInstance [this]
    (label jreturn
        (try
            (do
            (var _operatingSystems (OperatingSystems/jm_getInstance))
            (var _systemProperties (SystemProperties/jm_getInstance))
            (var _osName (:jm_getName _systemProperties))
            (var _osArch (:jm_getArch _systemProperties))
            (var _osVersion (:jm_getVersion _systemProperties))
            (if (not (this :f_hasDetected))
                (do
                (:jm_putF (this :f_logUtil) (string "osName: " _osName) this ((this :f_commonStrings) :f_GET_INSTANCE))
                (set (this :f_hasDetected) true)
                (if (>= (JR/indexOf _osName (_operatingSystems :f_LINUX)) 0)
                    (do
                    (if (JR/className (LogConfigTypes/jstatic_LOGGING))
                        (do
                        (:jm_putF (this :f_logUtil) "Found a Linux OS" this ((this :f_commonStrings) :f_GET_INSTANCE))))
                    (set (this :f_genericOperatingSystem) (:jm_getOperatingSystemInstance (LinuxOperatingSystemFactory/jm_getInstance))))
                    (if (>= (JR/indexOf _osName (_operatingSystems :f_WINDOWS)) 0)
                    (do
                    (if (JR/className (LogConfigTypes/jstatic_LOGGING))
                        (do
                        (:jm_putF (this :f_logUtil) "Found a Windows OS" this ((this :f_commonStrings) :f_GET_INSTANCE))))
                    (set (this :f_genericOperatingSystem) (:jm_getOperatingSystemInstance (WindowsOperatingSystemFactory/jm_getInstance))))
                    (if (>= (JR/indexOf _osName (_operatingSystems :f_SOLARIS)) 0)
                    (do
                    (if (JR/className (LogConfigTypes/jstatic_LOGGING))
                        (do
                        (:jm_putF (this :f_logUtil) "Found a Solaris OS" this ((this :f_commonStrings) :f_GET_INSTANCE))))
                    (set (this :f_genericOperatingSystem) (:jm_getOperatingSystemInstance (SolarisOperatingSystemFactory/jm_getInstance))))
                    (do
                    (error (JR/newException "Exception" (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) "OS Not Supported: ") _osName))))))))
                (var _log (LogFactory/jm_getInstanceF (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) "OperatingSystem Info: ") (:jm_toString_1 (StringUtil/jm_getInstance) (this :f_genericOperatingSystem)))) this ((this :f_commonStrings) :f_GET_INSTANCE)))
                (print (:jm_toString _log))
                (:jm_putL (this :f_logUtil) _log)))
            (return jreturn (this :f_genericOperatingSystem)))
            ([_e] (do
            (if (JR/className (LogConfigTypes/jstatic_LOGGING))
                (do
                (:jm_put (this :f_logUtil) ((this :f_commonStrings) :f_EXCEPTION) this ((this :f_commonStrings) :f_GET_INSTANCE) _e)))
            (return jreturn (NoOperatingSystem/jstatic_NO_OPERATING_SYSTEM))))))))

(set jproto @{:jm_getOperatingSystemInstance jm_getOperatingSystemInstance})


