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
(import ../../java/lang/Float :as Float)
(import ../../java/lang/Double :as Double)

#TempBase
# Java class TsUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_longBitsToDouble nil)
(var jm_intBitsToFloat nil)
(var jm_hashCode_1 nil)
(var jm_waitFor nil)
(var jm_compareTo nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "TsUtil"} jproto))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_longBitsToDouble (fn jm_longBitsToDouble [this _bits]
    (label jreturn
        (return jreturn (Double/jm_longBitsToDouble _bits)))))
    
(set jm_intBitsToFloat (fn jm_intBitsToFloat [this _bits]
    (label jreturn
        (return jreturn (Float/jm_intBitsToFloat _bits)))))
    
(set jm_hashCode_1 (fn jm_hashCode_1 [this _anyType]
    (label jreturn
        (return jreturn (JR/className _anyType)))))
    
(set jm_waitFor (fn jm_waitFor [this _any _timeoutMillis]
        (var _anyType _any)
        (JR/className _anyType)))
    
(set jm_compareTo (fn jm_compareTo [this _a _b]
    (label jreturn
        (return jreturn (JR/compareTo _a _b)))))

(set jproto @{:jm_longBitsToDouble jm_longBitsToDouble :jm_intBitsToFloat jm_intBitsToFloat :jm_hashCode_1 jm_hashCode_1 :jm_waitFor jm_waitFor :jm_compareTo jm_compareTo})


