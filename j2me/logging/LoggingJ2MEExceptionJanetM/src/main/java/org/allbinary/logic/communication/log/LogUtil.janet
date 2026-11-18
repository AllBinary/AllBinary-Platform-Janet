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
# package org.allbinary.logic.communication.log

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(import ../../../../../java/lang/System :as System)
(defn- LogFormatUtil/jm_getInstance [& args] (JR/call jfile "./LogFormatUtil" "jm_getInstance" args))
(defn- LogFactory/jstatic_LOG [& args] (JR/call jfile "./LogFactory" "jstatic_LOG" args))

#ActualPlatform
# Java class LogUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_putL nil)
(var jm_putF nil)
(var jm_putFS nil)
(var jm_put nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "LogUtil" :f_logFormatUtil nil :f_LOG_SUCCESS nil} jproto))
    (put this :f_logFormatUtil (LogFormatUtil/jm_getInstance))
    (put this :f_LOG_SUCCESS "org.allbinary: ")
    this))
    
(set jm_putL (fn jm_putL [this _log]
    (label jreturn
        (if (= _log (LogFactory/jstatic_LOG))
            (do
            (return jreturn)))
        (var _exception (:jm_getThrowable _log))
        (if (nil? _exception)
            (do
            (return jreturn)))
        (var _specialMessage (:jm_getSpecialMessage _log))
        (var _anyType (:jm_getObject _log))
        (var _functionName (:jm_getFunctionName _log))
        (:jm_put this _specialMessage _anyType _functionName _exception))))
    
(set jm_putF (fn jm_putF [this _specialMessage _anyType _functionName]
    nil))
    
(set jm_putFS (fn jm_putFS [this _specialMessage _className _functionName]
    nil))
    
(set jm_put (fn jm_put [this _specialMessage _anyType _functionName _exception]
        (var _className ((CommonStrings/jm_getInstance) :f_EMPTY))
        (if (not (nil? (JR/className _anyType)))
            (do
            (set _className (JR/className _anyType))))
        (var _message (:jm_get (this :f_logFormatUtil) _className _functionName _specialMessage _exception))
        (prin (this :f_LOG_SUCCESS))
        (print _message)))

(set jproto @{:jm_putL jm_putL :jm_putF jm_putF :jm_putFS jm_putFS :jm_put jm_put})


