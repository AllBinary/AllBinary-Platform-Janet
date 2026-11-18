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
# package org.allbinary.game.input

(import ../../../../allbinary_java :as JR)
(def- jfile (dyn :current-file))

# Java class GameInputStrings
(var jproto nil)
(var jcell_instance :jnone)
(var jstatic_instance nil)
(var jsetstatic_instance nil)
(var jnew_0 nil)
(var jm_getInstance nil)

(set jstatic_instance (fn jstatic_instance []
  (when (= jcell_instance :jnone) (set jcell_instance (jnew_0)))
  jcell_instance))
(set jsetstatic_instance (fn jsetstatic_instance [value] (set jcell_instance value)))

(set jnew_0 (fn jnew_0 []
    (var this (table/setproto @{:jclass "GameInputStrings" :f_PROCESS_INPUT nil :f_KEY_PRESSED nil :f_KEY_RELEASED nil :f_KEY_REPEATED nil :f_ON_PRESS_GAME_KEY nil :f_ON_DOWN_GAME_KEY nil :f_ON_UP_GAME_KEY nil :f_NO_KEY nil :f_ADD_KEY_EVENT nil :f_REMOVE_KEY_EVENT nil :f_STRAFE_LEFT nil :f_STRAFE_RIGHT nil :f_PROCESS_MOTION_INPUT nil :f_UDPATE_CURRENT_TOUCH_INPUT_FACTORY nil :f_ENABLE_PLAYER_GAME_INPUTS nil :f_ENABLE_PLAYER_GAME_INPUT nil} jproto))
    (put this :f_PROCESS_INPUT "processInput")
    (put this :f_KEY_PRESSED "keyPressed")
    (put this :f_KEY_RELEASED "keyReleased")
    (put this :f_KEY_REPEATED "keyRepeated")
    (put this :f_ON_PRESS_GAME_KEY "onPressGameKeyEvent")
    (put this :f_ON_DOWN_GAME_KEY "onDownGameKeyEvent")
    (put this :f_ON_UP_GAME_KEY "onUpGameKeyEvent")
    (put this :f_NO_KEY "Key Code Not Mapped For Game: ")
    (put this :f_ADD_KEY_EVENT "addGameKeyEvent")
    (put this :f_REMOVE_KEY_EVENT "removeGameKeyEvent")
    (put this :f_STRAFE_LEFT "strafeLeft")
    (put this :f_STRAFE_RIGHT "strafeRight")
    (put this :f_PROCESS_MOTION_INPUT "processMotionInput")
    (put this :f_UDPATE_CURRENT_TOUCH_INPUT_FACTORY "updateCurrentTouchInputFactory")
    (put this :f_ENABLE_PLAYER_GAME_INPUTS "Enabling PlayerGameInputs: ")
    (put this :f_ENABLE_PLAYER_GAME_INPUT "Enabling PlayerGameInput: ")
    this))

    
(set jm_getInstance (fn jm_getInstance []
    (label jreturn
        (return jreturn (jstatic_instance)))))

(set jproto @{})


