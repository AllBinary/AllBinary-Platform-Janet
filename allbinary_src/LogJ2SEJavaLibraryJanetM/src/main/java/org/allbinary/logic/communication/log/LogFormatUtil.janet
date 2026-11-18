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
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- ExceptionUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/java/exception/ExceptionUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonLabels/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonLabels" "jm_getInstance" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- TimeStampUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/time/TimeStampUtil" "jm_getInstance" args))

#ActualPlatform
# Java class LogFormatUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_get nil)
(var jm_getS nil)
(var jm_getF nil)
(var jm_getO nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "LogFormatUtil" :f_timeStampUtil nil :f_commonSeps nil :f_NONE nil :f_LOG_ERROR nil :f_EMPTY nil :f_STACK_TRACE nil :f_TIME nil :f_CLASS_NAME nil :f_FUNCTION_CALL nil :f_SPECIAL_MESSAGE nil :f_stringUtil nil :f_exceptionUtil nil :f_nullUtil nil} jproto))
    (put this :f_timeStampUtil (TimeStampUtil/jm_getInstance))
    (put this :f_commonSeps (CommonSeps/jm_getInstance))
    (put this :f_NONE "None")
    (put this :f_LOG_ERROR "\nLog-Error: ")
    (put this :f_EMPTY "Empty")
    (put this :f_STACK_TRACE "\nStack Trace: ")
    (put this :f_TIME "Time: ")
    (put this :f_CLASS_NAME ((this :f_commonSeps) :f_SPACE))
    (put this :f_FUNCTION_CALL ((CommonLabels/jm_getInstance) :f_COLON_SEP))
    (put this :f_SPECIAL_MESSAGE "> ")
    (put this :f_stringUtil (StringUtil/jm_getInstance))
    (put this :f_exceptionUtil (ExceptionUtil/jm_getInstance))
    (put this :f_nullUtil (NullUtil/jm_getInstance))
    this))
    
(set jm_get (fn jm_get [this _className _functionName _specialMessage _exception]
    (label jreturn
        (var _stringBuffer (:jm_getF this _className _functionName))
        (:jm_append _stringBuffer (:jm_getO this _exception))
        (:jm_append _stringBuffer (this :f_SPECIAL_MESSAGE))
        (:jm_append _stringBuffer _specialMessage)
        (:jm_append _stringBuffer ((this :f_commonSeps) :f_NEW_LINE))
        (return jreturn (:jm_toString _stringBuffer)))))
    
(set jm_getS (fn jm_getS [this _className _functionName _specialMessage]
    (label jreturn
        (var _stringBuffer (:jm_getF this _className _functionName))
        (:jm_append _stringBuffer (this :f_SPECIAL_MESSAGE))
        (:jm_append _stringBuffer _specialMessage)
        (:jm_append _stringBuffer ((this :f_commonSeps) :f_NEW_LINE))
        (return jreturn (:jm_toString _stringBuffer)))))
    
(set jm_getF (fn jm_getF [this _className _functionName]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer (this :f_TIME))
        (:jm_append _stringBuffer (:jm_getAsString (this :f_timeStampUtil)))
        (:jm_append _stringBuffer (this :f_CLASS_NAME))
        (:jm_append _stringBuffer _className)
        (:jm_append _stringBuffer (this :f_FUNCTION_CALL))
        (:jm_append _stringBuffer _functionName)
        (return jreturn _stringBuffer))))
    
(set jm_getO (fn jm_getO [this _exception]
    (label jreturn
        (if (not= _exception ((this :f_nullUtil) :f_NULL_OBJECT))
            (do
            (var _stringBuffer (StringMaker/jnew_0))
            (:jm_append _stringBuffer (this :f_LOG_ERROR))
            (var _exceptionAsString (JR/toString _exception))
            (:jm_append _stringBuffer _exceptionAsString)
            (:jm_append _stringBuffer (this :f_STACK_TRACE))
            (if (not= _exception ((this :f_nullUtil) :f_NULL_OBJECT))
                (do
                (:jm_append _stringBuffer (:jm_getStackTrace (this :f_exceptionUtil) _exception)))
                (do
                (:jm_append _stringBuffer ((this :f_stringUtil) :f_NULL_STRING))))
            (return jreturn (:jm_toString _stringBuffer)))
            (do
            (return jreturn ((StringUtil/jm_getInstance) :f_EMPTY_STRING)))))))

(set jproto @{:jm_get jm_get :jm_getS jm_getS :jm_getF jm_getF :jm_getO jm_getO})


