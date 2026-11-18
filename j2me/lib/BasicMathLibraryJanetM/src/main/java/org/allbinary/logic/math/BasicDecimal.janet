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
(defn- ScaleFactorFactory/jm_getInstance [& args] (JR/call jfile "./ScaleFactorFactory" "jm_getInstance" args))

# Java class BasicDecimal
(var jproto nil)
(var jcell_ZERO_BIGDECIMAL :jnone)
(var jstatic_ZERO_BIGDECIMAL nil)
(var jsetstatic_ZERO_BIGDECIMAL nil)
(var jnew_1 nil)
(var jm_createBigDecimal nil)
(var jm_setint nil)
(var jm_setlong nil)
(var jm_set nil)
(var jm_addint nil)
(var jm_addlong nil)
(var jm_add nil)
(var jm_subtractint nil)
(var jm_subtractlong nil)
(var jm_subtract nil)
(var jm_multiplyint nil)
(var jm_multiplylong nil)
(var jm_multiply nil)
(var jm_divideint nil)
(var jm_dividelong nil)
(var jm_divide nil)
(var jm_getUnscaled nil)
(var jm_updateScaled nil)
(var jm_getScaled nil)
(var jm_toString nil)
(var jm_getScaledFactor nil)
(var jm_getScaledFactorValue nil)

(set jstatic_ZERO_BIGDECIMAL (fn jstatic_ZERO_BIGDECIMAL []
  (when (= jcell_ZERO_BIGDECIMAL :jnone) (set jcell_ZERO_BIGDECIMAL (jnew_1 0)))
  jcell_ZERO_BIGDECIMAL))
(set jsetstatic_ZERO_BIGDECIMAL (fn jsetstatic_ZERO_BIGDECIMAL [value] (set jcell_ZERO_BIGDECIMAL value)))

    
(set jm_createBigDecimal (fn jm_createBigDecimal [_bigDecimal]
    (label jreturn
        (return jreturn (jnew_1 (:jm_getUnscaled _bigDecimal))))))
    
(set jnew_1 (fn jnew_1 [_units]
    (var this (table/setproto @{:jclass "BasicDecimal" :f_units 0 :f_scaled 0 :f_factor 0 :f_factorValue 0} jproto))
    
    
    (put this :f_factor ((ScaleFactorFactory/jm_getInstance) :f_DEFAULT_SCALE_FACTOR))
    (put this :f_factorValue ((ScaleFactorFactory/jm_getInstance) :f_DEFAULT_SCALE_VALUE))
        (set (this :f_units) _units)
        (:jm_updateScaled this)
    this))
    
(set jm_setint (fn jm_setint [this _value]
        (set (this :f_units) _value)
        (:jm_updateScaled this)))
    
(set jm_setlong (fn jm_setlong [this _value]
        (set (this :f_units) _value)
        (:jm_updateScaled this)))
    
(set jm_set (fn jm_set [this _bigDecimal]
        (set (this :f_units) (:jm_getUnscaled _bigDecimal))
        (:jm_updateScaled this)))
    
(set jm_addint (fn jm_addint [this _value]
        (set (this :f_units) (+ (this :f_units) _value))
        (:jm_updateScaled this)))
    
(set jm_addlong (fn jm_addlong [this _value]
        (set (this :f_units) (+ (this :f_units) _value))
        (:jm_updateScaled this)))
    
(set jm_add (fn jm_add [this _bigDecimal]
        (set (this :f_units) (+ (this :f_units) (:jm_getUnscaled _bigDecimal)))
        (:jm_updateScaled this)))
    
(set jm_subtractint (fn jm_subtractint [this _value]
        (set (this :f_units) (- (this :f_units) _value))
        (:jm_updateScaled this)))
    
(set jm_subtractlong (fn jm_subtractlong [this _value]
        (set (this :f_units) (- (this :f_units) _value))
        (:jm_updateScaled this)))
    
(set jm_subtract (fn jm_subtract [this _bigDecimal]
        (set (this :f_units) (- (this :f_units) (:jm_getUnscaled _bigDecimal)))
        (:jm_updateScaled this)))
    
(set jm_multiplyint (fn jm_multiplyint [this _value]
        (set (this :f_units) (* (this :f_units) _value))
        (:jm_updateScaled this)))
    
(set jm_multiplylong (fn jm_multiplylong [this _value]
        (set (this :f_units) (* (this :f_units) _value))
        (:jm_updateScaled this)))
    
(set jm_multiply (fn jm_multiply [this _bigDecimal]
        (set (this :f_units) (* (this :f_units) (:jm_getUnscaled _bigDecimal)))
        (:jm_updateScaled this)))
    
(set jm_divideint (fn jm_divideint [this _value]
        (set (this :f_units) (JR/ldiv (this :f_units) _value))
        (:jm_updateScaled this)))
    
(set jm_dividelong (fn jm_dividelong [this _value]
        (set (this :f_units) (JR/ldiv (this :f_units) _value))
        (:jm_updateScaled this)))
    
(set jm_divide (fn jm_divide [this _bigDecimal]
        (set (this :f_units) (JR/ldiv (this :f_units) (:jm_getUnscaled _bigDecimal)))
        (:jm_updateScaled this)))
    
(set jm_getUnscaled (fn jm_getUnscaled [this]
    (label jreturn
        (return jreturn (this :f_units)))))
    
(set jm_updateScaled (fn jm_updateScaled [this]
        (set (this :f_scaled) (JR/i32 (JR/ldiv (this :f_units) (this :f_factorValue))))))
    
(set jm_getScaled (fn jm_getScaled [this]
    (label jreturn
        (return jreturn (this :f_scaled)))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (return jreturn (JR/str (this :f_units))))))
    
(set jm_getScaledFactor (fn jm_getScaledFactor [this]
    (label jreturn
        (return jreturn (this :f_factor)))))
    
(set jm_getScaledFactorValue (fn jm_getScaledFactorValue [this]
    (label jreturn
        (return jreturn (this :f_factorValue)))))

(set jproto @{:jm_setint jm_setint :jm_setlong jm_setlong :jm_set jm_set :jm_addint jm_addint :jm_addlong jm_addlong :jm_add jm_add :jm_subtractint jm_subtractint :jm_subtractlong jm_subtractlong :jm_subtract jm_subtract :jm_multiplyint jm_multiplyint :jm_multiplylong jm_multiplylong :jm_multiply jm_multiply :jm_divideint jm_divideint :jm_dividelong jm_dividelong :jm_divide jm_divide :jm_getUnscaled jm_getUnscaled :jm_updateScaled jm_updateScaled :jm_getScaled jm_getScaled :jm_toString jm_toString :jm_getScaledFactor jm_getScaledFactor :jm_getScaledFactorValue jm_getScaledFactorValue})


