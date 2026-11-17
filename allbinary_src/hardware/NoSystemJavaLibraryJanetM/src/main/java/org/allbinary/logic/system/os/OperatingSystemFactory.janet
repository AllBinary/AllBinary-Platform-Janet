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
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(import ../../../../../java/lang/System :as System)
(defn- NoOperatingSystem/jstatic_NO_OPERATING_SYSTEM [& args] (JR/call jfile "./NoOperatingSystem" "jstatic_NO_OPERATING_SYSTEM" args))

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
    (var this (table/setproto @{:jclass "OperatingSystemFactory" :f_logUtil nil :f_genericOperatingSystem nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_genericOperatingSystem (NoOperatingSystem/jstatic_NO_OPERATING_SYSTEM))
    this))
    
(set jm_getOperatingSystemInstance (fn jm_getOperatingSystemInstance [this]
    (label jreturn
        (var _commonStrings (CommonStrings/jm_getInstance))
        (try
            (do
            (var _osString (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) "OperatingSystem Info: ") (:jm_toString (this :f_genericOperatingSystem)))))
            (print _osString)
            (:jm_putF (this :f_logUtil) _osString this (_commonStrings :f_GET_INSTANCE)))
            ([_e] (do
            (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this (_commonStrings :f_GET_INSTANCE) _e))))
        (return jreturn (this :f_genericOperatingSystem)))))

(set jproto @{:jm_getOperatingSystemInstance jm_getOperatingSystemInstance})


