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
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(import ../../java/lang/System :as System)
(import ../../java/lang/Float :as Float)
(import ../../java/lang/Double :as Double)

#J2SE
# Java class TsUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_longBitsToDouble nil)
(var jm_intBitsToFloat nil)
(var jm_hashCode_1 nil)
(var jm_waitFor nil)
(var jm_getRecord nil)
(var jm_compareTo nil)
(var jm_equalIgnoreCase nil)
(var jm_equalsNotstring nil)
(var jm_getClassClassLoader nil)
(var jm_toNumberFromChar nil)
(var jm_toNumber nil)
(var jm_getByteArray nil)
(var jm_isItemListener nil)
(var jm_gc nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

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
    
(set jm_getRecord (fn jm_getRecord [this _anyType _recordId]
    (label jreturn
        (var _recordStore _anyType)
        (var _data nil)
        (do
            (set _data (array/new-filled (:jm_getRecordSize _recordStore _recordId) 0))
            (:jm_getRecord _recordStore _recordId _data 0))
        (return jreturn (if (< (length _data) 1) ((NullUtil/jm_getInstance) :f_NULL_BYTE_ARRAY) _data)))))
    
(set jm_compareTo (fn jm_compareTo [this _a _b]
    (label jreturn
        (return jreturn (JR/compareTo _a _b)))))
    
(set jm_equalIgnoreCase (fn jm_equalIgnoreCase [this _a _b]
    (label jreturn
        (return jreturn (JR/equalsIgnoreCase _a _b)))))
    
(set jm_equalsNotstring (fn jm_equalsNotstring [this _anyType _object2]
    (label jreturn
        (return jreturn (= _anyType _object2)))))
    
(set jm_getClassClassLoader (fn jm_getClassClassLoader [this _anyType]
    (label jreturn
        (return jreturn (JR/className (JR/className _anyType))))))
    
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
        (if (= (JR/className _owner) "Form")
            (do
            (return jreturn true))
            (do
            (return jreturn false))))))
    
(set jm_gc (fn jm_gc [this]
        (System/jm_gc)))

(set jproto @{:jm_longBitsToDouble jm_longBitsToDouble :jm_intBitsToFloat jm_intBitsToFloat :jm_hashCode_1 jm_hashCode_1 :jm_waitFor jm_waitFor :jm_getRecord jm_getRecord :jm_compareTo jm_compareTo :jm_equalIgnoreCase jm_equalIgnoreCase :jm_equalsNotstring jm_equalsNotstring :jm_getClassClassLoader jm_getClassClassLoader :jm_toNumberFromChar jm_toNumberFromChar :jm_toNumber jm_toNumber :jm_getByteArray jm_getByteArray :jm_isItemListener jm_isItemListener :jm_gc jm_gc})


