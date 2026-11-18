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
(defn- TextField/jnew_4 [& args] (JR/call jfile "../../../../javax/microedition/lcdui/TextField" "jnew_4" args))
(defn- TextField/jstatic_ANY [& args] (JR/call jfile "../../../../javax/microedition/lcdui/TextField" "jstatic_ANY" args))
(defn- MIDPUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/MIDPUtil" "jm_getInstance" args))
(defn- GameCommandsFactory/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/game/commands/GameCommandsFactory" "jm_getInstance" args))
(import ../../../../org/allbinary/graphics/displayable/screen/CommandForm :as CommandForm)
(defn- ABSystemWrapper/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/ABSystemWrapper" "jm_getInstance" args))
(import ../../../../java/lang/Long :as Long)

# Java class SaveGameForm
(var jproto nil)
(var jcell_FORM :jnone)
(var jstatic_FORM nil)
(var jsetstatic_FORM nil)
(var jnew_4 nil)
(var jm_createForm nil)
(var jm_getInstance nil)
(var jm_initCommands nil)

(set jstatic_FORM (fn jstatic_FORM []
  (when (= jcell_FORM :jnone) (set jcell_FORM (CommandForm/jm_getNullCommandForm)))
  jcell_FORM))
(set jsetstatic_FORM (fn jsetstatic_FORM [value] (set jcell_FORM value)))

    
(set jm_createForm (fn jm_createForm [_commandListener _title _backgrounBasicColor _foregroundBasicColor]
    (label jreturn
        (set jcell_FORM (jnew_4 _commandListener _title _backgrounBasicColor _foregroundBasicColor))
        (return jreturn (jstatic_FORM)))))
    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_FORM)))))
    
(set jnew_4 (fn jnew_4 [_commandListener _title _backgrounBasicColor _foregroundBasicColor]
    (var this (table/setproto @{:jclass "SaveGameForm" :f_meUtil nil} jproto))
    (put this :f_meUtil (MIDPUtil/jm_getInstance))
        (JR/superInit this (CommandForm/jnew_4 _commandListener _title _backgrounBasicColor _foregroundBasicColor))
        (JR/className (this :f_logUtil))
        (var _timeString (JR/str (:jm_currentTimeMillis (ABSystemWrapper/jm_getInstance))))
        (:jm_appendItem (this :f_meUtil) this (TextField/jnew_4 "Name: " _timeString 30 (TextField/jstatic_ANY)))
        (:jm_initCommands this _commandListener)
    this))
    
(set jm_initCommands (fn jm_initCommands [this _cmdListener]
        (var _gameCommandsFactory (GameCommandsFactory/jm_getInstance))
        (:jm_removeAllCommands this)
        (:jm_addCommand this (_gameCommandsFactory :f_SAVE))
        (:jm_addCommand this (_gameCommandsFactory :f_CLOSE_AND_SHOW_GAME_CANVAS))
        (:jm_setCommandListener this _cmdListener)))

(set jproto (table/setproto @{:jm_initCommands jm_initCommands} CommandForm/jproto))


