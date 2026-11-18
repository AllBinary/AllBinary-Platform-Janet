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
# package org.allbinary.game.configuration

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- GameFeatureEvent/jnew_2 [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/event/GameFeatureEvent" "jnew_2" args))
(defn- GameFeatureEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/event/GameFeatureEventHandler" "jm_getInstance" args))
(defn- BooleanFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/java/bool/BooleanFactory" "jm_getInstance" args))
(defn- SmallIntegerSingletonFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(import ../../../../java/lang/Integer :as Integer)
(import ../../../../java/lang/Boolean :as Boolean)
(defn- GameConfigurationSingleton/jm_getInstance [& args] (JR/call jfile "./GameConfigurationSingleton" "jm_getInstance" args))

# Java class GameConfiguration
(var jproto nil)
(var jcell_MIN_VALUE :jnone)
(var jstatic_MIN_VALUE nil)
(var jsetstatic_MIN_VALUE nil)
(var jnew_4 nil)
(var jm_setValue nil)
(var jm_getValue nil)
(var jm_setMaxValue nil)
(var jm_getMaxValue nil)
(var jm_setMinValue nil)
(var jm_getMinValue nil)
(var jm_setName nil)
(var jm_getName nil)
(var jm_setDefaultValue nil)
(var jm_getDefaultValue nil)
(var jm_setDefault nil)
(var jm_toString nil)
(var jm_setModifiable nil)
(var jm_isModifiable nil)

(set jstatic_MIN_VALUE (fn jstatic_MIN_VALUE []
  (when (= jcell_MIN_VALUE :jnone) (set jcell_MIN_VALUE (Integer/jstatic_MIN_VALUE)))
  jcell_MIN_VALUE))
(set jsetstatic_MIN_VALUE (fn jsetstatic_MIN_VALUE [value] (set jcell_MIN_VALUE value)))

    
(set jnew_4 (fn jnew_4 [_name _defaultValue _minValue _maxValue]
    (var this (table/setproto @{:jclass "GameConfiguration" :f_name nil :f_defaultValue nil :f_value nil :f_minValue nil :f_maxValue nil :f_modifiable nil} jproto))
    (put this :f_name ((StringUtil/jm_getInstance) :f_EMPTY_STRING))
    (put this :f_defaultValue (:jm_getAt (SmallIntegerSingletonFactory/jm_getInstance) 0))
    (put this :f_value (jstatic_MIN_VALUE))
    (put this :f_minValue (this :f_defaultValue))
    (put this :f_maxValue (this :f_defaultValue))
    (put this :f_modifiable ((BooleanFactory/jm_getInstance) :f_TRUE))
        (:jm_setName this _name)
        (:jm_setDefaultValue this _defaultValue)
        (set (this :f_value) (:jm_getDefaultValue this))
        (:jm_setMinValue this _minValue)
        (:jm_setMaxValue this _maxValue)
        (JR/className (:jm_getHashtable (GameConfigurationSingleton/jm_getInstance)))
    this))
    
(set jm_setValue (fn jm_setValue [this _value]
        (if (not= (this :f_value) _value)
            (do
            (var _oldValue (this :f_value))
            (set (this :f_value) _value)
            (:jm_fireEvent (GameFeatureEventHandler/jm_getInstance) (GameFeatureEvent/jnew_2 this (:jm_toString (:jm_appendint (:jm_append (:jm_appendint (:jm_append (:jm_append (StringMaker/jnew_0) (this :f_name)) " value: from: ") (:jm_intValue _oldValue)) " to ") (:jm_intValue (this :f_value))))))))))
    
(set jm_getValue (fn jm_getValue [this]
    (label jreturn
        (return jreturn (this :f_value)))))
    
(set jm_setMaxValue (fn jm_setMaxValue [this _maxValue]
        (set (this :f_maxValue) _maxValue)))
    
(set jm_getMaxValue (fn jm_getMaxValue [this]
    (label jreturn
        (return jreturn (this :f_maxValue)))))
    
(set jm_setMinValue (fn jm_setMinValue [this _minValue]
        (set (this :f_minValue) _minValue)))
    
(set jm_getMinValue (fn jm_getMinValue [this]
    (label jreturn
        (return jreturn (this :f_minValue)))))
    
(set jm_setName (fn jm_setName [this _name]
        (set (this :f_name) _name)))
    
(set jm_getName (fn jm_getName [this]
    (label jreturn
        (return jreturn (this :f_name)))))
    
(set jm_setDefaultValue (fn jm_setDefaultValue [this _defaultValue]
        (set (this :f_defaultValue) _defaultValue)))
    
(set jm_getDefaultValue (fn jm_getDefaultValue [this]
    (label jreturn
        (return jreturn (this :f_defaultValue)))))
    
(set jm_setDefault (fn jm_setDefault [this]
        (:jm_setValue this (:jm_getDefaultValue this))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (:jm_append _stringBuffer "Name: ")
        (:jm_append _stringBuffer (this :f_name))
        (:jm_append _stringBuffer " Min: ")
        (:jm_appendint _stringBuffer (:jm_intValue (:jm_getMinValue this)))
        (:jm_append _stringBuffer " Max: ")
        (:jm_appendint _stringBuffer (:jm_intValue (:jm_getMaxValue this)))
        (:jm_append _stringBuffer " Value: ")
        (:jm_appendint _stringBuffer (:jm_intValue (:jm_getValue this)))
        (:jm_append _stringBuffer " Default: ")
        (:jm_appendint _stringBuffer (:jm_intValue (:jm_getDefaultValue this)))
        (:jm_append _stringBuffer " Modifiable: ")
        (:jm_appendboolean _stringBuffer (:jm_booleanValue (:jm_isModifiable this)))
        (return jreturn (:jm_toString _stringBuffer)))))
    
(set jm_setModifiable (fn jm_setModifiable [this _modifiable]
        (set (this :f_modifiable) _modifiable)))
    
(set jm_isModifiable (fn jm_isModifiable [this]
    (label jreturn
        (return jreturn (this :f_modifiable)))))

(set jproto @{:jm_setValue jm_setValue :jm_getValue jm_getValue :jm_setMaxValue jm_setMaxValue :jm_getMaxValue jm_getMaxValue :jm_setMinValue jm_setMinValue :jm_getMinValue jm_getMinValue :jm_setName jm_setName :jm_getName jm_getName :jm_setDefaultValue jm_setDefaultValue :jm_getDefaultValue jm_getDefaultValue :jm_setDefault jm_setDefault :jm_toString jm_toString :jm_setModifiable jm_setModifiable :jm_isModifiable jm_isModifiable})


