# Generated Code Do Not Modify
# package org.allbinary.logic.math

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class MathUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getTotalDigits nil)
(var jm_sqrt nil)
(var jm_sqrtd nil)
(var jm_abs nil)
(var jm_abslong nil)
(var jm_min nil)
(var jm_max nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "MathUtil" :f_ACCURACY 0} jproto))
    (put this :f_ACCURACY 100)
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_getTotalDigits (fn jm_getTotalDigits [this _digits]
    (var _digits _digits)
    (label jreturn
        (var _total 0)
        (do
            (while (> _digits 0)
                (do
            (set _digits (JR/idiv _digits 10))
            (set _total (JR/i32 (+ _total 1))))))
        (return jreturn _total))))
    
(set jm_sqrt (fn jm_sqrt [this _value]
    (label jreturn
        (if (<= _value 1)
            (do
            (return jreturn _value)))
        (var _accumulated (brshift _value 1))
        (var _result (brshift (JR/i32 (+ _accumulated (JR/idiv _value _accumulated))) 1))
        (do
            (var jfirst true)
            (while (or jfirst (> _accumulated _result))
                (set jfirst false)
                (do
            (set _accumulated _result)
            (set _result (brshift (JR/i32 (+ _accumulated (JR/idiv _value _accumulated))) 1)))))
        (return jreturn _accumulated))))
    
(set jm_sqrtd (fn jm_sqrtd [this _x]
    (label jreturn
        (if (= _x 0)
            (do
            (return jreturn 0.0)))
        (if (< _x 0)
            (do
            (return jreturn (- 1.0))))
        (var _result _x)
        (do
            (var _index 0)
            (while (< _index (this :f_ACCURACY))
                (do
            (set _result (/ (+ _result (/ _x _result)) 2)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn _result))))
    
(set jm_abs (fn jm_abs [this _value]
    (label jreturn
        (return jreturn (if (< _value 0) (JR/i32 (- _value)) _value)))))
    
(set jm_abslong (fn jm_abslong [this _value]
    (label jreturn
        (return jreturn (if (< _value 0) (- _value) _value)))))
    
(set jm_min (fn jm_min [this _value _value2]
    (label jreturn
        (return jreturn (if (<= _value _value2) _value _value2)))))
    
(set jm_max (fn jm_max [this _value _value2]
    (label jreturn
        (return jreturn (if (>= _value _value2) _value _value2)))))

(set jproto @{:jm_getTotalDigits jm_getTotalDigits :jm_sqrt jm_sqrt :jm_sqrtd jm_sqrtd :jm_abs jm_abs :jm_abslong jm_abslong :jm_min jm_min :jm_max jm_max})


