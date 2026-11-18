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
# package org.allbinary.game.rand

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../java/util/Random :as Random)
(defn- MathUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/math/MathUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(import ../../../../java/lang/System :as System)
(import ../../../../java/lang/Integer :as Integer)

#Do not use in client code for money related things.
# Java class MyRandomFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_setSeed nil)
(var jm_getNextInt nil)
(var jm_getAbsoluteNextInt nil)
(var jm_getAbsoluteNextIntAllowZero nil)
(var jm_shuffle nil)
(var jm_shuffleTotal nil)
(var jm_shuffle2 nil)
(var jm_shuffle2Total nil)
(var jm_main nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "MyRandomFactory" :f_mathUtil nil :f_rand nil} jproto))
    (put this :f_mathUtil (MathUtil/jm_getInstance))
    
        (set (this :f_rand) (Random/jnew_1 (JR/currentTimeMillis)))
    this))
    
(set jm_setSeed (fn jm_setSeed [this _seed]
        (set (this :f_rand) (Random/jnew_1 _seed))))
    
(set jm_getNextInt (fn jm_getNextInt [this _range]
    (label jreturn
        (var _div (JR/i32 (+ (JR/idiv (Integer/jstatic_MAX_VALUE) _range) 1)))
        (return jreturn (JR/idiv (:jm_nextInt (this :f_rand)) _div)))))
    
(set jm_getAbsoluteNextInt (fn jm_getAbsoluteNextInt [this _range]
    (label jreturn
        (return jreturn (:jm_abs (this :f_mathUtil) (:jm_getNextInt this _range))))))
    
(set jm_getAbsoluteNextIntAllowZero (fn jm_getAbsoluteNextIntAllowZero [this _range]
    (label jreturn
        (if (= _range 0)
            (do
            (return jreturn 0))
            (do
            (return jreturn (:jm_abs (this :f_mathUtil) (:jm_getNextInt this _range))))))))
    
(set jm_shuffle (fn jm_shuffle [this _intArray]
        (:jm_shuffleTotal this _intArray (JR/i32 (* (length _intArray) 7)))))
    
(set jm_shuffleTotal (fn jm_shuffleTotal [this _intArray _shuffleTotal]
        (var _size (length _intArray))
        (var _randomIndex 0)
        (var _randomIndex2 0)
        (var _value 0)
        (do
            (var _index 0)
            (while (< _index _shuffleTotal)
                (do
            (set _randomIndex (:jm_getAbsoluteNextIntAllowZero this _size))
            (set _randomIndex2 (:jm_getAbsoluteNextIntAllowZero this _size))
            (set _value (_intArray _randomIndex))
            (set (_intArray _randomIndex) (_intArray _randomIndex2))
            (set (_intArray _randomIndex2) _value))
                (do (set _index (JR/i32 (+ _index 1))))))))
    
(set jm_shuffle2 (fn jm_shuffle2 [this _intArray _intArray2]
        (:jm_shuffle2Total this _intArray _intArray2 (JR/i32 (* (length _intArray) 7)))))
    
(set jm_shuffle2Total (fn jm_shuffle2Total [this _intArray _intArray2 _shuffleTotal]
        (var _size (length _intArray))
        (var _randomIndex 0)
        (var _randomIndex2 0)
        (var _value 0)
        (var _value2 0)
        (do
            (var _index 0)
            (while (< _index _shuffleTotal)
                (do
            (set _randomIndex (:jm_getAbsoluteNextIntAllowZero this _size))
            (set _randomIndex2 (:jm_getAbsoluteNextIntAllowZero this _size))
            (set _value (_intArray _randomIndex))
            (set _value2 (_intArray2 _randomIndex))
            (set (_intArray _randomIndex) (_intArray _randomIndex2))
            (set (_intArray _randomIndex2) _value)
            (set (_intArray2 _randomIndex) (_intArray2 _randomIndex2))
            (set (_intArray2 _randomIndex2) _value2))
                (do (set _index (JR/i32 (+ _index 1))))))))
    
(set jm_main (fn jm_main [_args]
        (var _randomFactory (jm_getInstance))
        (var _stringBuilder (StringMaker/jnew_0))
        (var _commonSeps (CommonSeps/jm_getInstance))
        (var _size2 100)
        (do
            (var _index 0)
            (while (< _index _size2)
                (do
            (:jm_append (:jm_appendint _stringBuilder (:jm_getAbsoluteNextInt _randomFactory 3)) (_commonSeps :f_COMMA)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (print (:jm_toString _stringBuilder))
        (:jm_delete _stringBuilder 0 (:jm_length _stringBuilder))
        (var _intArray (array/new-filled 52 0))
        (var _intArray2 (array/new-filled 52 0))
        (var _size (length _intArray))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set (_intArray _index) _index)
            (set (_intArray2 _index) _index))
                (do (set _index (JR/i32 (+ _index 1))))))
        (:jm_shuffle2 _randomFactory _intArray _intArray2)
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (:jm_append (:jm_appendint _stringBuilder (_intArray _index)) (_commonSeps :f_COMMA)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (print (:jm_toString _stringBuilder))
        (:jm_delete _stringBuilder 0 (:jm_length _stringBuilder))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (:jm_append (:jm_appendint _stringBuilder (_intArray2 _index)) (_commonSeps :f_COMMA)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (print (:jm_toString _stringBuilder))
        (var _found false)
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _found false)
            (do
                (var _index2 0)
                (while (< _index2 _size)
                    (do
                (if (= (_intArray _index2) _index)
                    (do
                    (set _found true))))
                    (do (set _index2 (JR/i32 (+ _index2 1))))))
            (if (not _found)
                (do
                (error (JR/newException "RuntimeException")))))
                (do (set _index (JR/i32 (+ _index 1))))))))

(set jproto @{:jm_setSeed jm_setSeed :jm_getNextInt jm_getNextInt :jm_getAbsoluteNextInt jm_getAbsoluteNextInt :jm_getAbsoluteNextIntAllowZero jm_getAbsoluteNextIntAllowZero :jm_shuffle jm_shuffle :jm_shuffleTotal jm_shuffleTotal :jm_shuffle2 jm_shuffle2 :jm_shuffle2Total jm_shuffle2Total})


