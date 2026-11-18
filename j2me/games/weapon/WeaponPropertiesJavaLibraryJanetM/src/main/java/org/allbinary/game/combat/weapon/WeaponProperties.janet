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
# package org.allbinary.game.combat.weapon

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- PreLogUtil/jm_put [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/PreLogUtil" "jm_put" args))
(defn- BasicDecimal/jnew_1 [& args] (JR/call jfile "../../../../../org/allbinary/logic/math/BasicDecimal" "jnew_1" args))
(defn- BasicDecimal/jstatic_ZERO_BIGDECIMAL [& args] (JR/call jfile "../../../../../org/allbinary/logic/math/BasicDecimal" "jstatic_ZERO_BIGDECIMAL" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(import ./SimpleWeaponProperties :as SimpleWeaponProperties)

# Java class WeaponProperties
(var jproto nil)
(var jcell_NULL_WEAPON_PROPERTIES :jnone)
(var jstatic_NULL_WEAPON_PROPERTIES nil)
(var jsetstatic_NULL_WEAPON_PROPERTIES nil)
(var jcell_messageSent :jnone)
(var jstatic_messageSent nil)
(var jsetstatic_messageSent nil)
(var jcell_DAMAGE :jnone)
(var jstatic_DAMAGE nil)
(var jsetstatic_DAMAGE nil)
(var jcell_RANGE :jnone)
(var jstatic_RANGE nil)
(var jsetstatic_RANGE nil)
(var jcell_RELOAD :jnone)
(var jstatic_RELOAD nil)
(var jsetstatic_RELOAD nil)
(var jnew_5 nil)
(var jm_setReloadTime nil)
(var jm_getReloadTime nil)
(var jm_setTargetingTime nil)
(var jm_getTargetingTime nil)
(var jm_getSpeed nil)
(var jm_setSpeed nil)
(var jm_getDamageI nil)
(var jm_toStringArray nil)
(var jm_toString nil)

(set jstatic_NULL_WEAPON_PROPERTIES (fn jstatic_NULL_WEAPON_PROPERTIES []
  (when (= jcell_NULL_WEAPON_PROPERTIES :jnone) (set jcell_NULL_WEAPON_PROPERTIES (jnew_5 0 0 0 0 (JR/i16 0))))
  jcell_NULL_WEAPON_PROPERTIES))
(set jsetstatic_NULL_WEAPON_PROPERTIES (fn jsetstatic_NULL_WEAPON_PROPERTIES [value] (set jcell_NULL_WEAPON_PROPERTIES value)))

(set jstatic_messageSent (fn jstatic_messageSent []
  (when (= jcell_messageSent :jnone) (set jcell_messageSent false))
  jcell_messageSent))
(set jsetstatic_messageSent (fn jsetstatic_messageSent [value] (set jcell_messageSent value)))

(set jstatic_DAMAGE (fn jstatic_DAMAGE []
  (when (= jcell_DAMAGE :jnone) (set jcell_DAMAGE "Damage: "))
  jcell_DAMAGE))
(set jsetstatic_DAMAGE (fn jsetstatic_DAMAGE [value] (set jcell_DAMAGE value)))

(set jstatic_RANGE (fn jstatic_RANGE []
  (when (= jcell_RANGE :jnone) (set jcell_RANGE "Range: "))
  jcell_RANGE))
(set jsetstatic_RANGE (fn jsetstatic_RANGE [value] (set jcell_RANGE value)))

(set jstatic_RELOAD (fn jstatic_RELOAD []
  (when (= jcell_RELOAD :jnone) (set jcell_RELOAD "Reload: "))
  jcell_RELOAD))
(set jsetstatic_RELOAD (fn jsetstatic_RELOAD [value] (set jcell_RELOAD value)))

    
(set jnew_5 (fn jnew_5 [_reloadTime _targetingTime _speed _damage _dissipation]
    (var this (table/setproto @{:jclass "WeaponProperties" :f_reloadTime 0 :f_targetingTime 0 :f_speed nil :f_MAX 0 :f_ZERO 0} jproto))
    
    
    (put this :f_speed (BasicDecimal/jstatic_ZERO_BIGDECIMAL))
    (put this :f_MAX 10240)
    (put this :f_ZERO 0)
    (JR/superInit this (SimpleWeaponProperties/jnew_0))
        (if (and (and (< _speed (this :f_MAX)) (not= _speed 0)) (not (jstatic_messageSent)))
            (do
            (var _MESSAGE "Danger Danger Danger: Speed probably to slow if using 1 degree calculations as velocity for a single axis could be below 1024: ")
            (var _commonStrings (CommonStrings/jm_getInstance))
            (PreLogUtil/jm_put (:jm_toString (:jm_appendlong (:jm_append (StringMaker/jnew_0) _MESSAGE) _speed)) this (_commonStrings :f_CONSTRUCTOR))
            (set jcell_messageSent true)))
        (:jm_setReloadTime this _reloadTime)
        (:jm_setTargetingTime this _targetingTime)
        (:jm_setDamage this _damage)
        (:jm_setDissipation this _dissipation)
        (:jm_setSpeed this (BasicDecimal/jnew_1 _speed))
        (if (not= _dissipation (this :f_ZERO))
            (do
            (var _unscaledDamage (JR/i32 (* (:jm_getUnscaled (this :f_speed)) _damage)))
            (var _scaledDissipation (JR/i32 (* _dissipation (:jm_getScaledFactorValue (this :f_speed)))))
            (var _value (JR/ldiv _unscaledDamage _scaledDissipation))
            (:jm_setRange this (JR/idiv (JR/i32 (* _value 9)) 10))))
    this))
    
(set jm_setReloadTime (fn jm_setReloadTime [this _reloadTime]
        (set (this :f_reloadTime) _reloadTime)))
    
(set jm_getReloadTime (fn jm_getReloadTime [this]
    (label jreturn
        (return jreturn (this :f_reloadTime)))))
    
(set jm_setTargetingTime (fn jm_setTargetingTime [this _targetingTime]
        (set (this :f_targetingTime) _targetingTime)))
    
(set jm_getTargetingTime (fn jm_getTargetingTime [this]
    (label jreturn
        (return jreturn (this :f_targetingTime)))))
    
(set jm_getSpeed (fn jm_getSpeed [this]
    (label jreturn
        (return jreturn (this :f_speed)))))
    
(set jm_setSpeed (fn jm_setSpeed [this _speed]
        (set (this :f_speed) _speed)))
    
(set jm_getDamageI (fn jm_getDamageI [this _range]
    (label jreturn
        (return jreturn (JR/i32 (- (:jm_getDamage this) (JR/idiv (JR/i32 (* (:jm_getDissipation this) _range)) (:jm_getScaled (this :f_speed)))))))))
    
(set jm_toStringArray (fn jm_toStringArray [this]
    (label jreturn
        (var _index 0)
        (var _stringArray (array/new-filled 3 nil))
        (var _stringBuffer (StringMaker/jnew_0))
        (set (_stringArray (do (def jold _index) (set _index (JR/i32 (+ _index 1))) jold)) (:jm_toString (:jm_appendint (:jm_append _stringBuffer (jstatic_DAMAGE)) (:jm_getDamage this))))
        (:jm_delete _stringBuffer 0 (:jm_length _stringBuffer))
        (set (_stringArray (do (def jold _index) (set _index (JR/i32 (+ _index 1))) jold)) (:jm_toString (:jm_appendint (:jm_append _stringBuffer (jstatic_RANGE)) (:jm_getRange this))))
        (:jm_delete _stringBuffer 0 (:jm_length _stringBuffer))
        (set (_stringArray (do (def jold _index) (set _index (JR/i32 (+ _index 1))) jold)) (:jm_toString (:jm_appendlong (:jm_append _stringBuffer (jstatic_RELOAD)) (:jm_getReloadTime this))))
        (return jreturn _stringArray))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_appendint (:jm_append _stringBuffer (jstatic_DAMAGE)) (:jm_getDamage this))
        (:jm_append _stringBuffer ((CommonSeps/jm_getInstance) :f_SPACE))
        (:jm_appendint (:jm_append _stringBuffer (jstatic_RANGE)) (:jm_getRange this))
        (:jm_append _stringBuffer ((CommonSeps/jm_getInstance) :f_SPACE))
        (:jm_appendlong (:jm_append _stringBuffer (jstatic_RELOAD)) (:jm_getReloadTime this))
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto (table/setproto @{:jm_setReloadTime jm_setReloadTime :jm_getReloadTime jm_getReloadTime :jm_setTargetingTime jm_setTargetingTime :jm_getTargetingTime jm_getTargetingTime :jm_getSpeed jm_getSpeed :jm_setSpeed jm_setSpeed :jm_getDamageI jm_getDamageI :jm_toStringArray jm_toStringArray :jm_toString jm_toString} SimpleWeaponProperties/jproto))


