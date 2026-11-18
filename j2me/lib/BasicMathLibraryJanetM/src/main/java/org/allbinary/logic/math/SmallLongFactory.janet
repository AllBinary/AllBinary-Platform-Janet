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
# package org.allbinary.logic.math

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(import ../../../../java/lang/Long :as Long)

# Java class SmallLongFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_initWithRange nil)
(var jm_init nil)
(var jm_getInstanceNoThrow nil)
(var jm_getString nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_initWithRange (fn jm_initWithRange [this _value _negativeValue]
        (do
            (var _index (JR/i32 (- _value 1)))
            (while (>= _index (this :f_lastMin))
                (do
            (set ((this :f_INTEGER_ARRAY) (JR/i32 (+ _index (this :f_NEGATIVE_MAX)))) _index))
                (do (set _index (JR/i32 (- _index 1))))))
        (do
            (var _index (JR/i32 (- _negativeValue 1)))
            (while (>= _index (this :f_lastNegativeMin))
                (do
            (set ((this :f_INTEGER_ARRAY) _index) (JR/i32 (- _index))))
                (do (set _index (JR/i32 (- _index 1))))))
        (if (< (this :f_lastMin) _value)
            (do
            (set (this :f_lastMin) _value)
            (set (this :f_MIN) _value)))
        (if (< (this :f_lastNegativeMin) _negativeValue)
            (do
            (set (this :f_lastNegativeMin) _negativeValue)))))
    
(set jm_init (fn jm_init [this]
        (if (nil? ((this :f_INTEGER_ARRAY) 0))
            (do
            (if (or (< (this :f_lastMin) (this :f_POSITIVE_MAX)) (< (this :f_lastNegativeMin) (this :f_NEGATIVE_MAX)))
                (do
                (do
                    (var _index (JR/i32 (- (this :f_POSITIVE_MAX) 1)))
                    (while (>= _index (this :f_lastMin))
                        (do
                    (set ((this :f_INTEGER_ARRAY) (JR/i32 (+ _index (this :f_NEGATIVE_MAX)))) _index))
                        (do (set _index (JR/i32 (- _index 1))))))
                (do
                    (var _index (JR/i32 (- (this :f_NEGATIVE_MAX) 1)))
                    (while (>= _index (this :f_lastNegativeMin))
                        (do
                    (set ((this :f_INTEGER_ARRAY) _index) (JR/i32 (- _index))))
                        (do (set _index (JR/i32 (- _index 1))))))
                (set (this :f_lastMin) (this :f_POSITIVE_MAX))
                (set (this :f_lastNegativeMin) (this :f_NEGATIVE_MAX))))))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "SmallLongFactory" :f_NEGATIVE_MAX 0 :f_POSITIVE_MAX 0 :f_INTEGER_ARRAY nil :f_STRING_ARRAY nil :f_MIN 0 :f_lastMin 0 :f_lastNegativeMin 0} jproto))
    (put this :f_NEGATIVE_MAX 500)
    (put this :f_POSITIVE_MAX 0x2D1)
    (put this :f_INTEGER_ARRAY (array/new-filled (JR/i32 (+ (this :f_NEGATIVE_MAX) (this :f_POSITIVE_MAX))) nil))
    (put this :f_STRING_ARRAY (array/new-filled (JR/i32 (+ (this :f_NEGATIVE_MAX) (this :f_POSITIVE_MAX))) nil))
    (put this :f_MIN 0)
    (put this :f_lastMin 0)
    (put this :f_lastNegativeMin 0)
    this))
    
(set jm_getInstanceNoThrow (fn jm_getInstanceNoThrow [this _index]
    (label jreturn
        (if (> (+ _index (this :f_NEGATIVE_MAX)) (JR/i32 (- (length (this :f_INTEGER_ARRAY)) 1)))
            (do
            (return jreturn ((this :f_INTEGER_ARRAY) (JR/i32 (+ (JR/i32 (- 1)) (this :f_NEGATIVE_MAX)))))))
        (return jreturn ((this :f_INTEGER_ARRAY) (JR/i32 (+ (JR/i32 _index) (this :f_NEGATIVE_MAX))))))))
    
(set jm_getString (fn jm_getString [this _index]
    (label jreturn
        (var _i (JR/i32 (+ _index (this :f_NEGATIVE_MAX))))
        (if (nil? ((this :f_STRING_ARRAY) _i))
            (do
            (set ((this :f_STRING_ARRAY) _i) (JR/toString ((this :f_INTEGER_ARRAY) _i)))))
        (return jreturn ((this :f_STRING_ARRAY) _i)))))

(set jproto @{:jm_initWithRange jm_initWithRange :jm_init jm_init :jm_getInstanceNoThrow jm_getInstanceNoThrow :jm_getString jm_getString})


