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
# package org.allbinary.globals

(import ../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringValidationUtil/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/logic/string/StringValidationUtil" "jm_getInstance" args))
(defn- WebappClassLoaderInfo/jm_setLoader [& args] (JR/call jfile "../../../org/allbinary/logic/system/loader/WebappClassLoaderInfo" "jm_setLoader" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- AppUrlGlobals/jnew_0 [& args] (JR/call jfile "./AppUrlGlobals" "jnew_0" args))
(defn- URLGLOBALS/jm_init [& args] (JR/call jfile "./URLGLOBALS" "jm_init" args))
(defn- URLGLOBALS/jm_getWebappPath [& args] (JR/call jfile "./URLGLOBALS" "jm_getWebappPath" args))

# Java class Globals
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_init nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "Globals" :f_logUtil nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    this))
    
(set jm_init (fn jm_init [this _classLoader _pathString]
        (var _commonStrings (CommonStrings/jm_getInstance))
        (var _appUrlGlobals (AppUrlGlobals/jnew_0))
        (:jm_setWebappPath _appUrlGlobals _pathString)
        (URLGLOBALS/jm_init _appUrlGlobals)
        (WebappClassLoaderInfo/jm_setLoader _classLoader)
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer "Setting Up AllBinary System Configuration Args: ")
        (:jm_append _stringBuffer _pathString)
        (:jm_append _stringBuffer " ClassLoader: ")
        (:jm_append _stringBuffer (JR/className _classLoader))
        (:jm_putF (this :f_logUtil) (:jm_toString _stringBuffer) this (_commonStrings :f_INIT))
        (var _stringValidationUtil (StringValidationUtil/jm_getInstance))
        (if (:jm_isEmpty _stringValidationUtil _pathString)
            (do
            (:jm_delete _stringBuffer 0 (:jm_length _stringBuffer))
            (:jm_append _stringBuffer "No Path Provided. Using Process Path: ")
            (:jm_append _stringBuffer _pathString)
            (:jm_append _stringBuffer ((CommonSeps/jm_getInstance) :f_SPACE))
            (:jm_append _stringBuffer ((CommonSeps/jm_getInstance) :f_EQUALS))
            (:jm_append _stringBuffer ((CommonSeps/jm_getInstance) :f_SPACE))
            (:jm_append _stringBuffer (URLGLOBALS/jm_getWebappPath))
            (:jm_putF (this :f_logUtil) (:jm_toString _stringBuffer) this (_commonStrings :f_INIT))))
        (:jm_delete _stringBuffer 0 (:jm_length _stringBuffer))
        (:jm_append _stringBuffer "Webapp Path Set To: ")
        (:jm_append _stringBuffer (URLGLOBALS/jm_getWebappPath))
        (:jm_putF (this :f_logUtil) (:jm_toString _stringBuffer) this (_commonStrings :f_INIT))))

(set jproto @{:jm_init jm_init})


