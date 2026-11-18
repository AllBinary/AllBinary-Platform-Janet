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
# package org.allbinary.logic.system.hardware

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- LogUtil/jm_getInstance_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance_0" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance_0" args))
(defn- CommonStrings/jm_getInstance_0 [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance_0" args))
(defn- NoHardware/jm_getInstance_0 [& args] (JR/call jfile "./NoHardware" "jm_getInstance_0" args))
(defn- HardwareFactory/jm_getInstance_0 [& args] (JR/call jfile "./HardwareFactory" "jm_getInstance_0" args))

# Java class SystemHardwareFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance_0 nil)
(var jm_getInstance_1 nil)
(var jm_static_toString nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance_0 (fn jm_getInstance_0 []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "SystemHardwareFactory" :f_logUtil nil :f_commonStrings nil :f_hardwareInterface nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance_0))
    (put this :f_commonStrings (CommonStrings/jm_getInstance_0))
    (put this :f_hardwareInterface (NoHardware/jm_getInstance_0))
    this))
    
(set jm_getInstance_1 (fn jm_getInstance_1 [this _operatingSystemInterface]
    (label jreturn
        (try
            (do
            (if (= (this :f_hardwareInterface) (NoHardware/jm_getInstance_0))
                (do
                (set (this :f_hardwareInterface) (:jm_getInstance_1 (HardwareFactory/jm_getInstance_0) _operatingSystemInterface))))
            (:jm_putF (this :f_logUtil) "Found Hardware" this ((this :f_commonStrings) :f_CONSTRUCTOR)))
            ([_e] (do
            (:jm_put (this :f_logUtil) ((this :f_commonStrings) :f_EXCEPTION) this ((this :f_commonStrings) :f_CONSTRUCTOR) _e))))
        (return jreturn (this :f_hardwareInterface)))))
    
(set jm_static_toString (fn jm_static_toString []
    (label jreturn
        (var _systemHardwareFactory (jm_getInstance_0))
        (var _osBuffer (StringMaker/jnew_0))
        (:jm_append _osBuffer "Hardware Info: \n")
        (if (not (nil? (_systemHardwareFactory :f_hardwareInterface)))
            (do
            (:jm_append _osBuffer (JR/toString (_systemHardwareFactory :f_hardwareInterface))))
            (do
            (:jm_append _osBuffer ((StringUtil/jm_getInstance_0) :f_NULL_STRING))))
        (return jreturn (:jm_toString _osBuffer)))))

(set jproto @{:jm_getInstance_1 jm_getInstance_1})


