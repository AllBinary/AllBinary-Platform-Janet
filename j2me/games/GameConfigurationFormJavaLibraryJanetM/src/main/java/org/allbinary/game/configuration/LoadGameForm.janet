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
(defn- ChoiceGroup/jnew_4 [& args] (JR/call jfile "../../../../javax/microedition/lcdui/ChoiceGroup" "jnew_4" args))
(defn- Item/jstatic_PLAIN [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Item" "jstatic_PLAIN" args))
(defn- NullImage/jstatic_NULL_IMAGE_ARRAY [& args] (JR/call jfile "../../../../javax/microedition/lcdui/NullImage" "jstatic_NULL_IMAGE_ARRAY" args))
(defn- NullImage/jstatic_NULL_IMAGE [& args] (JR/call jfile "../../../../javax/microedition/lcdui/NullImage" "jstatic_NULL_IMAGE" args))
(defn- StringItem/jnew_3 [& args] (JR/call jfile "../../../../javax/microedition/lcdui/StringItem" "jnew_3" args))
(defn- MIDPUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/MIDPUtil" "jm_getInstance" args))
(defn- GameCommandsFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/commands/GameCommandsFactory" "jm_getInstance" args))
(defn- GamePersistanceSingleton/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/persistance/GamePersistanceSingleton" "jm_getInstance" args))
(import ../../../../org/allbinary/graphics/displayable/screen/CommandForm :as CommandForm)
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(import ../../../../java/lang/Integer :as Integer)

# Java class LoadGameForm
(var jproto nil)
(var jnew_4 nil)
(var jm_initCommands nil)
(var jm_update nil)
(var jm_add nil)
(var jm_getChoiceGroup nil)
(var jm_getSelectedId nil)
(var jm_getSelectedText nil)

    
(set jnew_4 (fn jnew_4 [_commandListener _title _backgrounBasicColor _foregroundBasicColor]
    (var this (table/setproto @{:jclass "LoadGameForm" :f_meUtil nil :f_areChoices false} jproto))
    (put this :f_meUtil (MIDPUtil/jm_getInstance))
    
        (JR/superInit this (CommandForm/jnew_4 _commandListener _title _backgrounBasicColor _foregroundBasicColor))
        (JR/className (this :f_logUtil))
        (:jm_update this)
        (:jm_initCommands this _commandListener)
    this))
    
(set jm_initCommands (fn jm_initCommands [this _cmdListener]
        (var _gameCommandsFactory (GameCommandsFactory/jm_getInstance))
        (:jm_removeAllCommands this)
        (:jm_addCommand this (_gameCommandsFactory :f_LOAD_FILE))
        (:jm_addCommand this (_gameCommandsFactory :f_DELETE_FILE))
        (:jm_addCommand this (_gameCommandsFactory :f_CLOSE_AND_SHOW_GAME_CANVAS))
        (:jm_setCommandListener this _cmdListener)))
    
(set jm_update (fn jm_update [this]
        (var _list (:jm_getIds (GamePersistanceSingleton/jm_getInstance)))
        (:jm_deleteAll this)
        (if (> (:jm_size _list) 0)
            (do
            (:jm_add this _list "Select A Saved Game" (Choice/jstatic_EXCLUSIVE))
            (set (this :f_areChoices) true))
            (do
            (:jm_appendItem (this :f_meUtil) this (StringItem/jnew_3 "No Saved Games" ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Item/jstatic_PLAIN)))
            (set (this :f_areChoices) false)))
        ((get CommandForm/jproto :jm_update) this)))
    
(set jm_add (fn jm_add [this _list _name _option]
        (var _choiceGroup (:jm_getChoiceGroup this _list _name _option))
        (if (> (:jm_size _list) 0)
            (do
            (:jm_setSelectedIndex _choiceGroup 0 true)))
        (:jm_appendItem (this :f_meUtil) this _choiceGroup)))
    
(set jm_getChoiceGroup (fn jm_getChoiceGroup [this _list _name _option]
    (label jreturn
        (var _METHOD_NAME "getChoiceGroup")
        (var _ADDING_CHOICE "Adding Choice: ")
        (var _choiceGroup (ChoiceGroup/jnew_4 _name _option (:jm_getArrayInstance (StringUtil/jm_getInstance)) (NullImage/jstatic_NULL_IMAGE_ARRAY)))
        (var _size (:jm_size _list))
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (var _anyType ((_list :f_objectArray) _index))
            (JR/className (this :f_logUtil))
            (:jm_append _choiceGroup (JR/toString _anyType) (NullImage/jstatic_NULL_IMAGE)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn _choiceGroup))))
    
(set jm_getSelectedId (fn jm_getSelectedId [this]
    (label jreturn
        (if (this :f_areChoices)
            (do
            (var _choiceGroup (:jm_get this 0))
            (return jreturn (:jm_getSelectedIndex _choiceGroup)))
            (do
            (return jreturn (JR/i32 (- 1))))))))
    
(set jm_getSelectedText (fn jm_getSelectedText [this]
    (label jreturn
        (if (this :f_areChoices)
            (do
            (var _choiceGroup (:jm_get this 0))
            (var _value (JR/className (JR/str (:jm_getString _choiceGroup (:jm_getSelectedIndex _choiceGroup)))))
            (return jreturn _value))
            (do
            (return jreturn (JR/i32 (- 1))))))))

(set jproto (table/setproto @{:jm_initCommands jm_initCommands :jm_update jm_update :jm_add jm_add :jm_getChoiceGroup jm_getChoiceGroup :jm_getSelectedId jm_getSelectedId :jm_getSelectedText jm_getSelectedText} CommandForm/jproto))


