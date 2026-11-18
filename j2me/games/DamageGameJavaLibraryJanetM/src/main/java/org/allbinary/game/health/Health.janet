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
# package org.allbinary.game.health

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- ForcedLogUtil/jm_log [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/ForcedLogUtil" "jm_log" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- NullHealthListener/jstatic_NULL_HEALTH_LISTENER [& args] (JR/call jfile "./NullHealthListener" "jstatic_NULL_HEALTH_LISTENER" args))

# Java class Health
(var jproto nil)
(var jcell_NULL_HEALTH :jnone)
(var jstatic_NULL_HEALTH nil)
(var jsetstatic_NULL_HEALTH nil)
(var jcell_NAME :jnone)
(var jstatic_NAME nil)
(var jsetstatic_NAME nil)
(var jcell_HEALTH_LABEL :jnone)
(var jstatic_HEALTH_LABEL nil)
(var jsetstatic_HEALTH_LABEL nil)
(var jcell_MAX_HEALTH_LABEL :jnone)
(var jstatic_MAX_HEALTH_LABEL nil)
(var jsetstatic_MAX_HEALTH_LABEL nil)
(var jnew_1 nil)
(var jm_heal nil)
(var jm_healMax nil)
(var jm_isDamaged nil)
(var jm_damage nil)
(var jm_isAlive nil)
(var jm_getMaxHealth nil)
(var jm_setMaxHealth nil)
(var jm_setHealth nil)
(var jm_getHealth nil)
(var jm_addListener nil)
(var jm_toString nil)

(set jstatic_NULL_HEALTH (fn jstatic_NULL_HEALTH []
  (when (= jcell_NULL_HEALTH :jnone) (set jcell_NULL_HEALTH (jnew_1 0)))
  jcell_NULL_HEALTH))
(set jsetstatic_NULL_HEALTH (fn jsetstatic_NULL_HEALTH [value] (set jcell_NULL_HEALTH value)))

(set jstatic_NAME (fn jstatic_NAME []
  (when (= jcell_NAME :jnone) (set jcell_NAME "Health Resource"))
  jcell_NAME))
(set jsetstatic_NAME (fn jsetstatic_NAME [value] (set jcell_NAME value)))

(set jstatic_HEALTH_LABEL (fn jstatic_HEALTH_LABEL []
  (when (= jcell_HEALTH_LABEL :jnone) (set jcell_HEALTH_LABEL "Health: "))
  jcell_HEALTH_LABEL))
(set jsetstatic_HEALTH_LABEL (fn jsetstatic_HEALTH_LABEL [value] (set jcell_HEALTH_LABEL value)))

(set jstatic_MAX_HEALTH_LABEL (fn jstatic_MAX_HEALTH_LABEL []
  (when (= jcell_MAX_HEALTH_LABEL :jnone) (set jcell_MAX_HEALTH_LABEL " Max: "))
  jcell_MAX_HEALTH_LABEL))
(set jsetstatic_MAX_HEALTH_LABEL (fn jsetstatic_MAX_HEALTH_LABEL [value] (set jcell_MAX_HEALTH_LABEL value)))

    
(set jnew_1 (fn jnew_1 [_maxHealth]
    (var this (table/setproto @{:jclass "Health" :f_health 0 :f_maxHealth 0 :f_healthListenerInterface nil} jproto))
    
    
    (put this :f_healthListenerInterface (NullHealthListener/jstatic_NULL_HEALTH_LISTENER))
        (:jm_setMaxHealth this _maxHealth)
        (:jm_setHealth this _maxHealth)
    this))
    
(set jm_heal (fn jm_heal [this _ahealth]
        (var _newHealth (JR/i32 (+ (:jm_getHealth this) _ahealth)))
        (if (> _newHealth (:jm_getMaxHealth this))
            (do
            (:jm_setHealth this (:jm_getMaxHealth this)))
            (do
            (:jm_setHealth this _newHealth)))))
    
(set jm_healMax (fn jm_healMax [this]
        (:jm_setHealth this (:jm_getMaxHealth this))))
    
(set jm_isDamaged (fn jm_isDamaged [this]
    (label jreturn
        (if (not= (:jm_getHealth this) (:jm_getMaxHealth this))
            (do
            (return jreturn true))
            (do
            (return jreturn false))))))
    
(set jm_damage (fn jm_damage [this _ahealth]
    (label jreturn
        (if (< _ahealth 0)
            (do
            (var _stringBuffer (StringMaker/jnew_0))
            (:jm_append _stringBuffer "******* Trying to heal when damaging. Damage: ")
            (:jm_appendint _stringBuffer _ahealth)
            (:jm_append _stringBuffer ((CommonSeps/jm_getInstance) :f_SPACE))
            (:jm_append _stringBuffer (:jm_toString this))
            (ForcedLogUtil/jm_log (:jm_toString _stringBuffer) this)
            (return jreturn)))
        (var _health (JR/i32 (- (:jm_getHealth this) _ahealth)))
        (:jm_setHealth this _health))))
    
(set jm_isAlive (fn jm_isAlive [this]
    (label jreturn
        (if (<= (:jm_getHealth this) 0)
            (do
            (return jreturn false))
            (do
            (return jreturn true))))))
    
(set jm_getMaxHealth (fn jm_getMaxHealth [this]
    (label jreturn
        (return jreturn (this :f_maxHealth)))))
    
(set jm_setMaxHealth (fn jm_setMaxHealth [this _maxHealth]
        (set (this :f_maxHealth) _maxHealth)))
    
(set jm_setHealth (fn jm_setHealth [this _health]
        (if (> _health (:jm_getMaxHealth this))
            (do
            (set (this :f_health) (:jm_getMaxHealth this)))
            (if (< _health 0)
            (do
            (set (this :f_health) 0))
            (do
            (set (this :f_health) _health))))
        (if (not (nil? (this :f_healthListenerInterface)))
            (do
            (:jm_onHealthChange (this :f_healthListenerInterface))))))
    
(set jm_getHealth (fn jm_getHealth [this]
    (label jreturn
        (return jreturn (this :f_health)))))
    
(set jm_addListener (fn jm_addListener [this _healthGraphic]
        (set (this :f_healthListenerInterface) _healthGraphic)))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer (jstatic_HEALTH_LABEL))
        (:jm_appendint _stringBuffer (this :f_health))
        (:jm_append _stringBuffer (jstatic_MAX_HEALTH_LABEL))
        (:jm_appendint _stringBuffer (this :f_maxHealth))
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto @{:jm_heal jm_heal :jm_healMax jm_healMax :jm_isDamaged jm_isDamaged :jm_damage jm_damage :jm_isAlive jm_isAlive :jm_getMaxHealth jm_getMaxHealth :jm_setMaxHealth jm_setMaxHealth :jm_setHealth jm_setHealth :jm_getHealth jm_getHealth :jm_addListener jm_addListener :jm_toString jm_toString})


