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
(defn- ChoiceGroup/jnew_4 [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/ChoiceGroup" "jnew_4" args))
(defn- NullImage/jstatic_NULL_IMAGE_ARRAY [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/NullImage" "jstatic_NULL_IMAGE_ARRAY" args))
(defn- NullImage/jstatic_NULL_IMAGE [& args] (JR/call jfile "../../../../../javax/microedition/lcdui/NullImage" "jstatic_NULL_IMAGE" args))
(defn- MIDPUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/MIDPUtil" "jm_getInstance" args))
(defn- GameConfigurationUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/game/configuration/GameConfigurationUtil" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- HashtableUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/util/HashtableUtil" "jm_getInstance" args))
(defn- Features/jm_getInstance [& args] (JR/call jfile "./Features" "jm_getInstance" args))
(defn- GameFeatureUtil/jm_getInstance [& args] (JR/call jfile "./GameFeatureUtil" "jm_getInstance" args))

# Java class GameFeatureFormUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_getChoiceGroup nil)
(var jm_addChoiceGroup nil)
(var jm_setDefault nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameFeatureFormUtil" :f_logUtil nil :f_meUtil nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_meUtil (MIDPUtil/jm_getInstance))
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_getChoiceGroup (fn jm_getChoiceGroup [this _hashtable _name _option]
    (label jreturn
        (var _stringMaker (StringMaker/jnew_0))
        (var _choiceGroup (ChoiceGroup/jnew_4 _name _option (:jm_getArrayInstance (StringUtil/jm_getInstance)) (NullImage/jstatic_NULL_IMAGE_ARRAY)))
        (var _list (:jm_get _hashtable _name))
        (var _features (Features/jm_getInstance))
        (var _ADD_CHOICE ": Adding Choice: ")
        (var _GET_CHOICE_GROUP "getChoiceGroup")
        (var _size (:jm_size _list))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (var _gameFeature ((_list :f_objectArray) _index))
            (:jm_delete _stringMaker 0 (:jm_length _stringMaker))
            (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append (:jm_append _stringMaker _name) _ADD_CHOICE) (:jm_toString _gameFeature))) this _GET_CHOICE_GROUP)
            (:jm_append _choiceGroup (:jm_toString _gameFeature) (NullImage/jstatic_NULL_IMAGE))
            (if (:jm_isFeature _features _gameFeature)
                (do
                (:jm_setSelectedIndex _choiceGroup _index true))))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn _choiceGroup))))
    
(set jm_addChoiceGroup (fn jm_addChoiceGroup [this _form _hashtable _option]
        (var _stringMaker (StringMaker/jnew_0))
        (var _ADDING_CHOICE_GROUP "Adding Choice Group: ")
        (var _ADD_CHOICE_GROUP "addChoiceGroup")
        (var _size (:jm_size _hashtable))
        (var _objectArray (:jm_getKeysAsArray (HashtableUtil/jm_getInstance) _hashtable))
        (var _name nil)
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _name (_objectArray _index))
            (:jm_delete _stringMaker 0 (:jm_length _stringMaker))
            (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append _stringMaker _ADDING_CHOICE_GROUP) _name)) this _ADD_CHOICE_GROUP)
            (:jm_appendItem (this :f_meUtil) _form (:jm_getChoiceGroup this _hashtable _name _option)))
                (do (set _index (JR/i32 (+ _index 1))))))))
    
(set jm_setDefault (fn jm_setDefault [this _form]
        (var _size (:jm_size _form))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (var _item (:jm_get _form _index))
            (if (= (JR/className _item) "GameConfigurationGauge")
                (do
                (:jm_setDefault (GameConfigurationUtil/jm_getInstance) _item))
                (if (= (JR/className _item) "ChoiceGroup")
                (do
                (:jm_setDefault (GameFeatureUtil/jm_getInstance) _item)))))
                (do (set _index (JR/i32 (+ _index 1))))))))

(set jproto @{:jm_getChoiceGroup jm_getChoiceGroup :jm_addChoiceGroup jm_addChoiceGroup :jm_setDefault jm_setDefault})


