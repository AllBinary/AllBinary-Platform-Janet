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
# package org.allbinary.logic.string

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class StringUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getNonNull nil)
(var jm_getArrayInstance nil)
(var jm_count nil)
(var jm_toString_1 nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "StringUtil" :f_INIT_STRING nil :f_NULL_STRING nil :f_EMPTY_STRING nil :f_ONE_EMPTY_STRING_ARRAY nil :f_ONE_EMPTY_STRING_ARRAY_OF_ARRAYS nil :f_stringArray nil} jproto))
    (put this :f_INIT_STRING "")
    (put this :f_NULL_STRING "null")
    (put this :f_EMPTY_STRING "")
    (put this :f_ONE_EMPTY_STRING_ARRAY @[(this :f_EMPTY_STRING)])
    (put this :f_ONE_EMPTY_STRING_ARRAY_OF_ARRAYS (seq [jindex1 :range [0 0]] (array/new-filled 0 nil)))
    (put this :f_stringArray (array/new-filled 0 nil))
    this))
    
(set jm_getNonNull (fn jm_getNonNull [this _string]
    (label jreturn
        (return jreturn _string))))
    
(set jm_getArrayInstance (fn jm_getArrayInstance [this]
    (label jreturn
        (return jreturn (this :f_stringArray)))))
    
(set jm_count (fn jm_count [this _string _aChar]
    (label jreturn
        (var _count 0)
        (var _size (length _string))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (if (= (get _string _index) _aChar)
                (do
                (set _count (JR/i32 (+ _count 1))))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn _count))))
    
(set jm_toString_1 (fn jm_toString_1 [this _anyType]
    (label jreturn
        (if (not (nil? _anyType))
            (do
            (return jreturn (JR/toString _anyType)))
            (do
            (return jreturn (this :f_NULL_STRING)))))))

(set jproto @{:jm_getNonNull jm_getNonNull :jm_getArrayInstance jm_getArrayInstance :jm_count jm_count :jm_toString_1 jm_toString_1})


