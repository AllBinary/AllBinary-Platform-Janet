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
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- Log/jnew_4 [& args] (JR/call jfile "./Log" "jnew_4" args))

#ActualPlatform
# Java class LogFactory
(var jproto nil)
(var jcell_LOG :jnone)
(var jstatic_LOG nil)
(var jsetstatic_LOG nil)
(var jnew_0 nil)
(var jm_getInstanceD nil)
(var jm_getInstance nil)
(var jm_getInstanceF nil)

(set jstatic_LOG (fn jstatic_LOG []
  (when (= jcell_LOG :jnone) (set jcell_LOG (Log/jnew_4 ((StringUtil/jm_getInstance) :f_EMPTY_STRING) ((NullUtil/jm_getInstance) :f_NULL_OBJECT) ((StringUtil/jm_getInstance) :f_EMPTY_STRING) ((NullUtil/jm_getInstance) :f_NULL_OBJECT))))
  jcell_LOG))
(set jsetstatic_LOG (fn jsetstatic_LOG [value] (set jcell_LOG value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "LogFactory"} jproto))
    this))

    
(set jm_getInstanceD (fn jm_getInstanceD []
    (label jreturn
        (var _stringUtil (StringUtil/jm_getInstance))
        (var _nullUtil (NullUtil/jm_getInstance))
        (return jreturn (Log/jnew_4 (_stringUtil :f_EMPTY_STRING) (_nullUtil :f_NULL_OBJECT) (_stringUtil :f_EMPTY_STRING) (_nullUtil :f_NULL_OBJECT))))))
    
(set jm_getInstance (fn jm_getInstance [_specialMessage _anyType _functionName _exception]
    (label jreturn
        (return jreturn (jstatic_LOG)))))
    
(set jm_getInstanceF (fn jm_getInstanceF [_specialMessage _anyType _functionName]
    (label jreturn
        (return jreturn (jstatic_LOG)))))

(set jproto @{})


