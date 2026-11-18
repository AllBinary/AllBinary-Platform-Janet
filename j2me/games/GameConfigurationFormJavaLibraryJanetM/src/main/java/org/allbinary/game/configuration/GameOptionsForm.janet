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
(defn- Choice/jstatic_EXCLUSIVE [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Choice" "jstatic_EXCLUSIVE" args))
(defn- Choice/jstatic_MULTIPLE [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Choice" "jstatic_MULTIPLE" args))
(defn- TextField/jnew_4 [& args] (JR/call jfile "../../../../javax/microedition/lcdui/TextField" "jnew_4" args))
(defn- TextField/jstatic_ANY [& args] (JR/call jfile "../../../../javax/microedition/lcdui/TextField" "jstatic_ANY" args))
(defn- MIDPUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/MIDPUtil" "jm_getInstance" args))
(defn- GameCommandsFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/commands/GameCommandsFactory" "jm_getInstance" args))
(defn- GameFeatureChoiceGroups/jm_getMultipleInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/GameFeatureChoiceGroups" "jm_getMultipleInstance" args))
(defn- GameFeatureChoiceGroups/jm_getExclusiveInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/GameFeatureChoiceGroups" "jm_getExclusiveInstance" args))
(defn- GameFeatureFormUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/GameFeatureFormUtil" "jm_getInstance" args))
(defn- GameFeatureItemCommandListener/jnew_1 [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/GameFeatureItemCommandListener" "jnew_1" args))
(defn- GameFeatureItemStateListener/jnew_1 [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/GameFeatureItemStateListener" "jnew_1" args))
(defn- SensorFeatureFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/SensorFeatureFactory" "jm_getInstance" args))
(defn- GameConfigurationPersistanceSingleton/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/persistance/GameConfigurationPersistanceSingleton" "jm_getInstance" args))
(defn- MyCommandsFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/displayable/command/MyCommandsFactory" "jm_getInstance" args))
(import ../../../../org/allbinary/graphics/displayable/screen/CommandForm :as CommandForm)
(defn- OrientationData/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/input/gyro/OrientationData" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- HashtableUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/util/HashtableUtil" "jm_getInstance" args))
(defn- StdUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/StdUtil" "jm_getInstance" args))
(import ../../../../java/lang/Integer :as Integer)
(defn- GameConfigurationTextInput/jm_getHashtable [& args] (JR/call jfile "./GameConfigurationTextInput" "jm_getHashtable" args))
(defn- GameConfigurationTextInput/jm_update [& args] (JR/call jfile "./GameConfigurationTextInput" "jm_update" args))
(defn- GameConfigurationSingleton/jm_getInstance [& args] (JR/call jfile "./GameConfigurationSingleton" "jm_getInstance" args))
(defn- GameConfigurationGauge/jnew_1 [& args] (JR/call jfile "./GameConfigurationGauge" "jnew_1" args))
(defn- GameConfigurationUtil/jm_getInstance [& args] (JR/call jfile "./GameConfigurationUtil" "jm_getInstance" args))
(defn- GameConfigurationCentral/jm_getInstance [& args] (JR/call jfile "./GameConfigurationCentral" "jm_getInstance" args))

# Java class GameOptionsForm
(var jproto nil)
(var jnew_4 nil)
(var jm_closeClientInformation nil)
(var jm_addTextFieldsIfSimulated nil)
(var jm_addTextFields nil)
(var jm_addConfiguration nil)
(var jm_initCommands nil)
(var jm_save nil)

    
(set jnew_4 (fn jnew_4 [_commandListener _title _backgrounBasicColor _foregroundBasicColor]
    (var this (table/setproto @{:jclass "GameOptionsForm" :f_meUtil nil} jproto))
    (put this :f_meUtil (MIDPUtil/jm_getInstance))
        (JR/superInit this (CommandForm/jnew_4 _commandListener _title _backgrounBasicColor _foregroundBasicColor))
        (JR/className (this :f_logUtil))
        (:jm_addConfiguration this)
        (var _gameFeatureFormUtil (GameFeatureFormUtil/jm_getInstance))
        (:jm_addChoiceGroup _gameFeatureFormUtil this (JR/className (GameFeatureChoiceGroups/jm_getExclusiveInstance)) (Choice/jstatic_EXCLUSIVE))
        (:jm_addChoiceGroup _gameFeatureFormUtil this (JR/className (GameFeatureChoiceGroups/jm_getMultipleInstance)) (Choice/jstatic_MULTIPLE))
        (:jm_initCommands this _commandListener)
        (:jm_setItemStateListener this (GameFeatureItemStateListener/jnew_1 this))
        (:jm_addTextFieldsIfSimulated this)
    this))
    
(set jm_closeClientInformation (fn jm_closeClientInformation [this _abeClientInformation]
        ((get CommandForm/jproto :jm_close) this)
        (:jm_save this _abeClientInformation)))
    
(set jm_addTextFieldsIfSimulated (fn jm_addTextFieldsIfSimulated [this]
        (var _key ((OrientationData/jm_getInstance) :f_ORIENTATION_SENSOR_INPUT))
        (var _hashtable (JR/className (GameFeatureChoiceGroups/jm_getExclusiveInstance)))
        (if (not (nil? _hashtable))
            (do
            (var _listCanBeNull (:jm_get _hashtable _key))
            (if (not (nil? _listCanBeNull))
                (do
                (var _list _listCanBeNull)
                (if (:jm_contains _list ((SensorFeatureFactory/jm_getInstance) :f_SIMULATED_ORIENTATION_SENSORS))
                    (do
                    (:jm_addTextFields this)))))))))
    
(set jm_addTextFields (fn jm_addTextFields [this]
        (var _hashtable (GameConfigurationTextInput/jm_getHashtable))
        (var _size (:jm_size _hashtable))
        (var _objectArray (:jm_getKeysAsArray (HashtableUtil/jm_getInstance) _hashtable))
        (var _gameConfigurationTextInput nil)
        (var _textField nil)
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _gameConfigurationTextInput (:jm_get _hashtable (_objectArray _index)))
            (set _textField (TextField/jnew_4 (:jm_getLabel _gameConfigurationTextInput) (:jm_getText _gameConfigurationTextInput) 30 (TextField/jstatic_ANY)))
            (:jm_appendItem (this :f_meUtil) this _textField))
                (do (set _index (JR/i32 (+ _index 1))))))))
    
(set jm_addConfiguration (fn jm_addConfiguration [this]
        (var _METHOD_NAME "addConfiguration")
        (var _NAME "Name: ")
        (var _list (:jm_getOptionsBasicArrayList (GameConfigurationSingleton/jm_getInstance)))
        (var _GAUGE_CHANGE ((MyCommandsFactory/jm_getInstance) :f_GAUGE_CHANGE))
        (var _stringMaker (StringMaker/jnew_0))
        (var _size (:jm_size _list))
        (var _gameConfiguration nil)
        (var _gauge nil)
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _gameConfiguration ((_list :f_objectArray) _index))
            (:jm_delete _stringMaker 0 (:jm_length _stringMaker))
            (JR/className (this :f_logUtil))
            (set _gauge (GameConfigurationGauge/jnew_1 _gameConfiguration))
            (:jm_setDefaultCommand _gauge _GAUGE_CHANGE)
            (:jm_setItemCommandListener _gauge (GameFeatureItemCommandListener/jnew_1 this))
            (:jm_appendItem (this :f_meUtil) this _gauge))
                (do (set _index (JR/i32 (+ _index 1))))))))
    
(set jm_initCommands (fn jm_initCommands [this _cmdListener]
        (var _gameCommandsFactory (GameCommandsFactory/jm_getInstance))
        (:jm_removeAllCommands this)
        (:jm_addCommand this (_gameCommandsFactory :f_CLOSE_OPTIONS))
        (:jm_addCommand this (_gameCommandsFactory :f_DEFAULT_OPTIONS))
        (:jm_setCommandListener this _cmdListener)))
    
(set jm_save (fn jm_save [this _abeClientInformation]
        (var _size (:jm_size this))
        (var _item nil)
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _item (:jm_get this _index))
            (if (= (JR/className _item) "GameConfigurationGauge")
                (do
                (:jm_update (GameConfigurationUtil/jm_getInstance) _item))
                (if (= (JR/className _item) "TextField")
                (do
                (GameConfigurationTextInput/jm_update _item)))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (:jm_updateCompetitionValue (GameConfigurationUtil/jm_getInstance))
        (var _hashtable (:jm_createHashtable (StdUtil/jm_getInstance)))
        (var _SCALE ((GameConfigurationCentral/jm_getInstance) :f_SCALE))
        (:jm_put _hashtable (:jm_getName _SCALE) (JR/str (JR/className (:jm_getValue _SCALE))))
        (var _keyValuePersistance (GameConfigurationPersistanceSingleton/jm_getInstance))
        (:jm_clear _keyValuePersistance)
        (:jm_loadAll _keyValuePersistance _abeClientInformation)
        (var _list (:jm_getIds _keyValuePersistance))
        (:jm_save _keyValuePersistance _abeClientInformation _hashtable)
        (var _size2 (:jm_size _list))
        (var _integer nil)
        (do
            (var _index 0)
            (while (< _index _size2)
                (do
            (set _integer ((_list :f_objectArray) _index))
            (:jm_delete _keyValuePersistance _abeClientInformation (:jm_intValue _integer)))
                (do (set _index (JR/i32 (+ _index 1))))))))

(set jproto (table/setproto @{:jm_closeClientInformation jm_closeClientInformation :jm_addTextFieldsIfSimulated jm_addTextFieldsIfSimulated :jm_addTextFields jm_addTextFields :jm_addConfiguration jm_addConfiguration :jm_initCommands jm_initCommands :jm_save jm_save} CommandForm/jproto))


