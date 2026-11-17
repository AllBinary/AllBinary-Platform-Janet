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
(defn- AndroidUtil/jm_isAndroid [& args] (JR/call jfile "../../../../org/allbinary/AndroidUtil" "jm_isAndroid" args))
(defn- J2MEUtil/jm_isJ2ME [& args] (JR/call jfile "../../../../org/allbinary/J2MEUtil" "jm_isJ2ME" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(import ../../../../java/lang/Integer :as Integer)

# Java class SmallIntegerSingletonFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getMin nil)
(var jm_getMinAllowed nil)
(var jm_initWithRange nil)
(var jm_init nil)
(var jm_getAt nil)
(var jm_getAtNoThrow nil)
(var jm_createInstance nil)
(var jm_getString nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_getMin (fn jm_getMin [this]
    (label jreturn
        (var _minAllowed (:jm_getMinAllowed this))
        (if (<= (this :f_MIN) _minAllowed)
            (do
            (if (J2MEUtil/jm_isJ2ME)
                (do
                nil)
                (if (AndroidUtil/jm_isAndroid)
                (do
                (var _logUtil (LogUtil/jm_getInstance))
                (:jm_putF _logUtil (:jm_toString (:jm_appendint (:jm_append (StringMaker/jnew_0) "Android InputFactory was initialized before GameMidlet: ") (this :f_MIN))) this "getMin")
                (:jm_initWithRange this 0x291 6))
                (do
                (var _logUtil (LogUtil/jm_getInstance))
                (:jm_putF _logUtil (:jm_toString (:jm_appendint (:jm_append (StringMaker/jnew_0) "InputFactory was initialized before GameMidlet or KeyFactoryInitializer - Currently this is occurs on JS build by TouchMotionGestureFactory constructor: ") (this :f_MIN))) this "getMin")
                (:jm_initWithRange this 0x2D0 6))))))
        (if (<= (this :f_MIN) _minAllowed)
            (do
            (var _logUtil (LogUtil/jm_getInstance))
            (:jm_put _logUtil "This means you loaded the InputFactory before determining the platform input size requirements." this "getMin" (JR/newException "Exception"))))
        (return jreturn (this :f_MIN)))))
    
(set jm_getMinAllowed (fn jm_getMinAllowed [this]
    (label jreturn
        (if (J2MEUtil/jm_isJ2ME)
            (do
            (return jreturn 0))
            (do
            (if (AndroidUtil/jm_isAndroid)
                (do
                (return jreturn 0x101))
                (do
                (return jreturn 23))))))))
    
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
            (set (this :f_MIN) (this :f_lastMin))
            (set (this :f_lastNegativeMin) (this :f_NEGATIVE_MAX))))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "SmallIntegerSingletonFactory" :f_NEGATIVE_MAX 0 :f_POSITIVE_MAX 0 :f_INTEGER_ARRAY nil :f_STRING_ARRAY nil :f_MIN 0 :f_lastMin 0 :f_lastNegativeMin 0} jproto))
    (put this :f_NEGATIVE_MAX 500)
    (put this :f_POSITIVE_MAX 0x2D1)
    (put this :f_INTEGER_ARRAY (array/new-filled (JR/i32 (+ (this :f_NEGATIVE_MAX) (this :f_POSITIVE_MAX))) nil))
    (put this :f_STRING_ARRAY (array/new-filled (JR/i32 (+ (this :f_NEGATIVE_MAX) (this :f_POSITIVE_MAX))) nil))
    (put this :f_MIN 0)
    (put this :f_lastMin 0)
    (put this :f_lastNegativeMin 0)
        (:jm_initWithRange this 23 0)
    this))
    
(set jm_getAt (fn jm_getAt [this _index]
    (label jreturn
        (return jreturn ((this :f_INTEGER_ARRAY) (JR/i32 (+ _index (this :f_NEGATIVE_MAX))))))))
    
(set jm_getAtNoThrow (fn jm_getAtNoThrow [this _index]
    (label jreturn
        (if (> (JR/i32 (+ _index (this :f_NEGATIVE_MAX))) (JR/i32 (- (length (this :f_INTEGER_ARRAY)) 1)))
            (do
            (return jreturn ((this :f_INTEGER_ARRAY) (JR/i32 (+ (JR/i32 (- 1)) (this :f_NEGATIVE_MAX)))))))
        (return jreturn ((this :f_INTEGER_ARRAY) (JR/i32 (+ _index (this :f_NEGATIVE_MAX))))))))
    
(set jm_createInstance (fn jm_createInstance [this _index]
    (label jreturn
        (var _integer (:jm_getAt this _index))
        (if (nil? _integer)
            (do
            (set _integer _index)))
        (return jreturn _integer))))
    
(set jm_getString (fn jm_getString [this _index]
    (label jreturn
        (var _i (JR/i32 (+ _index (this :f_NEGATIVE_MAX))))
        (if (nil? ((this :f_STRING_ARRAY) _i))
            (do
            (set ((this :f_STRING_ARRAY) _i) (JR/toString ((this :f_INTEGER_ARRAY) _i)))))
        (return jreturn ((this :f_STRING_ARRAY) _i)))))

(set jproto @{:jm_getMin jm_getMin :jm_getMinAllowed jm_getMinAllowed :jm_initWithRange jm_initWithRange :jm_init jm_init :jm_getAt jm_getAt :jm_getAtNoThrow jm_getAtNoThrow :jm_createInstance jm_createInstance :jm_getString jm_getString})


