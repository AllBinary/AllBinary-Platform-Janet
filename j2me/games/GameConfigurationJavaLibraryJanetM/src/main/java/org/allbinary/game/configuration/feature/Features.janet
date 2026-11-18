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
# package org.allbinary.game.configuration.feature

(import ../../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- GameFeatureEvent/jnew_2 [& args] (JR/call jfile "../../../../../org/allbinary/game/configuration/event/GameFeatureEvent" "jnew_2" args))
(defn- GameFeatureEventHandler/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/configuration/event/GameFeatureEventHandler" "jm_getInstance" args))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- PreLogUtil/jm_putOE [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/PreLogUtil" "jm_putOE" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- OperatingSystemFactory/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/system/os/OperatingSystemFactory" "jm_getInstance" args))
(defn- CommonLabels/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonLabels" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))
(defn- BasicArrayListD/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/util/BasicArrayListD" "jnew_0" args))
(defn- GameFeatureFactory/jm_getInstance [& args] (JR/call jfile "./GameFeatureFactory" "jm_getInstance" args))
(defn- InputFeatureFactory/jm_getInstance [& args] (JR/call jfile "./InputFeatureFactory" "jm_getInstance" args))
(defn- SensorFeatureFactory/jm_getInstance [& args] (JR/call jfile "./SensorFeatureFactory" "jm_getInstance" args))
(defn- TouchFeatureFactory/jm_getInstance [& args] (JR/call jfile "./TouchFeatureFactory" "jm_getInstance" args))
(defn- MainFeatureFactory/jm_getInstance [& args] (JR/call jfile "./MainFeatureFactory" "jm_getInstance" args))

# Java class Features
(var jproto nil)
(var jcell_SINGLETON :jnone)
(var jstatic_SINGLETON nil)
(var jsetstatic_SINGLETON nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_addDefault nil)
(var jm_add nil)
(var jm_removeDefault nil)
(var jm_remove nil)
(var jm_init nil)
(var jm_isDefault nil)
(var jm_isFeature nil)
(var jm_toggle nil)

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
    (var this (table/setproto @{:jclass "Features" :f_logUtil nil :f_commonStrings nil :f_list nil :f_defaultList nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_commonStrings (CommonStrings/jm_getInstance))
    
    
        (set (this :f_list) (BasicArrayListD/jnew_0))
        (set (this :f_defaultList) (BasicArrayListD/jnew_0))
        (:jm_init this)
    this))
    
(set jm_addDefault (fn jm_addDefault [this _gameFeature]
        (:jm_add this _gameFeature)
        (if (not (:jm_contains (this :f_defaultList) _gameFeature))
            (do
            (:jm_add (this :f_defaultList) _gameFeature)))))
    
(set jm_add (fn jm_add [this _gameFeature]
        (if (not (:jm_contains (this :f_list) _gameFeature))
            (do
            (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) ((CommonLabels/jm_getInstance) :f_START_LABEL)) (:jm_toString _gameFeature))) this ((this :f_commonStrings) :f_ADD))
            (:jm_add (this :f_list) _gameFeature)
            (:jm_fireEvent (GameFeatureEventHandler/jm_getInstance) (GameFeatureEvent/jnew_2 _gameFeature (:jm_toString _gameFeature)))))))
    
(set jm_removeDefault (fn jm_removeDefault [this _gameFeature]
        (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) ((CommonLabels/jm_getInstance) :f_START_LABEL)) (:jm_toString _gameFeature))) this "removeDefault")
        (:jm_remove this _gameFeature)
        (:jm_remove (this :f_defaultList) _gameFeature)))
    
(set jm_remove (fn jm_remove [this _gameFeature]
        (if (:jm_contains (this :f_list) _gameFeature)
            (do
            (:jm_putF (this :f_logUtil) ((this :f_commonStrings) :f_START) this ((this :f_commonStrings) :f_REMOVE))
            (:jm_remove (this :f_list) _gameFeature)
            (:jm_fireEvent (GameFeatureEventHandler/jm_getInstance) (GameFeatureEvent/jnew_2 _gameFeature (:jm_toString _gameFeature)))))))
    
(set jm_init (fn jm_init [this]
        (try
            (do
            (var _gameFeatureFactory (GameFeatureFactory/jm_getInstance))
            (var _inputFeatureFactory (InputFeatureFactory/jm_getInstance))
            (var _sensorFeatureFactory (SensorFeatureFactory/jm_getInstance))
            (var _touchFeatureFactory (TouchFeatureFactory/jm_getInstance))
            (:jm_addDefault this (_gameFeatureFactory :f_ARTIFICIAL_INTELLEGENCE_PROCESSOR))
            (:jm_addDefault this (_gameFeatureFactory :f_COLLIDABLE_INTERFACE_LAYER_PROCESSOR))
            (:jm_addDefault this (_gameFeatureFactory :f_GAME_INPUT_LAYER_PROCESSOR))
            (:jm_addDefault this (_gameFeatureFactory :f_TICKABLE_LAYER_PROCESSOR))
            (:jm_addDefault this (_inputFeatureFactory :f_MULTI_KEY_PRESS))
            (:jm_addDefault this (_inputFeatureFactory :f_REMOVE_DUPLICATE_KEY_PRESSES))
            (:jm_addDefault this (_gameFeatureFactory :f_SCREEN_SHAKE))
            (:jm_addDefault this (_gameFeatureFactory :f_POST_IMAGE_LOADING_MODIFICATION))
            (var _operatingSystemInterface (:jm_getOperatingSystemInstance (OperatingSystemFactory/jm_getInstance)))
            (if (:jm_isOverScan _operatingSystemInterface)
                (do
                (:jm_addDefault this (_sensorFeatureFactory :f_NO_ORIENTATION))
                (:jm_addDefault this (_touchFeatureFactory :f_HIDE_SCREEN_BUTTONS)))
                (do
                (:jm_addDefault this (_sensorFeatureFactory :f_ORIENTATION_SENSORS))
                (:jm_addDefault this (_touchFeatureFactory :f_AUTO_HIDE_SHOW_SCREEN_BUTTONS))))
            (:jm_addDefault this (_touchFeatureFactory :f_TOUCH_ENABLED))
            (:jm_addDefault this ((MainFeatureFactory/jm_getInstance) :f_FULL_SCREEN))
            (:jm_addDefault this ((MainFeatureFactory/jm_getInstance) :f_LOAD_ONDEMAND)))
            ([_e] (do
            (PreLogUtil/jm_putOE ((this :f_commonStrings) :f_EXCEPTION) this ((this :f_commonStrings) :f_INIT) _e))))))
    
(set jm_isDefault (fn jm_isDefault [this _gameFeature]
    (label jreturn
        (return jreturn (:jm_contains (this :f_defaultList) _gameFeature)))))
    
(set jm_isFeature (fn jm_isFeature [this _gameFeature]
    (label jreturn
        (return jreturn (:jm_contains (this :f_list) _gameFeature)))))
    
(set jm_toggle (fn jm_toggle [this _gameFeature]
        (if (:jm_isFeature this _gameFeature)
            (do
            (:jm_remove this _gameFeature))
            (do
            (:jm_add this _gameFeature)))))

(set jproto @{:jm_addDefault jm_addDefault :jm_add jm_add :jm_removeDefault jm_removeDefault :jm_remove jm_remove :jm_init jm_init :jm_isDefault jm_isDefault :jm_isFeature jm_isFeature :jm_toggle jm_toggle})


