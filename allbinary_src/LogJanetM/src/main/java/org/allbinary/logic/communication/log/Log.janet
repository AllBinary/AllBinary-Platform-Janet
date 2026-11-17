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
(defn- LogFormatUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogFormatUtil" "jm_getInstance" args))

# Java class Log
(var jproto nil)
(var jnew_4 nil)
(var jm_getSpecialMessage nil)
(var jm_getObject nil)
(var jm_getFunctionName nil)
(var jm_getThrowable nil)
(var jm_toString nil)

    
(set jnew_4 (fn jnew_4 [_specialMessage _anyType _functionName _exception]
    (var this (table/setproto @{:jclass "Log" :f_logFormatUtil nil :f_specialMessage nil :f_anyType nil :f_functionName nil :f_exception nil} jproto))
    (put this :f_logFormatUtil (LogFormatUtil/jm_getInstance))
    
    
    
    
        (set (this :f_specialMessage) _specialMessage)
        (set (this :f_anyType) _anyType)
        (set (this :f_functionName) _functionName)
        (set (this :f_exception) _exception)
    this))
    
(set jm_getSpecialMessage (fn jm_getSpecialMessage [this]
    (label jreturn
        (return jreturn (this :f_specialMessage)))))
    
(set jm_getObject (fn jm_getObject [this]
    (label jreturn
        (return jreturn (this :f_anyType)))))
    
(set jm_getFunctionName (fn jm_getFunctionName [this]
    (label jreturn
        (return jreturn (this :f_functionName)))))
    
(set jm_getThrowable (fn jm_getThrowable [this]
    (label jreturn
        (return jreturn (this :f_exception)))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _className ((CommonStrings/jm_getInstance) :f_EMPTY))
        (var _clazz (JR/className (this :f_anyType)))
        (if (not (nil? (:jm_getName _clazz)))
            (do
            (set _className (:jm_getName _clazz))))
        (return jreturn (:jm_get (this :f_logFormatUtil) _className (this :f_functionName) (this :f_specialMessage) (this :f_exception))))))

(set jproto @{:jm_getSpecialMessage jm_getSpecialMessage :jm_getObject jm_getObject :jm_getFunctionName jm_getFunctionName :jm_getThrowable jm_getThrowable :jm_toString jm_toString})


