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
# package org.allbinary.logic.system.os.linux

(import ../../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- LogConfigTypeFactory/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" "jm_getInstance" args))
(defn- LogConfigTypes/jstatic_LOGGING [& args] (JR/call jfile "../../../../../../org/allbinary/logic/communication/log/config/type/LogConfigTypes" "jstatic_LOGGING" args))
(defn- NoOperatingSystem/jstatic_NO_OPERATING_SYSTEM [& args] (JR/call jfile "../../../../../../org/allbinary/logic/system/os/NoOperatingSystem" "jstatic_NO_OPERATING_SYSTEM" args))
(defn- OperatingSystems/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/system/os/OperatingSystems" "jm_getInstance" args))
(defn- SystemProperties/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/logic/system/os/SystemProperties" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- LinuxOS/jnew_0 [& args] (JR/call jfile "./LinuxOS" "jnew_0" args))

# Java class LinuxOperatingSystemFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getOperatingSystemInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "LinuxOperatingSystemFactory" :f_logUtil nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    this))
    
(set jm_getOperatingSystemInstance (fn jm_getOperatingSystemInstance [this]
    (label jreturn
        (try
            (do
            (var _operatingSystems (OperatingSystems/jm_getInstance))
            (var _osName (:jm_getName (SystemProperties/jm_getInstance)))
            (var _operatingSystemInterface nil)
            (if (= (JR/compareTo _osName (_operatingSystems :f_LINUX)) 0)
                (do
                (set _operatingSystemInterface (LinuxOS/jnew_0)))
                (do
                (if (:jm_isUnknownSpecificOSAllowed _operatingSystems)
                    (do
                    (set _operatingSystemInterface (LinuxOS/jnew_0)))
                    (do
                    (error (JR/newException "Exception" (string "Specific Linux OS Not Supported: " _osName)))))))
            (return jreturn _operatingSystemInterface))
            ([_e] (do
            (if (JR/className (LogConfigTypes/jstatic_LOGGING))
                (do
                (var _commonStrings (CommonStrings/jm_getInstance))
                (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this (_commonStrings :f_GET_INSTANCE) _e)))
            (return jreturn (NoOperatingSystem/jstatic_NO_OPERATING_SYSTEM))))))))

(set jproto @{:jm_getOperatingSystemInstance jm_getOperatingSystemInstance})


