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
# package org.allbinary.game.commands

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))
(defn- Command/jnew_4 [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Command" "jnew_4" args))
(defn- Command/jstatic_STOP [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Command" "jstatic_STOP" args))
(defn- Command/jstatic_EXIT [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Command" "jstatic_EXIT" args))
(defn- Command/jstatic_SCREEN [& args] (JR/call jfile "../../../../javax/microedition/lcdui/Command" "jstatic_SCREEN" args))
(defn- CanvasStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/graphics/displayable/CanvasStrings" "jm_getInstance" args))
(defn- NullUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/NullUtil" "jm_getInstance" args))
(defn- StringUtil/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/logic/string/StringUtil" "jm_getInstance" args))
(defn- CommonStrings/jm_getInstance [& args] (JR/call jfile "../../../../org/allbinary/string/CommonStrings" "jm_getInstance" args))

# Java class GameCommandsFactory
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance ((NullUtil/jm_getInstance) :f_NULL_OBJECT)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (if (= (jstatic_instance) ((NullUtil/jm_getInstance) :f_NULL_OBJECT))
            (do
            (set jcell_instance (jnew_0))))
        (return jreturn (jstatic_instance)))))
    
(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameCommandsFactory" :f_TOGGLE_FULLSCREEN nil :f_TOGGLE_KEYBOARD nil :f_SET_MENU_DISPLAYABLE nil :f_APPLICATION_UPDATE nil :f_DISPLAY_ABOUT nil :f_OPEN_WEB_URL nil :f_CLOSE_OPTIONS nil :f_DISPLAY_OPTIONS nil :f_START_TRACE nil :f_STOP_TRACE nil :f_DEFAULT_OPTIONS nil :f_SHOW_GAME_CANVAS nil :f_CLOSE_AND_SHOW_GAME_CANVAS nil :f_QUIT_COMMAND nil :f_RESTART_COMMAND nil :f_DISPLAY_SAVE_FORM nil :f_SAVE nil :f_DISPLAY_LOAD_FORM nil :f_LOAD_FILE nil :f_DELETE_FILE nil :f_EXIT_COMMAND nil :f_EXIT_WITHOUT_PROGRESS_COMMAND nil :f_START_COMMAND nil :f_CONTINUE_COMMAND nil :f_SELECT_COMMAND nil :f_FEATURE_UPDATE nil :f_BUY_COMMAND nil} jproto))
    (put this :f_TOGGLE_FULLSCREEN (Command/jnew_4 "Toggle FullScreen" ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Command/jstatic_SCREEN) 1))
    (put this :f_TOGGLE_KEYBOARD (Command/jnew_4 "Keyboard" ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Command/jstatic_SCREEN) 1))
    (put this :f_SET_MENU_DISPLAYABLE (Command/jnew_4 "Set Menu Displayable" ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Command/jstatic_SCREEN) 1))
    (put this :f_APPLICATION_UPDATE (Command/jnew_4 ((CommonStrings/jm_getInstance) :f_UPDATE) ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Command/jstatic_SCREEN) 1))
    (put this :f_DISPLAY_ABOUT (Command/jnew_4 ((CanvasStrings/jm_getInstance) :f_ABOUT) ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Command/jstatic_SCREEN) 2))
    (put this :f_OPEN_WEB_URL (Command/jnew_4 "Open Web URL" ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Command/jstatic_SCREEN) 2))
    (put this :f_CLOSE_OPTIONS (Command/jnew_4 "Back" ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Command/jstatic_SCREEN) 1))
    (put this :f_DISPLAY_OPTIONS (Command/jnew_4 ((CanvasStrings/jm_getInstance) :f_OPTIONS) ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Command/jstatic_SCREEN) 2))
    (put this :f_START_TRACE (Command/jnew_4 "Start Trace" ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Command/jstatic_SCREEN) 1))
    (put this :f_STOP_TRACE (Command/jnew_4 "Stop Trace" ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Command/jstatic_SCREEN) 1))
    (put this :f_DEFAULT_OPTIONS (Command/jnew_4 "Default" ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Command/jstatic_SCREEN) 1))
    (put this :f_SHOW_GAME_CANVAS (Command/jnew_4 "Back to Game" ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Command/jstatic_SCREEN) 1))
    (put this :f_CLOSE_AND_SHOW_GAME_CANVAS (Command/jnew_4 "Back" ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Command/jstatic_SCREEN) 1))
    (put this :f_QUIT_COMMAND (Command/jnew_4 "Quit" ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Command/jstatic_STOP) 1))
    (put this :f_RESTART_COMMAND (Command/jnew_4 "Restart" ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Command/jstatic_SCREEN) 0))
    (put this :f_DISPLAY_SAVE_FORM (Command/jnew_4 "Save To" ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Command/jstatic_SCREEN) 3))
    (put this :f_SAVE (Command/jnew_4 "Save" ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Command/jstatic_SCREEN) 3))
    (put this :f_DISPLAY_LOAD_FORM (Command/jnew_4 "Load" ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Command/jstatic_SCREEN) 3))
    (put this :f_LOAD_FILE (Command/jnew_4 "Load File" ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Command/jstatic_SCREEN) 3))
    (put this :f_DELETE_FILE (Command/jnew_4 "Delete File" ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Command/jstatic_SCREEN) 1))
    (put this :f_EXIT_COMMAND (Command/jnew_4 "Exit" ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Command/jstatic_EXIT) 2))
    (put this :f_EXIT_WITHOUT_PROGRESS_COMMAND (Command/jnew_4 "Exit Without Progress" ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Command/jstatic_EXIT) 2))
    (put this :f_START_COMMAND (Command/jnew_4 ((CommonStrings/jm_getInstance) :f_START) ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Command/jstatic_SCREEN) 1))
    (put this :f_CONTINUE_COMMAND (Command/jnew_4 "Continue" ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Command/jstatic_SCREEN) 1))
    (put this :f_SELECT_COMMAND (Command/jnew_4 "Select" ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Command/jstatic_SCREEN) 1))
    (put this :f_FEATURE_UPDATE (Command/jnew_4 "Feature Update" ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Command/jstatic_SCREEN) 1))
    (put this :f_BUY_COMMAND (Command/jnew_4 "BUY" ((StringUtil/jm_getInstance) :f_EMPTY_STRING) (Command/jstatic_SCREEN) 1))
    this))

(set jproto @{})


