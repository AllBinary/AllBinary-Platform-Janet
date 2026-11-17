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
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(import ../../../../../java/lang/System :as System)
(defn- LogFormatUtil/jm_getInstance [& args] (JR/call jfile "./LogFormatUtil" "jm_getInstance" args))

#ActualPlatform
# Java class PreLogUtil
(var jproto nil)
(var jcell_LOG_SUCCESS :jnone)
(var jstatic_LOG_SUCCESS nil)
(var jnew_0 nil)
(var jm_put nil)
(var jm_putOE nil)
(var jm_putS nil)
(var jm_putSE nil)
(var jm_getClassName nil)

(set jstatic_LOG_SUCCESS (fn jstatic_LOG_SUCCESS []
  (when (= jcell_LOG_SUCCESS :jnone) (set jcell_LOG_SUCCESS "org.allbinary: "))
  jcell_LOG_SUCCESS))

    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "PreLogUtil"} jproto))
    this))
    
(set jm_put (fn jm_put [_specialMessage _anyType _functionName]
        (jm_putOE _specialMessage _anyType _functionName ((NullUtil/jm_getInstance) :f_NULL_OBJECT))))
    
(set jm_putOE (fn jm_putOE [_specialMessage _anyType _functionName _exception]
        (var _className ((CommonStrings/jm_getInstance) :f_EMPTY))
        (if (not (nil? (JR/className _anyType)))
            (do
            (set _className (JR/className _anyType))))
        (var _message (:jm_get (LogFormatUtil/jm_getInstance) _className _functionName _specialMessage _exception))
        (prin (JR/str (jstatic_LOG_SUCCESS)))
        (print _message)))
    
(set jm_putS (fn jm_putS [_specialMessage _className _functionName]
        (jm_putSE _specialMessage _className _functionName ((NullUtil/jm_getInstance) :f_NULL_OBJECT))))
    
(set jm_putSE (fn jm_putSE [_specialMessage _className _functionName _exception]
        (var _message (:jm_get (LogFormatUtil/jm_getInstance) _className _functionName _specialMessage _exception))
        (prin (JR/str (jstatic_LOG_SUCCESS)))
        (print _message)))
    
(set jm_getClassName (fn jm_getClassName [_anyType]
    (label jreturn
        (return jreturn (JR/className _anyType)))))

(set jproto @{})


