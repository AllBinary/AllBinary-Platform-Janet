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
# package org.allbinary.logic.java.byteutil

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class ByteUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_xor nil)
(var jm_not nil)
(var jm_xorByte nil)
(var jm_compare nil)
(var jm_compareWithStats nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "ByteUtil"} jproto))
    this))
    
(set jm_xor (fn jm_xor [this _array _mask]
    (label jreturn
        (var _bytes (array/new-filled (length _array) 0))
        (var _size (length _array))
        (var _index 0)
        (var _currentByte 0)
        (do
            (while (< _index _size)
                (do
            (set _currentByte (_array _index))
            (set (_bytes _index) (JR/i8 (bxor _currentByte _mask)))
            (set _index (JR/i32 (+ _index 1))))))
        (return jreturn _bytes))))
    
(set jm_not (fn jm_not [this _array]
    (label jreturn
        (var _bytes (array/new-filled (length _array) 0))
        (var _size (length _array))
        (var _index 0)
        (do
            (while (< _index _size)
                (do
            (set (_bytes _index) (JR/i8 (bnot (_array _index))))
            (set _index (JR/i32 (+ _index 1))))))
        (return jreturn _bytes))))
    
(set jm_xorByte (fn jm_xorByte [this _array _index]
    (label jreturn
        (var _mask 0)
        (if (= _index 0)
            (do
            (set _mask 1)))
        (if (= _index 1)
            (do
            (set _mask 2)))
        (if (= _index 2)
            (do
            (set _mask 4)))
        (if (= _index 3)
            (do
            (set _mask 8)))
        (if (= _index 4)
            (do
            (set _mask 16)))
        (if (= _index 5)
            (do
            (set _mask 32)))
        (if (= _index 6)
            (do
            (set _mask 64)))
        (if (= _index 7)
            (do
            (set _mask (JR/i8 (JR/i32 (- 127))))))
        (return jreturn (:jm_xor this _array _mask)))))
    
(set jm_compare (fn jm_compare [this _newByteArray _oldByteArray]
    (label jreturn
        (if (not= (length _newByteArray) (length _oldByteArray))
            (do
            (return jreturn false))
            (do
            nil))
        (var _size (length _newByteArray))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (if (not= (_newByteArray _index) (_oldByteArray _index))
                (do
                (return jreturn false))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn true))))
    
(set jm_compareWithStats (fn jm_compareWithStats [this _newByteArray _newSize _oldByteArray _stats]
    (label jreturn
        (if (not= _newSize (length _oldByteArray))
            (do
            (set (_stats 0) (JR/i32 (- 1)))
            (set (_stats 2) _newSize)
            (set (_stats 3) (length _oldByteArray))
            (return jreturn false))
            (do
            (set (_stats 0) _newSize)))
        (set (_stats 1) 0)
        (var _size _newSize)
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (if (not= (_newByteArray _index) (_oldByteArray _index))
                (do
                (return jreturn false)))
            (set (_stats 1) (JR/i32 (+ (_stats 1) 1))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn true))))

(set jproto @{:jm_xor jm_xor :jm_not jm_not :jm_xorByte jm_xorByte :jm_compare jm_compare :jm_compareWithStats jm_compareWithStats})


