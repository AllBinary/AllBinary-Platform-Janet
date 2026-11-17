# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary

(import ../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../java/lang/System :as System)

#None - Do not use
# Java class TsUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_hashCode_1 nil)
(var jm_waitFor nil)
(var jm_getRecord nil)
(var jm_compareTo nil)
(var jm_equalIgnoreCase nil)
(var jm_equalsNotstring nil)
(var jm_toNumberFromChar nil)
(var jm_toNumber nil)
(var jm_getByteArray nil)
(var jm_isItemListener nil)
(var jm_printAvailableMethods nil)
(var jm_gc nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "TsUtil"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_hashCode_1 (fn jm_hashCode_1 [this _anyType]
    (label jreturn
        (return jreturn (JR/className _anyType)))))
    
(set jm_waitFor (fn jm_waitFor [this _any _timeoutMillis]
        (var _anyType _any)
        (JR/className _anyType)))
    
(set jm_getRecord (fn jm_getRecord [this _anyType _recordId]
    (label jreturn
        (return jreturn (array/new-filled 0 0)))))
    
(set jm_compareTo (fn jm_compareTo [this _a _b]
    (label jreturn
        (return jreturn (JR/compareTo _a _b)))))
    
(set jm_equalIgnoreCase (fn jm_equalIgnoreCase [this _a _b]
    (label jreturn
        (return jreturn (JR/equalsIgnoreCase _a _b)))))
    
(set jm_equalsNotstring (fn jm_equalsNotstring [this _anyType _object2]
    (label jreturn
        (return jreturn (= _anyType _object2)))))
    
(set jm_toNumberFromChar (fn jm_toNumberFromChar [this _value]
    (label jreturn
        (return jreturn _value))))
    
(set jm_toNumber (fn jm_toNumber [this _value]
    (label jreturn
        (return jreturn _value))))
    
(set jm_getByteArray (fn jm_getByteArray [this _string]
    (label jreturn
        (return jreturn (JR/getBytes _string)))))
    
(set jm_isItemListener (fn jm_isItemListener [this _owner]
    (label jreturn
        (return jreturn false))))
    
(set jm_printAvailableMethods (fn jm_printAvailableMethods [this _anyType]
    nil))
    
(set jm_gc (fn jm_gc [this]
        (System/jm_gc)))

(set jproto @{:jm_hashCode_1 jm_hashCode_1 :jm_waitFor jm_waitFor :jm_getRecord jm_getRecord :jm_compareTo jm_compareTo :jm_equalIgnoreCase jm_equalIgnoreCase :jm_equalsNotstring jm_equalsNotstring :jm_toNumberFromChar jm_toNumberFromChar :jm_toNumber jm_toNumber :jm_getByteArray jm_getByteArray :jm_isItemListener jm_isItemListener :jm_printAvailableMethods jm_printAvailableMethods :jm_gc jm_gc})


