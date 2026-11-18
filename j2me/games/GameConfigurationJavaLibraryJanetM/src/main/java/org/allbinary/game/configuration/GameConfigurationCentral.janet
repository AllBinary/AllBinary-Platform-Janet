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
(defn- GameConfigurationPersistanceSingleton/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/persistance/GameConfigurationPersistanceSingleton" "jm_getInstance" args))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- SmallIntegerSingletonFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonSeps/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonSeps" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(import ../../../../java/lang/Integer :as Integer)
(defn- GameConfiguration/jnew_4 [& args] (JR/call jfile "./GameConfiguration" "jnew_4" args))

# Java class GameConfigurationCentral
(var jproto nil)
(var jcell_SINGLETON :jnone)
(var jstatic_SINGLETON nil)
(var jsetstatic_SINGLETON nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_load nil)
(var jm_setGameControlFidelity nil)
(var jm_getGameControlFidelity nil)
(var jm_toString nil)

(set jstatic_SINGLETON (fn jstatic_SINGLETON []
  (when (= jcell_SINGLETON :jnone) (set jcell_SINGLETON ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))
  jcell_SINGLETON))
(set jsetstatic_SINGLETON (fn jsetstatic_SINGLETON [value] (set jcell_SINGLETON value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (if (= (jstatic_SINGLETON) ((NullUtil/jm_getInstance) :f_NULL_OBJECT))
            (do
            (set jcell_SINGLETON (jnew_0))))
        (return jreturn (jstatic_SINGLETON)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameConfigurationCentral" :f_logUtil nil :f_SCALE nil :f_ORIENTATION nil :f_SENSOR_UPDATE_RATE nil :f_VIBRATION nil :f_CHALLENGE_LEVEL nil :f_COLLIDE_DAMAGE nil :f_DURABILITY_CHALLENGE_LEVEL nil :f_SPEED_CHALLENGE_LEVEL nil :f_ATTACK_CHALLENGE_LEVEL nil :f_CONTROL_LEVEL nil :f_PLAYER_INPUT_WAIT nil :f_SPEED nil :f_SOUND_VOLUME nil :f_MAX_GAME_OBJECTS nil :f_MAX_LAYERS nil :f_gameControlFidelity 0} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    (put this :f_gameControlFidelity 36)
        (var _smallIntegerSingletonFactory (SmallIntegerSingletonFactory/jm_getInstance))
        (set (this :f_SCALE) (GameConfiguration/jnew_4 "Scale" (:jm_getAt _smallIntegerSingletonFactory 2) (:jm_getAt _smallIntegerSingletonFactory 2) (:jm_getAt _smallIntegerSingletonFactory 3)))
        (set (this :f_ORIENTATION) (GameConfiguration/jnew_4 "Orientation" (:jm_getAt _smallIntegerSingletonFactory 0) (:jm_getAt _smallIntegerSingletonFactory 0) (:jm_getAt _smallIntegerSingletonFactory 8)))
        (set (this :f_SENSOR_UPDATE_RATE) (GameConfiguration/jnew_4 "Sensor Update Rate" (:jm_getAt _smallIntegerSingletonFactory 0) (:jm_getAt _smallIntegerSingletonFactory 0) (:jm_getAt _smallIntegerSingletonFactory 3)))
        (set (this :f_VIBRATION) (GameConfiguration/jnew_4 "Vibration" (:jm_getAt _smallIntegerSingletonFactory 0) (:jm_getAt _smallIntegerSingletonFactory 0) (:jm_getAt _smallIntegerSingletonFactory 3)))
        (set (this :f_CHALLENGE_LEVEL) (GameConfiguration/jnew_4 "Global Challenge Level" (:jm_getAt _smallIntegerSingletonFactory 3) (:jm_getAt _smallIntegerSingletonFactory 1) (:jm_getAt _smallIntegerSingletonFactory 10)))
        (set (this :f_COLLIDE_DAMAGE) (GameConfiguration/jnew_4 "Collide Damage Challenge Level" (:jm_getAt _smallIntegerSingletonFactory 3) (:jm_getAt _smallIntegerSingletonFactory 1) (:jm_getAt _smallIntegerSingletonFactory 10)))
        (set (this :f_DURABILITY_CHALLENGE_LEVEL) (GameConfiguration/jnew_4 "Enemy Durability Challenge Level" (:jm_getAt _smallIntegerSingletonFactory 3) (:jm_getAt _smallIntegerSingletonFactory 1) (:jm_getAt _smallIntegerSingletonFactory 10)))
        (set (this :f_SPEED_CHALLENGE_LEVEL) (GameConfiguration/jnew_4 "Enemy Speed Challenge Level" (:jm_getAt _smallIntegerSingletonFactory 3) (:jm_getAt _smallIntegerSingletonFactory 1) (:jm_getAt _smallIntegerSingletonFactory 10)))
        (set (this :f_ATTACK_CHALLENGE_LEVEL) (GameConfiguration/jnew_4 "Enemy Attack Challenge Level" (:jm_getAt _smallIntegerSingletonFactory 3) (:jm_getAt _smallIntegerSingletonFactory 1) (:jm_getAt _smallIntegerSingletonFactory 10)))
        (set (this :f_CONTROL_LEVEL) (GameConfiguration/jnew_4 "Control Fidelity" (:jm_getAt _smallIntegerSingletonFactory 5) (:jm_getAt _smallIntegerSingletonFactory 1) (:jm_getAt _smallIntegerSingletonFactory 10)))
        (set (this :f_PLAYER_INPUT_WAIT) (GameConfiguration/jnew_4 "Input Wait" (:jm_getAt _smallIntegerSingletonFactory 5) (:jm_getAt _smallIntegerSingletonFactory 1) (:jm_getAt _smallIntegerSingletonFactory 10)))
        (set (this :f_SPEED) (GameConfiguration/jnew_4 "Game Speed (Device Specific)" (:jm_getAt _smallIntegerSingletonFactory 5) (:jm_getAt _smallIntegerSingletonFactory 1) (:jm_getAt _smallIntegerSingletonFactory 10)))
        (set (this :f_SOUND_VOLUME) (GameConfiguration/jnew_4 "Sound Volume" (:jm_getAt _smallIntegerSingletonFactory 6) (:jm_getAt _smallIntegerSingletonFactory 0) (:jm_getAt _smallIntegerSingletonFactory 10)))
        (set (this :f_MAX_GAME_OBJECTS) (GameConfiguration/jnew_4 "Max Game Objects" (:jm_getAt _smallIntegerSingletonFactory 20) (:jm_getAt _smallIntegerSingletonFactory 1) (:jm_getAt _smallIntegerSingletonFactory 50)))
        (set (this :f_MAX_LAYERS) (GameConfiguration/jnew_4 "Max Layers" (:jm_getAt _smallIntegerSingletonFactory 20) (:jm_getAt _smallIntegerSingletonFactory 1) (:jm_getAt _smallIntegerSingletonFactory 50)))
    this))
    
(set jm_load (fn jm_load [this _abeClientInformation]
        (var _commonStrings (CommonStrings/jm_getInstance))
        (try
            (do
            (var _smallIntegerSingletonFactory (SmallIntegerSingletonFactory/jm_getInstance))
            (var _keyValuePersistance (GameConfigurationPersistanceSingleton/jm_getInstance))
            (:jm_clear _keyValuePersistance)
            (:jm_loadAll _keyValuePersistance _abeClientInformation)
            (var _list (:jm_getIds _keyValuePersistance))
            (if (> (:jm_size _list) 0)
                (do
                (var _hashtable (:jm_get _keyValuePersistance 0))
                (var _anyType (:jm_getName (this :f_SCALE)))
                (var _value (:jm_get _hashtable _anyType))
                (:jm_setValue (this :f_SCALE) (:jm_getAt _smallIntegerSingletonFactory (JR/className _value))))
                (do
                (:jm_putF (this :f_logUtil) "No Game Configuration To Load" this (_commonStrings :f_LOAD)))))
            ([_e] (do
            (:jm_put (this :f_logUtil) (_commonStrings :f_EXCEPTION) this (_commonStrings :f_LOAD) _e))))))
    
(set jm_setGameControlFidelity (fn jm_setGameControlFidelity [this _gameControlFidelity]
        (set (this :f_gameControlFidelity) _gameControlFidelity)))
    
(set jm_getGameControlFidelity (fn jm_getGameControlFidelity [this]
    (label jreturn
        (return jreturn (this :f_gameControlFidelity)))))
    
(set jm_toString (fn jm_toString [this]
    (label jreturn
        (var _stringBuffer (StringMaker/jnew_0))
        (var _commonStrings (CommonSeps/jm_getInstance))
        (:jm_append _stringBuffer (_commonStrings :f_COMMA_SEP))
        (:jm_append _stringBuffer (:jm_getName (this :f_SCALE)))
        (:jm_append _stringBuffer (_commonStrings :f_EQUALS))
        (:jm_appendint _stringBuffer (JR/className (:jm_getValue (this :f_SCALE))))
        (:jm_append _stringBuffer (_commonStrings :f_COMMA_SEP))
        (:jm_append _stringBuffer (:jm_getName (this :f_ORIENTATION)))
        (:jm_append _stringBuffer (_commonStrings :f_EQUALS))
        (:jm_appendint _stringBuffer (JR/className (:jm_getValue (this :f_ORIENTATION))))
        (:jm_append _stringBuffer (_commonStrings :f_COMMA_SEP))
        (:jm_append _stringBuffer (:jm_getName (this :f_SENSOR_UPDATE_RATE)))
        (:jm_append _stringBuffer (_commonStrings :f_EQUALS))
        (:jm_appendint _stringBuffer (JR/className (:jm_getValue (this :f_SENSOR_UPDATE_RATE))))
        (:jm_append _stringBuffer (_commonStrings :f_COMMA_SEP))
        (:jm_append _stringBuffer (:jm_getName (this :f_VIBRATION)))
        (:jm_append _stringBuffer (_commonStrings :f_EQUALS))
        (:jm_appendint _stringBuffer (JR/className (:jm_getValue (this :f_VIBRATION))))
        (:jm_append _stringBuffer (_commonStrings :f_COMMA_SEP))
        (:jm_append _stringBuffer (:jm_getName (this :f_CHALLENGE_LEVEL)))
        (:jm_append _stringBuffer (_commonStrings :f_EQUALS))
        (:jm_appendint _stringBuffer (JR/className (:jm_getValue (this :f_CHALLENGE_LEVEL))))
        (:jm_append _stringBuffer (_commonStrings :f_COMMA_SEP))
        (:jm_append _stringBuffer (:jm_getName (this :f_COLLIDE_DAMAGE)))
        (:jm_append _stringBuffer (_commonStrings :f_EQUALS))
        (:jm_appendint _stringBuffer (JR/className (:jm_getValue (this :f_COLLIDE_DAMAGE))))
        (:jm_append _stringBuffer (_commonStrings :f_COMMA_SEP))
        (:jm_append _stringBuffer (:jm_getName (this :f_DURABILITY_CHALLENGE_LEVEL)))
        (:jm_append _stringBuffer (_commonStrings :f_EQUALS))
        (:jm_appendint _stringBuffer (JR/className (:jm_getValue (this :f_DURABILITY_CHALLENGE_LEVEL))))
        (:jm_append _stringBuffer (_commonStrings :f_COMMA_SEP))
        (:jm_append _stringBuffer (:jm_getName (this :f_SPEED_CHALLENGE_LEVEL)))
        (:jm_append _stringBuffer (_commonStrings :f_EQUALS))
        (:jm_appendint _stringBuffer (JR/className (:jm_getValue (this :f_SPEED_CHALLENGE_LEVEL))))
        (:jm_append _stringBuffer (_commonStrings :f_COMMA_SEP))
        (:jm_append _stringBuffer (:jm_getName (this :f_ATTACK_CHALLENGE_LEVEL)))
        (:jm_append _stringBuffer (_commonStrings :f_EQUALS))
        (:jm_appendint _stringBuffer (JR/className (:jm_getValue (this :f_ATTACK_CHALLENGE_LEVEL))))
        (:jm_append _stringBuffer (_commonStrings :f_COMMA_SEP))
        (:jm_append _stringBuffer (:jm_getName (this :f_CONTROL_LEVEL)))
        (:jm_append _stringBuffer (_commonStrings :f_EQUALS))
        (:jm_appendint _stringBuffer (JR/className (:jm_getValue (this :f_CONTROL_LEVEL))))
        (:jm_append _stringBuffer (_commonStrings :f_COMMA_SEP))
        (:jm_append _stringBuffer (:jm_getName (this :f_SPEED)))
        (:jm_append _stringBuffer (_commonStrings :f_EQUALS))
        (:jm_appendint _stringBuffer (JR/className (:jm_getValue (this :f_SPEED))))
        (:jm_append _stringBuffer (_commonStrings :f_COMMA_SEP))
        (:jm_append _stringBuffer (:jm_getName (this :f_MAX_GAME_OBJECTS)))
        (:jm_append _stringBuffer (_commonStrings :f_EQUALS))
        (:jm_appendint _stringBuffer (JR/className (:jm_getValue (this :f_MAX_GAME_OBJECTS))))
        (:jm_append _stringBuffer (_commonStrings :f_COMMA_SEP))
        (:jm_append _stringBuffer (:jm_getName (this :f_MAX_LAYERS)))
        (:jm_append _stringBuffer (_commonStrings :f_EQUALS))
        (:jm_appendint _stringBuffer (JR/className (:jm_getValue (this :f_MAX_LAYERS))))
        (return jreturn (:jm_toString _stringBuffer)))))

(set jproto @{:jm_load jm_load :jm_setGameControlFidelity jm_setGameControlFidelity :jm_getGameControlFidelity jm_getGameControlFidelity :jm_toString jm_toString})


