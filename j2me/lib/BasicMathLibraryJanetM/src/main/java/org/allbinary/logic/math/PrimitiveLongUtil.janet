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
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- PrimitiveLongSingleton/jm_getInstance [& args] (JR/call jfile "./PrimitiveLongSingleton" "jm_getInstance" args))
(defn- MathUtil/jm_getInstance [& args] (JR/call jfile "./MathUtil" "jm_getInstance" args))

# Java class PrimitiveLongUtil
(var jproto nil)
(var jnew_2 nil)
(var jm_createPowerOfTen nil)
(var jm_getCharArray nil)
(var jm_setCurrentTotalDigits nil)
(var jm_getCurrentTotalDigits nil)
(var jm_getMaxDigits nil)

    
(set jm_createPowerOfTen (fn jm_createPowerOfTen [_powerOfTen]
    (label jreturn
        (var _primitiveLongUtil (jnew_2 _powerOfTen ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))
        (if (not= (% _powerOfTen 10) 0)
            (do
            (var _logUtil (LogUtil/jm_getInstance))
            (var _commonStrings (CommonStrings/jm_getInstance))
            (:jm_put _logUtil (_commonStrings :f_EXCEPTION) _primitiveLongUtil (_commonStrings :f_CONSTRUCTOR) (JR/newException "Exception" "Max must be power of 10"))))
        (return jreturn _primitiveLongUtil))))
    
(set jnew_2 (fn jnew_2 [_powerOfTen _unused]
    (var this (table/setproto @{:jclass "PrimitiveLongUtil" :f_logUtil nil :f_powerOfTen 0 :f_maxValue 0 :f_maxDigits 0 :f_charArray nil :f_currentTotalDigits 0 :f_primitiveLongSingleton nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    
    
    
    
    
    (put this :f_primitiveLongSingleton (PrimitiveLongSingleton/jm_getInstance))
        (set (this :f_maxDigits) (:jm_getTotalDigits (MathUtil/jm_getInstance) _powerOfTen))
        (set (this :f_powerOfTen) _powerOfTen)
        (set (this :f_maxValue) (JR/i32 (- (JR/i32 (* _powerOfTen 10)) 1)))
        (set (this :f_charArray) (array/new-filled (this :f_maxDigits) 0))
    this))
    
(set jm_getCharArray (fn jm_getCharArray [this _value]
    (label jreturn
        (if (< _value 10)
            (do
            (:jm_setCurrentTotalDigits this 1)
            (return jreturn (((this :f_primitiveLongSingleton) :f_NUMBER_CHAR_ARRAYS) _value))))
        (if (> _value (this :f_maxValue))
            (do
            (:jm_setCurrentTotalDigits this 3)
            (return jreturn ((this :f_primitiveLongSingleton) :f_UNK))))
        (var _index 0)
        (var _div (this :f_powerOfTen))
        (var _lastValue 0)
        (do
            (while (>= _div 1)
                (do
            (var _digit (JR/idiv (JR/i32 (- _value _lastValue)) _div))
            (if (and (>= _digit 0) (< _digit 10))
                (do
                (if (and (= _digit 0) (= _index 0))
                    (do
                    nil)
                    (do
                    (set ((this :f_charArray) (do (def jold _index) (set _index (JR/i32 (+ _index 1))) jold)) (((this :f_primitiveLongSingleton) :f_NUMBER_CHAR_ARRAY) _digit))))
                (set _lastValue (JR/i32 (+ _lastValue (JR/i32 (* _digit _div)))))))
            (set _div (JR/idiv _div 10)))))
        (:jm_setCurrentTotalDigits this _index)
        (return jreturn (this :f_charArray)))))
    
(set jm_setCurrentTotalDigits (fn jm_setCurrentTotalDigits [this _currentTotalDigits]
        (set (this :f_currentTotalDigits) _currentTotalDigits)))
    
(set jm_getCurrentTotalDigits (fn jm_getCurrentTotalDigits [this]
    (label jreturn
        (return jreturn (this :f_currentTotalDigits)))))
    
(set jm_getMaxDigits (fn jm_getMaxDigits [this]
    (label jreturn
        (return jreturn (this :f_maxDigits)))))

(set jproto @{:jm_getCharArray jm_getCharArray :jm_setCurrentTotalDigits jm_setCurrentTotalDigits :jm_getCurrentTotalDigits jm_getCurrentTotalDigits :jm_getMaxDigits jm_getMaxDigits})


