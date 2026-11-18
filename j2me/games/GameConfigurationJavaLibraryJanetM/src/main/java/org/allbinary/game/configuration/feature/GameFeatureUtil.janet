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
(import ../../../../../java/util/Enumeration :as Enumeration)
(defn- TsUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/TsUtil" "jm_getInstance" args))
(defn- LogUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/logic/communication/log/LogUtil" "jm_getInstance" args))
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- CommonLabels/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/string/CommonLabels" "jm_getInstance" args))
(defn- EnumerationUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/util/EnumerationUtil" "jm_getInstance" args))
(defn- HashtableUtil/jm_getInstance [& args] (JR/call jfile "../../../../../org/allbinary/util/HashtableUtil" "jm_getInstance" args))
(defn- Features/jm_getInstance [& args] (JR/call jfile "./Features" "jm_getInstance" args))
(defn- Feature/jm_getInstance [& args] (JR/call jfile "./Feature" "jm_getInstance" args))
(defn- GameFeatureChoiceGroups/jm_getExclusiveInstance [& args] (JR/call jfile "./GameFeatureChoiceGroups" "jm_getExclusiveInstance" args))

# Java class GameFeatureUtil
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)
(var jm_setDefault nil)
(var jm_updateMultiple nil)
(var jm_updateExclusiveForChoiceGroup nil)
(var jm_isExclusive nil)
(var jm_updateExclusive nil)
(var jm_updateExclusiveList nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameFeatureUtil" :f_logUtil nil :f_tsUtil nil :f_enumerationUtil nil :f_ON_GAME_FEATURE_CHANGE nil :f_GAME_FEATURE_CHANGED nil} jproto))
    (put this :f_logUtil (LogUtil/jm_getInstance))
    (put this :f_tsUtil (TsUtil/jm_getInstance))
    (put this :f_enumerationUtil (EnumerationUtil/jm_getInstance))
    (put this :f_ON_GAME_FEATURE_CHANGE "onGameFeatureChange")
    (put this :f_GAME_FEATURE_CHANGED "Game Feature Changed: ")
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))
    
(set jm_setDefault (fn jm_setDefault [this _choiceGroup]
        (var _stringBuffer (StringMaker/jnew_0))
        (var _METHOD_NAME "setDefault")
        (var _SELECTED_ARRAY_RETURN "selectedArray_return[")
        (var _SELECTED_SEP "] = ")
        (var _selectedArray_return (array/new-filled (:jm_size _choiceGroup) false))
        (var _total (:jm_getSelectedFlags _choiceGroup _selectedArray_return))
        (:jm_append _stringBuffer "Multiple Total Choices: ")
        (:jm_appendint _stringBuffer _total)
        (:jm_putF (this :f_logUtil) (:jm_toString _stringBuffer) this _METHOD_NAME)
        (var _features (Features/jm_getInstance))
        (do
            (var _index 0)
            (while (< _index (length _selectedArray_return))
                (do
            (var _isSelected (_selectedArray_return _index))
            (:jm_delete _stringBuffer 0 (:jm_length _stringBuffer))
            (:jm_append _stringBuffer _SELECTED_ARRAY_RETURN)
            (:jm_appendint _stringBuffer _index)
            (:jm_append _stringBuffer _SELECTED_SEP)
            (:jm_appendboolean _stringBuffer _isSelected)
            (:jm_putF (this :f_logUtil) (:jm_toString _stringBuffer) this _METHOD_NAME)
            (var _selectedChoiceLabel (:jm_getString _choiceGroup _index))
            (var _gameFeature (Feature/jm_getInstance _selectedChoiceLabel))
            (if (:jm_isDefault _features _gameFeature)
                (do
                (:jm_add _features _gameFeature)
                (:jm_setSelectedIndex _choiceGroup _index true))
                (do
                (:jm_remove _features _gameFeature)
                (:jm_setSelectedIndex _choiceGroup _index false))))
                (do (set _index (JR/i32 (+ _index 1))))))))
    
(set jm_updateMultiple (fn jm_updateMultiple [this _choiceGroup]
        (var _stringBuffer (StringMaker/jnew_0))
        (var _METHOD_NAME "updateMultiple")
        (var _SELECTED_ARRAY_RETURN "selectedArray_return[")
        (var _SELECTED_SEP "] = ")
        (var _selectedArray_return (array/new-filled (:jm_size _choiceGroup) false))
        (var _total (:jm_getSelectedFlags _choiceGroup _selectedArray_return))
        (:jm_append _stringBuffer "Multiple Total Choices: ")
        (:jm_appendint _stringBuffer _total)
        (:jm_putF (this :f_logUtil) (:jm_toString _stringBuffer) this _METHOD_NAME)
        (var _features (Features/jm_getInstance))
        (do
            (var _index 0)
            (while (< _index (length _selectedArray_return))
                (do
            (var _isSelected (_selectedArray_return _index))
            (:jm_delete _stringBuffer 0 (:jm_length _stringBuffer))
            (:jm_append _stringBuffer _SELECTED_ARRAY_RETURN)
            (:jm_appendint _stringBuffer _index)
            (:jm_append _stringBuffer _SELECTED_SEP)
            (:jm_appendboolean _stringBuffer _isSelected)
            (:jm_putF (this :f_logUtil) (:jm_toString _stringBuffer) this _METHOD_NAME)
            (var _selectedChoiceLabel (:jm_getString _choiceGroup _index))
            (var _gameFeature (Feature/jm_getInstance _selectedChoiceLabel))
            (if (and (not _isSelected) (:jm_isFeature _features _gameFeature))
                (do
                (:jm_remove _features _gameFeature))
                (if (and _isSelected (not (:jm_isFeature _features _gameFeature)))
                (do
                (:jm_add _features _gameFeature)))))
                (do (set _index (JR/i32 (+ _index 1))))))))
    
(set jm_updateExclusiveForChoiceGroup (fn jm_updateExclusiveForChoiceGroup [this _choiceGroup]
        (var _stringBuffer (StringMaker/jnew_0))
        (var _METHOD_NAME "updateExclusive")
        (var _SELECTED_ARRAY_RETURN "selectedArray_return[")
        (var _SELECTED_SEP "] = ")
        (var _selectedArray_return (array/new-filled (:jm_size _choiceGroup) false))
        (var _total (:jm_getSelectedFlags _choiceGroup _selectedArray_return))
        (:jm_append _stringBuffer "Exclusive Total Choices: 1==")
        (:jm_appendint _stringBuffer _total)
        (:jm_putF (this :f_logUtil) (:jm_toString _stringBuffer) this _METHOD_NAME)
        (do
            (var _index 0)
            (while (< _index (length _selectedArray_return))
                (do
            (var _isSelected (_selectedArray_return _index))
            (:jm_delete _stringBuffer 0 (:jm_length _stringBuffer))
            (:jm_append _stringBuffer _SELECTED_ARRAY_RETURN)
            (:jm_appendint _stringBuffer _index)
            (:jm_append _stringBuffer _SELECTED_SEP)
            (:jm_appendboolean _stringBuffer _isSelected)
            (:jm_putF (this :f_logUtil) (:jm_toString _stringBuffer) this _METHOD_NAME)
            (if _isSelected
                (do
                (var _selectedChoiceLabel (:jm_getString _choiceGroup _index))
                (:jm_updateExclusive this _selectedChoiceLabel))))
                (do (set _index (JR/i32 (+ _index 1))))))))
    
(set jm_isExclusive (fn jm_isExclusive [this _itemLabel]
    (label jreturn
        (var _enumeration (JR/className (JR/className (GameFeatureChoiceGroups/jm_getExclusiveInstance))))
        (var _name nil)
        (do
            (while (:jm_hasMoreElements (this :f_enumerationUtil) _enumeration)
                (do
            (set _name (:jm_nextElement (this :f_enumerationUtil) _enumeration))
            (if (= (:jm_compareTo (this :f_tsUtil) _itemLabel _name) 0)
                (do
                (return jreturn true))))))
        (return jreturn false))))
    
(set jm_updateExclusive (fn jm_updateExclusive [this _selectedChoiceLabel]
        (:jm_putF (this :f_logUtil) (:jm_toString (:jm_append (:jm_append (StringMaker/jnew_0) ((CommonLabels/jm_getInstance) :f_ITEM_LABEL)) _selectedChoiceLabel)) this "updateExclusive")
        (var _gameFeature (Feature/jm_getInstance _selectedChoiceLabel))
        (var _hashtable (JR/className (GameFeatureChoiceGroups/jm_getExclusiveInstance)))
        (var _objectArray (:jm_getKeysAsArray (HashtableUtil/jm_getInstance) _hashtable))
        (var _basicArrayList nil)
        (var _anyType nil)
        (var _size (length _objectArray))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _anyType (_objectArray _index))
            (set _basicArrayList (:jm_get _hashtable _anyType))
            (:jm_updateExclusiveList this _gameFeature _basicArrayList))
                (do (set _index (JR/i32 (+ _index 1))))))))
    
(set jm_updateExclusiveList (fn jm_updateExclusiveList [this _gameFeature _list]
        (if (:jm_contains _list _gameFeature)
            (do
            (var _features (Features/jm_getInstance))
            (var _addIndex (:jm_indexOf _list _gameFeature))
            (var _size (:jm_size _list))
            (do
                (var _index 0)
                (while (< _index _size)
                    (do
                (if (not= _addIndex _index)
                    (do
                    (:jm_remove _features ((_list :f_objectArray) _index)))
                    (do
                    (:jm_add _features ((_list :f_objectArray) _index)))))
                    (do (set _index (JR/i32 (+ _index 1))))))))))

(set jproto @{:jm_setDefault jm_setDefault :jm_updateMultiple jm_updateMultiple :jm_updateExclusiveForChoiceGroup jm_updateExclusiveForChoiceGroup :jm_isExclusive jm_isExclusive :jm_updateExclusive jm_updateExclusive :jm_updateExclusiveList jm_updateExclusiveList})


