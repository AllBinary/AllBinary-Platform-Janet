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
(defn- NullImage/jstatic_NULL_IMAGE_ARRAY [& args] (JR/call jfile "../../../../javax/microedition/lcdui/NullImage" "jstatic_NULL_IMAGE_ARRAY" args))
(defn- NullImage/jstatic_NULL_IMAGE [& args] (JR/call jfile "../../../../javax/microedition/lcdui/NullImage" "jstatic_NULL_IMAGE" args))
(defn- MIDPUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/MIDPUtil" "jm_getInstance" args))
(defn- GameCommandsFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/commands/GameCommandsFactory" "jm_getInstance" args))
(defn- GameDifficultyFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/persistance/GameDifficultyFactory" "jm_getInstance" args))
(import ../../../../org/allbinary/graphics/displayable/screen/CommandForm :as CommandForm)
(defn- StringMaker/jnew_0 [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringMaker" "jnew_0" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(import ../../../../java/lang/Integer :as Integer)

# Java class GameDifficultyOptions
(var jproto nil)
(var jnew_5 nil)
(var jm_open nil)
(var jm_close nil)
(var jm_save nil)
(var jm_initCommands nil)
(var jm_update nil)
(var jm_add nil)
(var jm_getChoiceGroup nil)
(var jm_setSelectedId nil)
(var jm_getSelectedId nil)
(var jm_getSelectedText nil)

    
(set jnew_5 (fn jnew_5 [_commandListener _title _list _backgrounBasicColor _foregroundBasicColor]
    (var this (table/setproto @{:jclass "GameDifficultyOptions" :f_meUtil nil :f_list nil} jproto))
    (put this :f_meUtil (MIDPUtil/jm_getInstance))
    
        (JR/superInit this (CommandForm/jnew_4 _commandListener _title _backgrounBasicColor _foregroundBasicColor))
        (JR/className (this :f_logUtil))
        (set (this :f_list) _list)
        (:jm_update this)
        (:jm_initCommands this _commandListener)
        (var _gameDifficultyFactory (GameDifficultyFactory/jm_getInstance))
        (:jm_setSelectedId this (:jm_getLevel _gameDifficultyFactory))
    this))
    
(set jm_open (fn jm_open [this]
        ((get CommandForm/jproto :jm_open) this)))
    
(set jm_close (fn jm_close [this]
        ((get CommandForm/jproto :jm_close) this)
        (:jm_save this)))
    
(set jm_save (fn jm_save [this]
        (var _gameDifficultyFactory (GameDifficultyFactory/jm_getInstance))
        (:jm_setLevel _gameDifficultyFactory (:jm_getSelectedId this))))
    
(set jm_initCommands (fn jm_initCommands [this _cmdListener]
        (var _gameCommandsFactory (GameCommandsFactory/jm_getInstance))
        (:jm_removeAllCommands this)
        (:jm_addCommand this (_gameCommandsFactory :f_CLOSE_AND_SHOW_GAME_CANVAS))
        (:jm_setCommandListener this _cmdListener)))
    
(set jm_update (fn jm_update [this]
        (:jm_deleteAll this)
        (:jm_add this (this :f_list) "Difficulty" (Choice/jstatic_EXCLUSIVE))
        ((get CommandForm/jproto :jm_update) this)))
    
(set jm_add (fn jm_add [this _list _name _option]
        (var _choiceGroup (:jm_getChoiceGroup this _list _name _option))
        (if (> (:jm_size _list) 0)
            (do
            (:jm_setSelectedIndex _choiceGroup 0 true)))
        (:jm_appendItem (this :f_meUtil) this _choiceGroup)))
    
(set jm_getChoiceGroup (fn jm_getChoiceGroup [this _list _name _option]
    (label jreturn
        (var _METHOD_NAME "addChoiceGroup")
        (var _NAME "Adding Choice: ")
        (var _choiceGroup (ChoiceGroup/jnew_4 _name _option (:jm_getArrayInstance (StringUtil/jm_getInstance)) (NullImage/jstatic_NULL_IMAGE_ARRAY)))
        (var _size (:jm_size _list))
        (var _anyType nil)
        (do
            (var _index 0)
            (while (< _index _size)
                (do
            (set _anyType ((_list :f_objectArray) _index))
            (JR/className (this :f_logUtil))
            (:jm_append _choiceGroup (JR/toString _anyType) (NullImage/jstatic_NULL_IMAGE)))
                (do (set _index (JR/i32 (+ _index 1))))))
        (return jreturn _choiceGroup))))
    
(set jm_setSelectedId (fn jm_setSelectedId [this _id]
        (var _choiceGroup (:jm_get this 0))
        (:jm_setSelectedIndex _choiceGroup _id true)))
    
(set jm_getSelectedId (fn jm_getSelectedId [this]
    (label jreturn
        (var _choiceGroup (:jm_get this 0))
        (return jreturn (:jm_getSelectedIndex _choiceGroup)))))
    
(set jm_getSelectedText (fn jm_getSelectedText [this]
    (label jreturn
        (var _choiceGroup (:jm_get this 0))
        (var _value (JR/className (JR/str (:jm_getString _choiceGroup (:jm_getSelectedIndex _choiceGroup)))))
        (return jreturn _value))))

(set jproto (table/setproto @{:jm_open jm_open :jm_close jm_close :jm_save jm_save :jm_initCommands jm_initCommands :jm_update jm_update :jm_add jm_add :jm_getChoiceGroup jm_getChoiceGroup :jm_setSelectedId jm_setSelectedId :jm_getSelectedId jm_getSelectedId :jm_getSelectedText jm_getSelectedText} CommandForm/jproto))


