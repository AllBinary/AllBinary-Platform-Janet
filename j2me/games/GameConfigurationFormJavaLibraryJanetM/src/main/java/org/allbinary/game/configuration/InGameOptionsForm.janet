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
(defn- Command/jnew_4 [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Command" "jnew_4" args))
(defn- Command/jstatic_SCREEN [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Command" "jstatic_SCREEN" args))
(defn- GameCommandsFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/commands/GameCommandsFactory" "jm_getInstance" args))
(defn- GameFeatureFormUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/GameFeatureFormUtil" "jm_getInstance" args))
(defn- InGameFeatureChoiceGroups/jm_getExclusiveInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/InGameFeatureChoiceGroups" "jm_getExclusiveInstance" args))
(defn- InGameFeatureChoiceGroups/jm_getMultipleInstance [& args] (JR/call jfile "../../../../org/allbinary/game/configuration/feature/InGameFeatureChoiceGroups" "jm_getMultipleInstance" args))
(import ../../../../org/allbinary/graphics/displayable/screen/CommandForm :as CommandForm)
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))

# Java class InGameOptionsForm
(var jproto nil)
(var jcell_DISPLAY :jnone)
(var jstatic_DISPLAY nil)
(var jsetstatic_DISPLAY nil)
(var jcell_SAVE :jnone)
(var jstatic_SAVE nil)
(var jsetstatic_SAVE nil)
(var jcell_DEFAULT :jnone)
(var jstatic_DEFAULT nil)
(var jsetstatic_DEFAULT nil)
(var jnew_4 nil)
(var jm_initCommands nil)

(set jstatic_DISPLAY (fn jstatic_DISPLAY []
  (when (= jcell_DISPLAY :jnone) (set jcell_DISPLAY (Command/jnew_4 "Options In Game" ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Command/jstatic_SCREEN) 1)))
  jcell_DISPLAY))
(set jsetstatic_DISPLAY (fn jsetstatic_DISPLAY [value] (set jcell_DISPLAY value)))

(set jstatic_SAVE (fn jstatic_SAVE []
  (when (= jcell_SAVE :jnone) (set jcell_SAVE (Command/jnew_4 "Save" ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Command/jstatic_SCREEN) 1)))
  jcell_SAVE))
(set jsetstatic_SAVE (fn jsetstatic_SAVE [value] (set jcell_SAVE value)))

(set jstatic_DEFAULT (fn jstatic_DEFAULT []
  (when (= jcell_DEFAULT :jnone) (set jcell_DEFAULT (Command/jnew_4 "Default" ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Command/jstatic_SCREEN) 1)))
  jcell_DEFAULT))
(set jsetstatic_DEFAULT (fn jsetstatic_DEFAULT [value] (set jcell_DEFAULT value)))

    
(set jnew_4 (fn jnew_4 [_commandListener _title _backgrounBasicColor _foregroundBasicColor]
    (var this (table/setproto @{:jclass "InGameOptionsForm"} jproto))
        (JR/superInit this (CommandForm/jnew_4 _commandListener _title _backgrounBasicColor _foregroundBasicColor))
        (JR/className (this :f_logUtil))
        (var _gameFeatureFormUtil (GameFeatureFormUtil/jm_getInstance))
        (:jm_addChoiceGroup _gameFeatureFormUtil this (JR/className (InGameFeatureChoiceGroups/jm_getExclusiveInstance)) (Choice/jstatic_EXCLUSIVE))
        (:jm_addChoiceGroup _gameFeatureFormUtil this (JR/className (InGameFeatureChoiceGroups/jm_getMultipleInstance)) (Choice/jstatic_MULTIPLE))
        (:jm_initCommands this _commandListener)
    this))
    
(set jm_initCommands (fn jm_initCommands [this _cmdListener]
        (:jm_removeAllCommands this)
        (:jm_addCommand this ((GameCommandsFactory/jm_getInstance) :f_CLOSE_AND_SHOW_GAME_CANVAS))
        (:jm_addCommand this (jstatic_DEFAULT))
        (:jm_setCommandListener this _cmdListener)))

(set jproto (table/setproto @{:jm_initCommands jm_initCommands} CommandForm/jproto))


